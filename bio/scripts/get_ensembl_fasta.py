#!/usr/bin/python                                                                                                                                                                                                                                                         

import urllib
import subprocess
import sys
import os
import os.path

if len(sys.argv) != 3:
    script = sys.argv[0].rsplit('/')[-1]
    print "Usage: " + script + " homo_sapiens|mus_musculus version\n\te.g. " + script + " homo_sapiens 60"
    exit(1);

organism = sys.argv[1]
version = sys.argv[2]

max_chr = 22
base = ''
ensembl_ftp = 'ftp://ftp.ensembl.org/'
fasta_dir = 'pub/current_fasta/' + organism + '/dna/'

if organism == 'homo_sapiens':
    base = 'Homo_sapiens.GRCh38.'
elif organism == 'mus_musculus':
    base = 'Mus_musculus.GRCm38.'
    max_chr = 21
elif organism == 'arabidopsis_thaliana':
    ensembl_ftp = 'ftp://ftp.ensemblgenomes.org/'
    fasta_dir = 'pub/plants/current/fasta/' + organism + '/dna/'
    base = 'Arabidopsis_thaliana.TAIR10.'
    max_chr = 5
else:
    print "Didn't recognise organism '" + organism + "'."


chrs = ['X', 'Y', 'MT', 'Mt', 'Pt'] + range(1, max_chr + 1)
print 'Looking for chromosomes: ', chrs    


for chr in chrs:
    filename = base + 'dna.chromosome.' + str(chr) + '.fa.gz'
    path = ensembl_ftp + fasta_dir + filename
    print 'Fetching ' + path
    try:
        urllib.urlretrieve(path, filename)    
        # check the file wasn't empty
        if os.path.getsize(filename) == 0:
            os.remove(filename)
            print "Removing empty file: %s" % filename
        else:
            command = 'gunzip ' + filename
            print 'Unzipping ' + filename
            subprocess.call(['gunzip', filename])
    except IOError, e:
        (errno, errdetails) = e
        print "Problem with downloading file %s: %s" %(filename, errdetails)
        print "File %s ignored" %filename


