



<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>intermine/jbrowseDisplayer.jsp at jbrowse-displayer · alexkalderimis/intermine · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="alexkalderimis/intermine" name="twitter:title" /><meta content="intermine - A powerful open source data warehouse system" name="twitter:description" /><meta content="https://avatars3.githubusercontent.com/u/436846?v=2&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars3.githubusercontent.com/u/436846?v=2&amp;s=400" property="og:image" /><meta content="alexkalderimis/intermine" property="og:title" /><meta content="https://github.com/alexkalderimis/intermine" property="og:url" /><meta content="intermine - A powerful open source data warehouse system" property="og:description" />

      <meta name="browser-stats-url" content="/_stats">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    
    <meta name="pjax-timeout" content="1000">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="836FB919:76F8:19E21A48:543401A3" name="octolytics-dimension-request_id" />
    <meta content="Rails, view, blob#show" name="analytics-event" />

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="LJS7/tM3KQuFSUUM30HS3x1u38YtWVd0onf3I16n1PW7xdL3xo2ryrEqBJxRt8NBiSXkjx2ePXACXrloKBXCIQ==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-d869cc784f2cce0181af6b0c8b72679afe6a9c75.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-9ae9325bdf8dd21253fde438acbd4e158d45b029.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="be049ac64248e475594a1e36f3e6bc77">

      
  <meta name="description" content="intermine - A powerful open source data warehouse system">
  <meta name="go-import" content="github.com/alexkalderimis/intermine git https://github.com/alexkalderimis/intermine.git">

  <meta content="436846" name="octolytics-dimension-user_id" /><meta content="alexkalderimis" name="octolytics-dimension-user_login" /><meta content="4963198" name="octolytics-dimension-repository_id" /><meta content="alexkalderimis/intermine" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="true" name="octolytics-dimension-repository_is_fork" /><meta content="4858466" name="octolytics-dimension-repository_parent_id" /><meta content="intermine/intermine" name="octolytics-dimension-repository_parent_nwo" /><meta content="4858466" name="octolytics-dimension-repository_network_root_id" /><meta content="intermine/intermine" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/alexkalderimis/intermine/commits/jbrowse-displayer.atom" rel="alternate" title="Recent Commits to intermine:jbrowse-displayer" type="application/atom+xml">

  </head>


  <body class="logged_out  env-production  vis-public fork page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out" role="banner">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/" ga-data-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions" role="navigation">
        <a class="button primary" href="/join" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Falexkalderimis%2Fintermine%2Fblob%2Fjbrowse-displayer%2Fbio%2Fwebapp%2Fresources%2Fwebapp%2Fmodel%2FjbrowseDisplayer.jsp" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
    </div>

    <div class="site-search repo-scope js-site-search" role="search">
      <form accept-charset="UTF-8" action="/alexkalderimis/intermine/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/alexkalderimis/intermine/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
    </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item">
            <a class="header-nav-link" href="/explore" data-ga-click="(Logged out) Header, go to explore, text:explore">Explore</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/features" data-ga-click="(Logged out) Header, go to features, text:features">Features</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://enterprise.github.com/" data-ga-click="(Logged out) Header, go to enterprise, text:enterprise">Enterprise</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="(Logged out) Header, go to blog, text:blog">Blog</a>
          </li>
      </ul>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">


  <li>
      <a href="/login?return_to=%2Falexkalderimis%2Fintermine"
    class="minibutton with-count star-button tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/alexkalderimis/intermine/stargazers">
      1
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Falexkalderimis%2Fintermine"
        class="minibutton with-count js-toggler-target fork-button tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/alexkalderimis/intermine/network" class="social-count">
        163
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo-forked"></span>
          <span class="author"><a href="/alexkalderimis" class="url fn" itemprop="url" rel="author"><span itemprop="title">alexkalderimis</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/alexkalderimis/intermine" class="js-current-repository js-repo-home-link">intermine</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

            <span class="fork-flag">
              <span class="text">forked from <a href="/intermine/intermine">intermine/intermine</a></span>
            </span>
        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders" role="navigation" data-issue-count-url="/alexkalderimis/intermine/issues/counts">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/alexkalderimis/intermine/tree/jbrowse-displayer" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /alexkalderimis/intermine/tree/jbrowse-displayer">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/alexkalderimis/intermine/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /alexkalderimis/intermine/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class="js-pull-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/alexkalderimis/intermine/pulse/weekly" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /alexkalderimis/intermine/pulse/weekly">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/alexkalderimis/intermine/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /alexkalderimis/intermine/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                
  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/alexkalderimis/intermine.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/alexkalderimis/intermine.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/alexkalderimis/intermine" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/alexkalderimis/intermine" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>



                <a href="/alexkalderimis/intermine/archive/jbrowse-displayer.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download the contents of alexkalderimis/intermine as a zip file"
                   title="Download the contents of alexkalderimis/intermine as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/alexkalderimis/intermine/blob/2bfc08cd5f486d9582a00e0a063537cdddbbdcec/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:3702c0ac0c9d2b504f6193364fb69fc7 -->

<div class="file-navigation">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="dev"
    data-ref="jbrowse-displayer"
    title="jbrowse-displayer"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">jbrowse-displa…</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/664-python-code-gen/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="664-python-code-gen"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="664-python-code-gen">664-python-code-gen</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/annotated-model/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="annotated-model"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="annotated-model">annotated-model</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/beta/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="beta"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="beta">beta</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/biotestmine/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="biotestmine"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="biotestmine">biotestmine</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/browser-testing/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="browser-testing"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="browser-testing">browser-testing</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/cachier-models/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="cachier-models"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="cachier-models">cachier-models</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/corporate-jbrowse/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="corporate-jbrowse"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="corporate-jbrowse">corporate-jbrowse</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/data-service-improvements/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="data-service-improvements"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="data-service-improvements">data-service-improvements</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/dev/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="dev"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="dev">dev</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/emma/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="emma"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="emma">emma</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/hf-593/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="hf-593"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="hf-593">hf-593</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/hf642/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="hf642"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="hf642">hf642</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/i584/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="i584"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="i584">i584</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/i592/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="i592"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="i592">i592</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/jbrowse-displayer/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="jbrowse-displayer"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="jbrowse-displayer">jbrowse-displayer</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/jbrowse-zeroconf/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="jbrowse-zeroconf"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="jbrowse-zeroconf">jbrowse-zeroconf</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/master/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/oauth2-for-beta/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="oauth2-for-beta"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="oauth2-for-beta">oauth2-for-beta</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/oauth-2-support/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="oauth-2-support"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="oauth-2-support">oauth-2-support</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/paginating-bio-queries-i683/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="paginating-bio-queries-i683"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="paginating-bio-queries-i683">paginating-bio-queries-i683</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/release-intermine-1.0/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="release-intermine-1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="release-intermine-1.0">release-intermine-1.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/testable-webservices/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="testable-webservices"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="testable-webservices">testable-webservices</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/type-saferer/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="type-saferer"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="type-saferer">type-saferer</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/blob/zombie-butler/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="zombie-butler"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="zombie-butler">zombie-butler</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/modmine-32/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="modmine-32"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="modmine-32">modmine-32</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/modmine-31/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="modmine-31"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="modmine-31">modmine-31</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/modmine-30beta/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="modmine-30beta"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="modmine-30beta">modmine-30beta</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.3.8/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.3.8"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.3.8">intermine-1.3.8</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.3.7/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.3.7"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.3.7">intermine-1.3.7</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.3.6/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.3.6"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.3.6">intermine-1.3.6</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.3.5/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.3.5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.3.5">intermine-1.3.5</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.3.4/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.3.4"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.3.4">intermine-1.3.4</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.3.2/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.3.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.3.2">intermine-1.3.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.3.1/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.3.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.3.1">intermine-1.3.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.3/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.3">intermine-1.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.2beta/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.2beta"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.2beta">intermine-1.2beta</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.2.2/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.2.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.2.2">intermine-1.2.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.2.1/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.2.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.2.1">intermine-1.2.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.2/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.2">intermine-1.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.1.2/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.1.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.1.2">intermine-1.1.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.1.1/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.1.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.1.1">intermine-1.1.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.1/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.1">intermine-1.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.0beta/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.0beta"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.0beta">intermine-1.0beta</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.0.1/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.0.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.0.1">intermine-1.0.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-1.0/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-1.0">intermine-1.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/intermine-0.99/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="intermine-0.99"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="intermine-0.99">intermine-0.99</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/flymine-40.0/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="flymine-40.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="flymine-40.0">flymine-40.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/flymine-39.1/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="flymine-39.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="flymine-39.1">flymine-39.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/flymine-39.0/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="flymine-39.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="flymine-39.0">flymine-39.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/flymine-38.0/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="flymine-38.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="flymine-38.0">flymine-38.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/flymine-37.0/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="flymine-37.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="flymine-37.0">flymine-37.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/flymine-36.1/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="flymine-36.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="flymine-36.1">flymine-36.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/flymine-34.0/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="flymine-34.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="flymine-34.0">flymine-34.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/alexkalderimis/intermine/tree/flymine-33.1/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
                 data-name="flymine-33.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="flymine-33.1">flymine-33.1</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="button-group right">
    <a href="/alexkalderimis/intermine/find/jbrowse-displayer"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button class="js-zeroclipboard minibutton zeroclipboard-button"
          data-clipboard-text="bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp"
          aria-label="Copy to clipboard"
          data-copied-hint="Copied!">
      <span class="octicon octicon-clippy"></span>
    </button>
  </div>

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/alexkalderimis/intermine/tree/jbrowse-displayer" class="" data-branch="jbrowse-displayer" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">intermine</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/alexkalderimis/intermine/tree/jbrowse-displayer/bio" class="" data-branch="jbrowse-displayer" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">bio</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/alexkalderimis/intermine/tree/jbrowse-displayer/bio/webapp" class="" data-branch="jbrowse-displayer" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">webapp</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/alexkalderimis/intermine/tree/jbrowse-displayer/bio/webapp/resources" class="" data-branch="jbrowse-displayer" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">resources</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/alexkalderimis/intermine/tree/jbrowse-displayer/bio/webapp/resources/webapp" class="" data-branch="jbrowse-displayer" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">webapp</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/alexkalderimis/intermine/tree/jbrowse-displayer/bio/webapp/resources/webapp/model" class="" data-branch="jbrowse-displayer" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">model</span></a></span><span class="separator"> / </span><strong class="final-path">jbrowseDisplayer.jsp</strong>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/alexkalderimis/intermine/contributors/jbrowse-displayer/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp">
    <div class="file-history-tease-header">
      Fetching contributors&hellip;
    </div>

    <div class="participation">
      <p class="loader-loading"><img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
          <span>37 lines (28 sloc)</span>
          <span class="meta-divider"></span>
        <span>1.522 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
          <a href="/alexkalderimis/intermine/raw/jbrowse-displayer/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp" class="minibutton " id="raw-url">Raw</a>
            <a href="/alexkalderimis/intermine/blame/jbrowse-displayer/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp" class="minibutton js-update-url-with-hash">Blame</a>
          <a href="/alexkalderimis/intermine/commits/jbrowse-displayer/bio/webapp/resources/webapp/model/jbrowseDisplayer.jsp" class="minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->


            <a class="octicon-button disabled tooltipped tooltipped-w" href="#"
               aria-label="You must be signed in to make or propose changes"><span class="octicon octicon-pencil"></span></a>

          <a class="octicon-button danger disabled tooltipped tooltipped-w" href="#"
             aria-label="You must be signed in to make or propose changes">
          <span class="octicon octicon-trashcan"></span>
        </a>
      </div><!-- /.actions -->
    </div>
    
  <div class="blob-wrapper data type-java-server-pages">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code js-file-line"><span class="k">&lt;%@</span> <span class="n">taglib</span> <span class="n">uri</span><span class="o">=</span><span class="s">&quot;http://java.sun.com/jsp/jstl/core&quot;</span> <span class="n">prefix</span><span class="o">=</span><span class="s">&quot;c&quot;</span> <span class="k">%&gt;</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code js-file-line"><span class="k">&lt;%@</span> <span class="n">taglib</span> <span class="n">uri</span><span class="o">=</span><span class="s">&quot;http://java.sun.com/jsp/jstl/fmt&quot;</span> <span class="n">prefix</span><span class="o">=</span><span class="s">&quot;fmt&quot;</span> <span class="k">%&gt;</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code js-file-line"><span class="k">&lt;%@</span> <span class="n">taglib</span> <span class="n">uri</span><span class="o">=</span><span class="s">&quot;/WEB-INF/struts-html.tld&quot;</span> <span class="n">prefix</span><span class="o">=</span><span class="s">&quot;html&quot;</span> <span class="k">%&gt;</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code js-file-line"><span class="k">&lt;%@</span> <span class="n">taglib</span> <span class="n">uri</span><span class="o">=</span><span class="s">&quot;http://java.sun.com/jsp/jstl/functions&quot;</span> <span class="n">prefix</span><span class="o">=</span><span class="s">&quot;fn&quot;</span> <span class="k">%&gt;</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code js-file-line"><span class="c">&lt;!-- jBrowseDisplayer.jsp --&gt;</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code js-file-line"><span class="nt">&lt;c:if</span> <span class="na">test=</span><span class="s">&quot;${((!empty reportObject.object.chromosomeLocation &amp;&amp; !empty reportObject.object.chromosome)</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code js-file-line"><span class="s">                || cld.unqualifiedName == &#39;Chromosome&#39;) &amp;&amp; cld.unqualifiedName != &#39;ChromosomeBand&#39;}&quot;</span><span class="nt">&gt;</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code js-file-line">  <span class="nt">&lt;div</span> <span class="na">class=</span><span class="s">&quot;geneInformation&quot;</span><span class="nt">&gt;</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code js-file-line">    <span class="nt">&lt;h3</span> <span class="na">class=</span><span class="s">&quot;overlapping&quot;</span><span class="nt">&gt;</span>Genome Browser<span class="nt">&lt;/h3&gt;</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code js-file-line">    <span class="nt">&lt;c:set</span> <span class="na">var=</span><span class="s">&quot;padding&quot;</span> <span class="na">value=</span><span class="s">&quot;${10}&quot;</span><span class="nt">/&gt;</span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code js-file-line">    <span class="nt">&lt;c:set</span> <span class="na">var=</span><span class="s">&quot;jbLink&quot;</span> <span class="na">value=</span><span class="s">&quot;${jbrowseInstall}?data=${dataLoc}&amp;loc=${segment}&amp;tracks=${tracks}&amp;nav=0&amp;tracklist=0&quot;</span><span class="nt">/&gt;</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code js-file-line">    <span class="nt">&lt;p&gt;</span>Click and drag the browser to move the view.  Drag and drop tracks from left menu into the main</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code js-file-line">	   panel to see the data. Clicking on individual features to open a report page for that feature.</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code js-file-line">	    <span class="nt">&lt;br/&gt;</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code js-file-line">	    <span class="nt">&lt;strong&gt;</span>*<span class="nt">&lt;/strong&gt;</span> denotes SNPs that are mapped to multiple genome position.</td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code js-file-line">    <span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">&quot;${jbLink}&quot;</span> <span class="na">target=</span><span class="s">&quot;jbrowse&quot;</span><span class="nt">&gt;</span>Centre on ${reportObject.object.symbol}<span class="nt">&lt;/a&gt;&lt;/p&gt;</span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code js-file-line">    <span class="nt">&lt;iframe</span> <span class="na">name=</span><span class="s">&quot;jbrowse&quot;</span> <span class="na">height=</span><span class="s">&quot;300px&quot;</span> <span class="na">width=</span><span class="s">&quot;98%&quot;</span> <span class="na">style=</span><span class="s">&quot;border: 1px solid #dfdfdf; padding: 1%&quot;</span> <span class="na">src=</span><span class="s">&quot;${jbLink}&quot;</span><span class="nt">&gt;</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code js-file-line">    <span class="nt">&lt;/iframe&gt;</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code js-file-line">    <span class="nt">&lt;p&gt;</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code js-file-line">        <span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">&quot;javascript:;&quot;</span> <span class="na">onclick=</span><span class="s">&quot;jQuery(&#39;iframe&#39;).css({height: &#39;600px&#39;});&quot;</span><span class="nt">&gt;</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code js-file-line">            Expand viewer</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code js-file-line">        <span class="nt">&lt;/a&gt;</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code js-file-line">        <span class="ni">&amp;nbsp;</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code js-file-line">        (more about <span class="nt">&lt;a</span> <span class="na">href=</span><span class="s">&quot;http://jbrowse.org&quot;</span><span class="nt">&gt;</span>JBrowse<span class="nt">&lt;/a&gt;</span>)</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code js-file-line">    <span class="nt">&lt;/p&gt;</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code js-file-line"><span class="nt">&lt;/div&gt;</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code js-file-line"><span class="nt">&lt;/c:if&gt;</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code js-file-line"><span class="c">&lt;!-- /jBrowseDisplayer.jsp --&gt;</span></td>
      </tr>
</table>

  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.02633s from github-fe140-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents js-suggester-field" placeholder=""></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-8827b83f56326279c38cb436d8477471e04c6632.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-00bea7823bc38eafe7970e690a19d26d3a801739.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>

