#!/usr/bin/perl
# translates data from expression file to intermine items XML file

BEGIN {
#    my $base = ( $0 =~ m:(.*)/.*: )[0];
    my $base = "/SAN_synbiomine/code/synbio/bio/scripts";

    unshift( @INC,
        map( {$base . $_}
            '/../../intermine/perl/InterMine-Util/lib',
            '/../../intermine/perl/InterMine-Item/lib',
            '/../../intermine/perl/InterMine-Model/lib',
        ),
    );
}

use strict;
use warnings;

use Getopt::Std;

use InterMine::Item::Document;
use InterMine::Model;
#use InterMine::Util qw(parse_properties_file);
use Log::Handler;
use Digest::MD5 qw(md5);
use Data::Dumper;

#my $script_dir = ( $0 =~ m:(.*)/.*: )[0];
my $script_dir = "/SAN_synbiomine/code/synbio/bio/scripts";

our ( $opt_r, $opt_l );
getopt('rl');

if ( @ARGV != 3 ) {
    die "usage: [-r release] [-l logfile] mine_name taxon_id data_destination\n"
      . "eg.    [-r preview] [-l out.log] flymine   9606     /shared/data/ensembl/current\n";
}

# vars from the command line
my ( $mine_name, $taxon_id, $data_destination ) = @ARGV;

# just for logging purposes
my $start_time = time();

my $logfile = $opt_l;
my $log = Log::Handler->new();
if ($logfile) {
    $log->add(
        file => {
            filename => $logfile,
            mode => 'append',
            newline => 1,
        },
    );
} else {
    $log->add(
        screen => {
            log_to => "STDERR",
        },
    );
}

$log->info("Running $0");

# Set-up the intermine item-creating apparatus
my $release = ($opt_r) ? '.' . $opt_r : '';
my $model_file =
  $script_dir . "/../../$mine_name/dbmodel/build/model/genomic_model.xml";

for ( $model_file ) {
    $log->die("Cannot read $_")unless -r;
}

my $model = InterMine::Model->new( file => $model_file );
## ML ## my $properties = parse_properties_file($properties_file);

# init vars which need to be globally accessible
#my (@items,
my (%item_store);

## ML my %organisms  = parse_orgs($taxon_id);
my $datasource = 'NicholasExprResult';
my ( $org_item, $dataset_item, $datasource_item );

my $item_factory;
my ($total_written, $total_made); 

my $organism = "B. subtilis";
my ($strain_name) = " sp. subtilis 168";
my @genes = ("BSU00010", "BSU00020");

############################################
$item_factory = InterMine::Item::Document->new(
  model  => $model,
  output => "$data_destination/$taxon_id.xml",
);
############################################

############################################
# Set info for datasource and write it out
$datasource_item = make_item("DataSource");
$datasource_item->set( 'name', $datasource );
$datasource_item->{':uniq'} = $datasource;
 writeout( $datasource_item);
############################################

############################################
# Set info for organism and write it out
$org_item = make_item("Organism");
$org_item->set( taxonId => $taxon_id );
$org_item->{':uniq'} = $taxon_id;
writeout( $org_item );
############################################

############################################
# Set info for dataset and write it out
$dataset_item = make_item("DataSet");
$dataset_item->set(
  name => "$datasource data set for taxon id: $taxon_id" );
$dataset_item->{':uniq'} = $datasource . $taxon_id;
writeout( $dataset_item);
############################################

############################################
# Make the ontology item that goes in every SO term
my $ontology_item = make_item("Ontology");
$ontology_item->set( name => "Sequence Ontology" );
$ontology_item->{':uniq'} = "Sequence Ontology";
writeout( $ontology_item );
############################################

#print Dumper($dba);

while ( my $gene = shift @genes ) {
print "GENE: $gene\n";
############################################
# Set info for gene and write it out
my $gene_item = make_item(
    Gene => (
        primaryIdentifier => "$gene",
    ),
);

#my $gene_item = make_item("Gene");
#my $gene_type = $gene->biotype();

#my $GeneSOitem = make_soterm($gene_type);
#$GeneSOitem->set( ontology => $ontology_item );

#$gene_item->set( sequenceOntologyTerm => $GeneSOitem );

writeout( $gene_item );
#writeout( $GeneSOitem );

}

$item_factory->close();
my $end_time    = time();
my $action_time = $end_time - $start_time;
print "creating the XML file for $taxon_id took $action_time seconds.\n";

my $status = check_output();
exit $status;

sub writeout {
    my $item            = shift;
    my $uniq            = $item->{':uniq'};
    my $implements      = $item->{':implements'};
    my $this_id         = $item->{'id'};

    $item_factory->write($item);
    $total_written++;
    return;
}

sub make_item {
    my $implements = shift;
    my $item = $item_factory->make_item( implements => $implements );
    if ( $item->valid_field('organism') ) {
        $item->set( organism => $org_item );
    }
    if ( $item->valid_field('dataSets') && $implements ne 'DataSource' ) {
        $item->set( dataSets => [$dataset_item] );
    }
    if ( $item->valid_field('dataSource') ) {
        $item->set( dataSource => $datasource_item );
    }
    $total_made++;
    return $item;
}

sub check_output {
    if ( $total_made != $total_written ) {
        warn(
            "We made $total_made items but wrote out $total_written!",
            "Something went wrong: please check your logs",
        );
    }
    return $total_made - $total_written;
}

# read in the config file
sub read_file {    # Why is this not in the InterMine::Util module?
    my ($filename) = shift;
    my @lines = ();

    open( FILE, "< $filename" ) or die "Can't open $filename : $!";
    while (<FILE>) {
        s/#.*//;    # ignore comments by erasing them
        next if /^(\s)*$/;    # skip blank lines
        chomp;                # remove trailing newline characters
        push @lines, $_;      # push the data line onto the array
    }
    close FILE;
    return @lines;
}

sub make_soterm {
    my $term = shift;
    unless ( exists $item_store{SOTerm}{$term} ) {
        my $soitem = make_item('SOTerm');
        $soitem->set( name => $term );
        $soitem->{':uniq'} = $term;
        $item_store{SOTerm}{$term} = $soitem;
    }
    return $item_store{SOTerm}{$term};
}

sub parse_orgs
{    # returns a hash with the keys set to the comma-delimited set of taxon ids
        # and values all set to ''
    my $taxon_ids = shift;
    my %orgs;
    for ( split( ',', $taxon_ids ) ) {
        $orgs{$_} = "";
    }
    return %orgs;
}

exit 0;
