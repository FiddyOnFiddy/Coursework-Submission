


<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=1020">
    
    
    <title>GP2BaseCode/skyFS.glsl at Environment-Mapping · BigBearGCU/GP2BaseCode</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="BigBearGCU/GP2BaseCode" name="twitter:title" /><meta content="Contribute to GP2BaseCode development by creating an account on GitHub." name="twitter:description" /><meta content="https://avatars0.githubusercontent.com/u/1741691?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars0.githubusercontent.com/u/1741691?v=3&amp;s=400" property="og:image" /><meta content="BigBearGCU/GP2BaseCode" property="og:title" /><meta content="https://github.com/BigBearGCU/GP2BaseCode" property="og:url" /><meta content="Contribute to GP2BaseCode development by creating an account on GitHub." property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/MTEwOTE4ODI6ZDYyZjJhODhlNTdmZmU1ZDQ0MDU2MjBkZGZmMGZjYjM6NTkyMDQ0MDVlNzVhZWQ5NWI5ZDhhMDFiZTNiNjE5NGZiYWFmZjdjMjAyOGQ5ZGFmZTgxNTFlMDAxZTA4NjM5Yw==--ddc73735b63b13bdbc06f6d96780831b85c01e5c">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="5198DFCF:3F58:94AFFE6:565C7E73" name="octolytics-dimension-request_id" /><meta content="11091882" name="octolytics-actor-id" /><meta content="MattBee2k2" name="octolytics-actor-login" /><meta content="47953bc90a429ac0eff817c695c88ec55ea7359d7776d1f1fdc2bfa6d9a003ee" name="octolytics-actor-hash" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />
<meta content="Rails, view, blob#show" data-pjax-transient="true" name="analytics-event" />


  <meta class="js-ga-set" name="dimension1" content="Logged In">
    <meta class="js-ga-set" name="dimension4" content="Current repo nav">




    <meta name="is-dotcom" content="true">
        <meta name="hostname" content="github.com">
    <meta name="user-login" content="MattBee2k2">

      <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#4078c0">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta content="0753e66d29ed52fe89cfd8895adbe63ee49867b1" name="form-nonce" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-5e2d1232bc97970f293f259bcb6ab137945cb5635b398c2a81027bf21f0255c8.css" integrity="sha256-Xi0SMryXlw8pPyWby2qxN5RctWNbOYwqgQJ78h8CVcg=" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2-49ea02061ebe9455c4f57c771049d1ed349d13b46e6d1c26b79e63469fc018dc.css" integrity="sha256-SeoCBh6+lFXE9Xx3EEnR7TSdE7RubRwmt55jRp/AGNw=" media="all" rel="stylesheet" />
    
    
    


    <meta http-equiv="x-pjax-version" content="a4e7c447e74301ff72c568173b78ff09">

      
  <meta name="description" content="Contribute to GP2BaseCode development by creating an account on GitHub.">
  <meta name="go-import" content="github.com/BigBearGCU/GP2BaseCode git https://github.com/BigBearGCU/GP2BaseCode.git">

  <meta content="1741691" name="octolytics-dimension-user_id" /><meta content="BigBearGCU" name="octolytics-dimension-user_login" /><meta content="12894489" name="octolytics-dimension-repository_id" /><meta content="BigBearGCU/GP2BaseCode" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="12894489" name="octolytics-dimension-repository_network_root_id" /><meta content="BigBearGCU/GP2BaseCode" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/BigBearGCU/GP2BaseCode/commits/Environment-Mapping.atom" rel="alternate" title="Recent Commits to GP2BaseCode:Environment-Mapping" type="application/atom+xml">

  </head>


  <body class="logged_in   env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>

    
    
    



      <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/BigBearGCU/GP2BaseCode/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      aria-label="Search this repository"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
      </div>

      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item">
          <a href="/pulls" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
            Pull requests
</a>        </li>
        <li class="header-nav-item">
          <a href="/issues" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
            Issues
</a>        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com/" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item">
      <span class="js-socket-channel js-updatable-content"
        data-channel="notification-changed:MattBee2k2"
        data-url="/notifications/header">
      <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
          <span class="mail-status all-read"></span>
          <span class="octicon octicon-bell"></span>
</a>  </span>

  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link tooltipped tooltipped-s js-menu-target" href="/new"
       aria-label="Create new…"
       data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus left"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>


  <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>



  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="BigBearGCU/GP2BaseCode">This repository</span>
  </div>
    <a class="dropdown-item" href="/BigBearGCU/GP2BaseCode/issues/new" data-ga-click="Header, create new issue">
      New issue
    </a>

      </ul>
    </div>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name tooltipped tooltipped-s js-menu-target" href="/MattBee2k2"
       aria-label="View profile and more"
       data-ga-click="Header, show menu, icon:avatar">
      <img alt="@MattBee2k2" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/11091882?v=3&amp;s=40" width="20" />
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <div class="dropdown-menu  dropdown-menu-sw">
        <div class=" dropdown-header header-nav-current-user css-truncate">
            Signed in as <strong class="css-truncate-target">MattBee2k2</strong>

        </div>


        <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/MattBee2k2" data-ga-click="Header, go to profile, text:your profile">
            Your profile
          </a>
        <a class="dropdown-item" href="/stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a>
        <a class="dropdown-item" href="/explore" data-ga-click="Header, go to explore, text:explore">
          Explore
        </a>
          <a class="dropdown-item" href="/integrations" data-ga-click="Header, go to integrations, text:integrations">
            Integrations
          </a>
        <a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
          Help
        </a>

          <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
            Settings
          </a>

          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/logout" class="logout-form" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="a3JLedIUW86As7PbahAfLeacLwTY1IclXyijdOMPq/0YYF13EiRXfaJrJBLsfhWmiyRnfqpRbn8Ep7HYJRrpYA==" /></div>
            <button class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
              Sign out
            </button>
</form>
      </div>
    </div>
  </li>
</ul>


    
  </div>
</div>

      

      


    <div id="start-of-content" class="accessibility-aid"></div>

    <div id="js-flash-container">
</div>


    <div role="main" class="main-content">
        <div itemscope itemtype="http://schema.org/WebPage">
    <div class="pagehead repohead instapaper_ignore readability-menu">

      <div class="container">

        <div class="clearfix">
          

<ul class="pagehead-actions">

  <li>
        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="6vW3XP/zzjewbr0mgp8OnJO5xuXVTSOns+nKLntXmvsZPjLdGT9KXD1LhUanSDiopp4DS4B2/sznCQnCxwHThA==" /></div>      <input id="repository_id" name="repository_id" type="hidden" value="12894489" />

        <div class="select-menu js-menu-container js-select-menu">
          <a href="/BigBearGCU/GP2BaseCode/subscription"
            class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
            data-ga-click="Repository, click Watch settings, action:blob#show">
            <span class="js-select-button">
              <span class="octicon octicon-eye"></span>
              Watch
            </span>
          </a>
          <a class="social-count js-social-count" href="/BigBearGCU/GP2BaseCode/watchers">
            2
          </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
              <span class="select-menu-title">Notifications</span>
            </div>

              <div class="select-menu-list js-navigation-container" role="menu">

                <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <div class="select-menu-item-text">
                    <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                    <span class="select-menu-item-heading">Not watching</span>
                    <span class="description">Be notified when participating or @mentioned.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <span class="octicon octicon-eye"></span>
                      Watch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                  <div class="select-menu-item-text">
                    <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                    <span class="select-menu-item-heading">Watching</span>
                    <span class="description">Be notified of all conversations.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <span class="octicon octicon-eye"></span>
                      Unwatch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <div class="select-menu-item-text">
                    <input id="do_ignore" name="do" type="radio" value="ignore" />
                    <span class="select-menu-item-heading">Ignoring</span>
                    <span class="description">Never be notified.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <span class="octicon octicon-mute"></span>
                      Stop ignoring
                    </span>
                  </div>
                </div>

              </div>

            </div>
          </div>
        </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/unstar" class="js-toggler-form starred js-unstar-button" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="mHRFTH3wf0Q2iST/KEDYQYsF+H59Z3GvMlLOkS7Jkm85SBpu5GdjNlLCiIU6l8Qd37YHD/xa5Ek/hBY1ZxEwfQ==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar BigBearGCU/GP2BaseCode"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/BigBearGCU/GP2BaseCode/stargazers">
          0
        </a>
</form>
    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/star" class="js-toggler-form unstarred js-star-button" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="G+3PTC676pY8f/lj7PE3ZYr5eR9+fe39TTVKFNcxU4p8vWQiMDEFjdSSbbOXmmHrhO1M/820LD/FgsfG8y8pRw==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star BigBearGCU/GP2BaseCode"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/BigBearGCU/GP2BaseCode/stargazers">
          0
        </a>
</form>  </div>

  </li>

  <li>
          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/fork" class="btn-with-count" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="h3kRfnBfViXyqbeMv5AC25QrITXKKZborAbxuZbN1wYiEuXxYqhzYhgY3XxO8uJ2Danj+ebmxvv4W7Kb292/7Q==" /></div>
            <button
                type="submit"
                class="btn btn-sm btn-with-count"
                data-ga-click="Repository, show fork modal, action:blob#show; text:Fork"
                title="Fork your own copy of BigBearGCU/GP2BaseCode to your account"
                aria-label="Fork your own copy of BigBearGCU/GP2BaseCode to your account">
              <span class="octicon octicon-repo-forked"></span>
              Fork
            </button>
</form>
    <a href="/BigBearGCU/GP2BaseCode/network" class="social-count">
      44
    </a>
  </li>
</ul>

          <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public ">
  <span class="mega-octicon octicon-repo"></span>
  <span class="author"><a href="/BigBearGCU" class="url fn" itemprop="url" rel="author"><span itemprop="title">BigBearGCU</span></a></span><!--
--><span class="path-divider">/</span><!--
--><strong><a href="/BigBearGCU/GP2BaseCode" data-pjax="#js-repo-pjax-container">GP2BaseCode</a></strong>

  <span class="page-context-loader">
    <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
  </span>

</h1>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline ">
        <div class="repository-sidebar clearfix">
          
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/BigBearGCU/GP2BaseCode/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/BigBearGCU/GP2BaseCode/tree/Environment-Mapping" aria-label="Code" aria-selected="true" class="js-selected-navigation-item selected sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /BigBearGCU/GP2BaseCode/tree/Environment-Mapping">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/BigBearGCU/GP2BaseCode/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /BigBearGCU/GP2BaseCode/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/BigBearGCU/GP2BaseCode/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /BigBearGCU/GP2BaseCode/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="/BigBearGCU/GP2BaseCode/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /BigBearGCU/GP2BaseCode/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/BigBearGCU/GP2BaseCode/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /BigBearGCU/GP2BaseCode/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/BigBearGCU/GP2BaseCode/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /BigBearGCU/GP2BaseCode/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>
  </ul>


</nav>

            <div class="only-with-full-nav">
                
<div class="js-clone-url clone-url "
  data-protocol-type="http">
  <h3 class="text-small text-muted"><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/BigBearGCU/GP2BaseCode.git" readonly="readonly" aria-label="HTTPS clone URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="ssh">
  <h3 class="text-small text-muted"><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:BigBearGCU/GP2BaseCode.git" readonly="readonly" aria-label="SSH clone URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url open"
  data-protocol-type="subversion">
  <h3 class="text-small text-muted"><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/BigBearGCU/GP2BaseCode" readonly="readonly" aria-label="Subversion checkout URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options text-small text-muted">You can clone with
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="R0tVlM7Zc20CBlw8vcC2oH0BtTvJwIFNa9nvRZnwR/Xmz5ujglvyUC9GKZhtSa/OX6078bZr4cxNyGwgNWwFGQ==" /></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form>, <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="HDwDIj3gc9G8994PksFbhQCzD8IEKI3GsZV3ZFbaNl7+hMj4NUSyvhr41SHns5SYVBamoBMVKiA2JLYZznzj5g==" /></div><button class="btn-link js-clone-selector" data-protocol="ssh" type="submit">SSH</button></form>, or <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone" class="inline-form js-clone-selector-form is-enabled" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="+T6TD3ojD/rf5iec03el5ZCaZ0STQJmCJatYTnmLgHkkU2WKu8VWIMtZKGdkXRoXZF2pPDdJS59weocfnqfbDQ==" /></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>
  <a href="github-windows://openRepo/https://github.com/BigBearGCU/GP2BaseCode" class="btn btn-sm sidebar-button" title="Save BigBearGCU/GP2BaseCode to your computer and use it in GitHub Desktop." aria-label="Save BigBearGCU/GP2BaseCode to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-desktop-download"></span>
    Clone in Desktop
  </a>

              <a href="/BigBearGCU/GP2BaseCode/archive/Environment-Mapping.zip"
                 class="btn btn-sm sidebar-button"
                 aria-label="Download the contents of BigBearGCU/GP2BaseCode as a zip file"
                 title="Download the contents of BigBearGCU/GP2BaseCode as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div>
        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          

<a href="/BigBearGCU/GP2BaseCode/blob/25c01216db5deaa9e5157f87c5bff1410ab0f548/assets/shaders/skyFS.glsl" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:d6a689a0c77dcffa5f6bfe8a69a9f88b -->

  <div class="file-navigation js-zeroclipboard-container">
    
<div class="select-menu js-menu-container js-select-menu left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    title="Environment-Mapping"
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">Environment-Ma…</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/BigBearGCU/GP2BaseCode/blob/Environment-Mapping/assets/shaders/skyFS.glsl"
               data-name="Environment-Mapping"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Environment-Mapping">
                Environment-Mapping
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Environment-Reflection/assets/shaders/skyFS.glsl"
               data-name="Environment-Reflection"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Environment-Reflection">
                Environment-Reflection
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex-8-Simple-GO-Texture/assets/shaders/skyFS.glsl"
               data-name="Ex-8-Simple-GO-Texture"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex-8-Simple-GO-Texture">
                Ex-8-Simple-GO-Texture
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex-8-Single-Game-Object/assets/shaders/skyFS.glsl"
               data-name="Ex-8-Single-Game-Object"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex-8-Single-Game-Object">
                Ex-8-Single-Game-Object
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex-9-Changes-Game-Object/assets/shaders/skyFS.glsl"
               data-name="Ex-9-Changes-Game-Object"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex-9-Changes-Game-Object">
                Ex-9-Changes-Game-Object
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex-9-Game-Object-Hierarchy/assets/shaders/skyFS.glsl"
               data-name="Ex-9-Game-Object-Hierarchy"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex-9-Game-Object-Hierarchy">
                Ex-9-Game-Object-Hierarchy
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Create-Window/assets/shaders/skyFS.glsl"
               data-name="Ex1-Create-Window"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Create-Window">
                Ex1-Create-Window
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Display-Triangle/assets/shaders/skyFS.glsl"
               data-name="Ex1-Display-Triangle"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Display-Triangle">
                Ex1-Display-Triangle
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Init-OpenGL/assets/shaders/skyFS.glsl"
               data-name="Ex1-Init-OpenGL"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Init-OpenGL">
                Ex1-Init-OpenGL
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Solution-Move/assets/shaders/skyFS.glsl"
               data-name="Ex1-Solution-Move"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Solution-Move">
                Ex1-Solution-Move
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Solution-Sprite/assets/shaders/skyFS.glsl"
               data-name="Ex1-Solution-Sprite"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Solution-Sprite">
                Ex1-Solution-Sprite
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex1-Starter/assets/shaders/skyFS.glsl"
               data-name="Ex1-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex1-Starter">
                Ex1-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Cube-Complete/assets/shaders/skyFS.glsl"
               data-name="Ex2-Cube-Complete"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Cube-Complete">
                Ex2-Cube-Complete
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Cube-Element-Buffer/assets/shaders/skyFS.glsl"
               data-name="Ex2-Cube-Element-Buffer"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Cube-Element-Buffer">
                Ex2-Cube-Element-Buffer
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Cube-Interleaved-Complete/assets/shaders/skyFS.glsl"
               data-name="Ex2-Cube-Interleaved-Complete"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Cube-Interleaved-Complete">
                Ex2-Cube-Interleaved-Complete
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Draw-From-VBO/assets/shaders/skyFS.glsl"
               data-name="Ex2-Draw-From-VBO"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Draw-From-VBO">
                Ex2-Draw-From-VBO
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-Starter/assets/shaders/skyFS.glsl"
               data-name="Ex2-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-Starter">
                Ex2-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex2-VBO-Interleaved-Verts/assets/shaders/skyFS.glsl"
               data-name="Ex2-VBO-Interleaved-Verts"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex2-VBO-Interleaved-Verts">
                Ex2-VBO-Interleaved-Verts
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex3-Shaders-Complete/assets/shaders/skyFS.glsl"
               data-name="Ex3-Shaders-Complete"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex3-Shaders-Complete">
                Ex3-Shaders-Complete
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex3-Starter/assets/shaders/skyFS.glsl"
               data-name="Ex3-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex3-Starter">
                Ex3-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex3-Vertex-Colours/assets/shaders/skyFS.glsl"
               data-name="Ex3-Vertex-Colours"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex3-Vertex-Colours">
                Ex3-Vertex-Colours
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex4-Font-Sprite-Finished/assets/shaders/skyFS.glsl"
               data-name="Ex4-Font-Sprite-Finished"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex4-Font-Sprite-Finished">
                Ex4-Font-Sprite-Finished
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex4-Starter/assets/shaders/skyFS.glsl"
               data-name="Ex4-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex4-Starter">
                Ex4-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex4-Texturing-Working/assets/shaders/skyFS.glsl"
               data-name="Ex4-Texturing-Working"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex4-Texturing-Working">
                Ex4-Texturing-Working
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex5-ModelLoading-Finished/assets/shaders/skyFS.glsl"
               data-name="Ex5-ModelLoading-Finished"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex5-ModelLoading-Finished">
                Ex5-ModelLoading-Finished
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex5-Starter/assets/shaders/skyFS.glsl"
               data-name="Ex5-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex5-Starter">
                Ex5-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex6-Ambient/assets/shaders/skyFS.glsl"
               data-name="Ex6-Ambient"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex6-Ambient">
                Ex6-Ambient
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex6-Diffuse/assets/shaders/skyFS.glsl"
               data-name="Ex6-Diffuse"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex6-Diffuse">
                Ex6-Diffuse
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex6-Ligthing-Starter/assets/shaders/skyFS.glsl"
               data-name="Ex6-Ligthing-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex6-Ligthing-Starter">
                Ex6-Ligthing-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex6-Specular/assets/shaders/skyFS.glsl"
               data-name="Ex6-Specular"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex6-Specular">
                Ex6-Specular
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex7-Basic-Post-Working/assets/shaders/skyFS.glsl"
               data-name="Ex7-Basic-Post-Working"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex7-Basic-Post-Working">
                Ex7-Basic-Post-Working
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex7-Ripple/assets/shaders/skyFS.glsl"
               data-name="Ex7-Ripple"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex7-Ripple">
                Ex7-Ripple
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex7-Specular/assets/shaders/skyFS.glsl"
               data-name="Ex7-Specular"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex7-Specular">
                Ex7-Specular
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex7-Starter/assets/shaders/skyFS.glsl"
               data-name="Ex7-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex7-Starter">
                Ex7-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex7-Timing/assets/shaders/skyFS.glsl"
               data-name="Ex7-Timing"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex7-Timing">
                Ex7-Timing
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex8-Working/assets/shaders/skyFS.glsl"
               data-name="Ex8-Working"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex8-Working">
                Ex8-Working
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex9-GameObject-Texture/assets/shaders/skyFS.glsl"
               data-name="Ex9-GameObject-Texture"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex9-GameObject-Texture">
                Ex9-GameObject-Texture
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Ex9-Starter/assets/shaders/skyFS.glsl"
               data-name="Ex9-Starter"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Ex9-Starter">
                Ex9-Starter
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Example-Cel-Shadinig/assets/shaders/skyFS.glsl"
               data-name="Example-Cel-Shadinig"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Example-Cel-Shadinig">
                Example-Cel-Shadinig
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Example-Geom-Shader/assets/shaders/skyFS.glsl"
               data-name="Example-Geom-Shader"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Example-Geom-Shader">
                Example-Geom-Shader
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Example-Particle-System/assets/shaders/skyFS.glsl"
               data-name="Example-Particle-System"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Example-Particle-System">
                Example-Particle-System
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Optimisation-Batching/assets/shaders/skyFS.glsl"
               data-name="Optimisation-Batching"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Optimisation-Batching">
                Optimisation-Batching
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Optimisation-Drawing/assets/shaders/skyFS.glsl"
               data-name="Optimisation-Drawing"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Optimisation-Drawing">
                Optimisation-Drawing
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Optimisation-Example/assets/shaders/skyFS.glsl"
               data-name="Optimisation-Example"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Optimisation-Example">
                Optimisation-Example
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Optimisation-GetUniform/assets/shaders/skyFS.glsl"
               data-name="Optimisation-GetUniform"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Optimisation-GetUniform">
                Optimisation-GetUniform
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Optimisation-Instancing/assets/shaders/skyFS.glsl"
               data-name="Optimisation-Instancing"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Optimisation-Instancing">
                Optimisation-Instancing
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Optimisation-SharedMaterial/assets/shaders/skyFS.glsl"
               data-name="Optimisation-SharedMaterial"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Optimisation-SharedMaterial">
                Optimisation-SharedMaterial
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/Optimisation-SharedMesh/assets/shaders/skyFS.glsl"
               data-name="Optimisation-SharedMesh"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="Optimisation-SharedMesh">
                Optimisation-SharedMesh
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/BigBearGCU/GP2BaseCode/blob/master/assets/shaders/skyFS.glsl"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

    <div class="btn-group right">
      <a href="/BigBearGCU/GP2BaseCode/find/Environment-Mapping"
            class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-nw"
            data-pjax
            data-hotkey="t"
            aria-label="Quickly jump between files">
        <span class="octicon octicon-list-unordered"></span>
      </a>
      <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </div>

    <div class="breadcrumb js-zeroclipboard-target">
      <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/BigBearGCU/GP2BaseCode/tree/Environment-Mapping" class="" data-branch="Environment-Mapping" data-pjax="true" itemscope="url"><span itemprop="title">GP2BaseCode</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/BigBearGCU/GP2BaseCode/tree/Environment-Mapping/assets" class="" data-branch="Environment-Mapping" data-pjax="true" itemscope="url"><span itemprop="title">assets</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/BigBearGCU/GP2BaseCode/tree/Environment-Mapping/assets/shaders" class="" data-branch="Environment-Mapping" data-pjax="true" itemscope="url"><span itemprop="title">shaders</span></a></span><span class="separator">/</span><strong class="final-path">skyFS.glsl</strong>
    </div>
  </div>

<include-fragment class="commit-tease" src="/BigBearGCU/GP2BaseCode/contributors/Environment-Mapping/assets/shaders/skyFS.glsl">
  <div>
    Fetching contributors&hellip;
  </div>

  <div class="commit-tease-contributors">
    <img alt="" class="loader-loading left" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" />
    <span class="loader-error">Cannot retrieve contributors at this time</span>
  </div>
</include-fragment>
<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="btn-group">
      <a href="/BigBearGCU/GP2BaseCode/raw/Environment-Mapping/assets/shaders/skyFS.glsl" class="btn btn-sm " id="raw-url">Raw</a>
        <a href="/BigBearGCU/GP2BaseCode/blame/Environment-Mapping/assets/shaders/skyFS.glsl" class="btn btn-sm js-update-url-with-hash">Blame</a>
      <a href="/BigBearGCU/GP2BaseCode/commits/Environment-Mapping/assets/shaders/skyFS.glsl" class="btn btn-sm " rel="nofollow">History</a>
    </div>

        <a class="octicon-btn tooltipped tooltipped-nw"
           href="github-windows://openRepo/https://github.com/BigBearGCU/GP2BaseCode?branch=Environment-Mapping&amp;filepath=assets%2Fshaders%2FskyFS.glsl"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:windows">
            <span class="octicon octicon-device-desktop"></span>
        </a>

        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/edit/Environment-Mapping/assets/shaders/skyFS.glsl" class="inline-form js-update-url-with-hash" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="LnZG3KHe2yyrq5hdFPGxyfQFCpQuqj5wCmUjFuAFl9jbvPPERF722RwFznyvlCLHJ9MMVHQYcVmvYv0nWWmbyQ==" /></div>
          <button class="octicon-btn tooltipped tooltipped-nw" type="submit"
            aria-label="Edit the file in your fork of this project" data-hotkey="e" data-disable-with>
            <span class="octicon octicon-pencil"></span>
          </button>
</form>        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/BigBearGCU/GP2BaseCode/delete/Environment-Mapping/assets/shaders/skyFS.glsl" class="inline-form" data-form-nonce="0753e66d29ed52fe89cfd8895adbe63ee49867b1" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="uFdhzbjOm9Jf5sM9QcMxtHgHyrYSc4Jn/mINn9GQ3bxaH6YjKnN68PHjsVOqq7msp/NWtxRcd6YWNyvzpIARoQ==" /></div>
          <button class="octicon-btn octicon-btn-danger tooltipped tooltipped-nw" type="submit"
            aria-label="Delete the file in your fork of this project" data-disable-with>
            <span class="octicon octicon-trashcan"></span>
          </button>
</form>  </div>

  <div class="file-info">
      <span class="file-mode" title="File mode">executable file</span>
      <span class="file-info-divider"></span>
      13 lines (9 sloc)
      <span class="file-info-divider"></span>
    213 Bytes
  </div>
</div>

  

  <div class="blob-wrapper data type-glsl">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-k">#version</span> <span class="pl-c1">150</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-k">out</span> <span class="pl-k">vec4</span> FragColor;</td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-k">in</span> <span class="pl-k">vec3</span> vertexTexCoordsOut;</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-k">uniform</span> <span class="pl-k">samplerCube</span> cubeTexture;</td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-k">void</span> <span class="pl-en">main</span>()</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line">{</td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line">	FragColor = <span class="pl-c1">texture</span>(cubeTexture, vertexTexCoordsOut);</td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line">	<span class="pl-c">//FragColor = vec4(1.0f, 1.0f, 0.0f, 1.0f);</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line">}</td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>
      </div>
      <div class="modal-backdrop"></div>
    </div>
  </div>


    </div>

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>
        <li><a href="https://github.com/pricing" data-ga-click="Footer, go to pricing, text:pricing">Pricing</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.24855s from github-fe138-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



    
    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <span class="octicon octicon-x"></span>
      </button>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" integrity="sha256-9F9EGfLnZiPgh7EKnr6l8fiIrV/Kl1JKjb+zP+QiGZo=" src="https://assets-cdn.github.com/assets/frameworks-f45f4419f2e76623e087b10a9ebea5f1f888ad5fca97524a8dbfb33fe422199a.js"></script>
      <script async="async" crossorigin="anonymous" integrity="sha256-DFnXfkL6YyFDiDCNe729Xr0u5VeJSNCljoIn6tPMz0E=" src="https://assets-cdn.github.com/assets/github-0c59d77e42fa63214388308d7bbdbd5ebd2ee5578948d0a58e8227ead3cccf41.js"></script>
      
      
    <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner hidden">
      <span class="octicon octicon-alert"></span>
      <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
      <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
    </div>
  </body>
</html>

