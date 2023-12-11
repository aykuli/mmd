# README

```shell
git push dokku@<host-ip>:<app-m=name> deploy-branch
```

```ssh
docker container run \
  --env DOKKU_HOSTNAME=mymeddata.ru \
  --env DOKKU_HOST_ROOT=/var/lib/dokku/home/dokku \
  --env DOKKU_LIB_HOST_ROOT=/var/lib/dokku/var/lib/dokku \
  --name dokku \
  --publish 3022:22 \
  --publish 8080:80 \
  --publish 8443:443 \
  --volume /var/lib/dokku:/mnt/dokku \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  dokku/dokku:latest
```

```shell


perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
 LANGUAGE = (unset),
 LC_ALL = (unset),
 LC_ADDRESS = "ru_RU.UTF-8",
 LC_NAME = "ru_RU.UTF-8",
 LC_MONETARY = "ru_RU.UTF-8",
 LC_PAPER = "ru_RU.UTF-8",
 LC_IDENTIFICATION = "ru_RU.UTF-8",
 LC_TELEPHONE = "ru_RU.UTF-8",
 LC_MEASUREMENT = "ru_RU.UTF-8",
 LC_TIME = "ru_RU.UTF-8",
 LC_NUMERIC = "ru_RU.UTF-8",
 LANG = "C.UTF-8"
    are supported and installed on your system.
perl: warning: Falling back to a fallback locale ("C.UTF-8").
Enumerating objects: 604, done.
Counting objects: 100% (604/604), done.
Delta compression using up to 20 threads
Compressing objects: 100% (569/569), done.
Writing objects: 100% (604/604), 108.62 KiB | 3.88 MiB/s, done.
Total 604 (delta 307), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (307/307), done.
-----> Cleaning up...
-----> Building mmd from herokuish
-----> Adding BUILD_ENV to build environment...
       BUILD_ENV added successfully
-----> Ruby app detected
-----> Installing bundler 2.3.25
-----> Removing BUNDLED WITH version in the Gemfile.lock
-----> Compiling Ruby/Rails
-----> Using Ruby version: ruby-3.2.2
              ###### WARNING:
       
       You have the `.bundle/config` file checked into your repository
       It contains local state like the location of the installed bundle
       as well as configured git local gems, and other settings that should
       not be shared between multiple checkouts of a single repo. Please
       remove the `.bundle/` folder from your repo and add it to your `.gitignore` file.
       
       https://devcenter.heroku.com/articles/bundler-configuration
       
-----> Installing dependencies using bundler 2.3.25
       Running: BUNDLE_WITHOUT='development:test' BUNDLE_PATH=vendor/bundle BUNDLE_BIN=vendor/bundle/bin BUNDLE_DEPLOYMENT=1 bundle install -j4
       Fetching https://github.com/rails/rails.git
       Fetching gem metadata from https://rubygems.org/...........
       Fetching https://github.com/diy-rb/diy-carrierable.git
       Fetching rake 13.0.6
       Installing rake 13.0.6
       Using base64 0.1.1
       Fetching bigdecimal 3.1.4
       Fetching concurrent-ruby 1.2.2
       Using ruby2_keywords 0.0.5
       Fetching connection_pool 2.4.1
       Fetching minitest 5.20.0
       Installing connection_pool 2.4.1
       Using mutex_m 0.1.2
       Fetching builder 3.2.4
       Installing bigdecimal 3.1.4 with native extensions
       Installing minitest 5.20.0
       Installing concurrent-ruby 1.2.2
       Fetching erubi 1.12.0
       Installing builder 3.2.4
       Fetching racc 1.7.1
       Fetching crass 1.0.6
       Installing erubi 1.12.0
       Fetching rack 3.0.8
       Installing racc 1.7.1 with native extensions
       Installing crass 1.0.6
       Fetching nio4r 2.5.9
       Installing rack 3.0.8
       Fetching websocket-extensions 0.1.5
       Installing nio4r 2.5.9 with native extensions
       Installing websocket-extensions 0.1.5
       Fetching zeitwerk 2.6.12
       Installing zeitwerk 2.6.12
       Fetching timeout 0.4.0
       Installing timeout 0.4.0
       Fetching marcel 1.0.2
       Installing marcel 1.0.2
       Fetching mini_mime 1.1.5
       Installing mini_mime 1.1.5
       Using date 3.3.3
       Fetching bcrypt 3.1.19
       Installing bcrypt 3.1.19 with native extensions
       Using bundler 2.4.10
       Fetching deep_merge 1.2.2
       Installing deep_merge 1.2.2
       Fetching dry-initializer 3.1.1
       Installing dry-initializer 3.1.1
       Fetching dry-inflector 1.0.0
       Installing dry-inflector 1.0.0
       Using diy-carrierable 1.0.0 from https://github.com/diy-rb/diy-carrierable.git (at master@8bffc85)
       Fetching ice_nine 0.11.2
       Installing ice_nine 0.11.2
       Using io-console 0.6.0
       Fetching stringio 3.0.8
       Installing stringio 3.0.8 with native extensions
       Fetching pg 1.5.4
       Installing pg 1.5.4 with native extensions
       Fetching webrick 1.8.1
       Installing webrick 1.8.1
       Fetching thor 1.2.2
       Installing thor 1.2.2
       Using drb 2.1.1
       Fetching i18n 1.14.1
       Installing i18n 1.14.1
       Fetching tzinfo 2.0.6
       Installing tzinfo 2.0.6
       Fetching dry-container 0.11.0
       Installing dry-container 0.11.0
       Fetching rack-session 2.0.0
       Installing rack-session 2.0.0
       Fetching rack-test 2.1.0
       Installing rack-test 2.1.0
       Fetching websocket-driver 0.7.6
       Installing websocket-driver 0.7.6 with native extensions
       Fetching dry-core 1.0.1
       Installing dry-core 1.0.1
       Using net-protocol 0.2.1
       Fetching nokogiri 1.15.4 (x86_64-linux)
       Fetching reline 0.3.9
Bundle complete! 20 Gemfile dependencies, 77 gems now installed.
       Gems in the groups 'development' and 'test' were not installed.
       Bundled gems are installed into `./vendors/gems`
       Post-install message from config:
       
       Thanks for installing Config
       Please consider donating to our open collective to help us maintain this project.
       
       
       Donate: https://opencollective.com/rubyconfig/donate
       Bundle completed (79.33s)
       Cleaning up the bundler cache.
-----> Detecting rake tasks
-----> Detecting rails configuration
       
       ###### WARNING:
       
       You have the `.bundle/config` file checked into your repository
       It contains local state like the location of the installed bundle
       as well as configured git local gems, and other settings that should
       not be shared between multiple checkouts of a single repo. Please
       remove the `.bundle/` folder from your repo and add it to your `.gitignore` file.
       
       https://devcenter.heroku.com/articles/bundler-configuration
       
       
-----> Discovering process types
       Procfile declares types -> release, web
-----> Releasing mmd...
-----> Checking for predeploy task
       No predeploy task found, skipping
-----> Checking for release task
-----> Executing release task from Procfile: bundle exec rails db:migrate
=====> Start of mmd release task (73fdbcd59) output
=====> End of mmd release task (73fdbcd59) output
=====> Processing deployment checks
remote:  !     No healthchecks found in app.json for web process type                          
       No web healthchecks found in app.json. Simple container checks will be performed.
       For more efficient zero downtime deployments, add healthchecks to your app.json. See https://dokku.com/docs/deployment/zero-downtime-deploys/ for examples
-----> Deploying mmd via the docker-local scheduler...
-----> Deploying web (count=1)
remote: perl: warning: Setting locale failed.
remote: perl: warning: Please check that your locale settings:
remote:  LANGUAGE = (unset),
remote:  LC_ALL = (unset),
remote:  LC_ADDRESS = "ru_RU.UTF-8",
remote:  LC_NAME = "ru_RU.UTF-8",
remote:  LC_MONETARY = "ru_RU.UTF-8",
remote:  LC_PAPER = "ru_RU.UTF-8",
remote:  LC_IDENTIFICATION = "ru_RU.UTF-8",
remote:  LC_TELEPHONE = "ru_RU.UTF-8",
remote:  LC_MEASUREMENT = "ru_RU.UTF-8",
remote:  LC_TIME = "ru_RU.UTF-8",
remote:  LC_NUMERIC = "ru_RU.UTF-8",
remote:  LANG = "C.UTF-8"
remote:     are supported and installed on your system.
remote: perl: warning: Falling back to a fallback locale ("C.UTF-8").
       Attempting pre-flight checks (web.1)
remote:  !     Deprecated: Usage of the CHECKS file is deprecated in favor of healthchecks in app.json
remote:  !     Please move your healthchecks to app.json.
-----> Executing 2 healthchecks                                                        
       Running healthcheck name='check-1' delay=0 path='/' retries=2 timeout=5 type='path'
       Running healthcheck name='port listening check' attempts=3 port=5000 retries=2 timeout=5 type='listening' wait=5
       Healthcheck succeeded name='port listening check'                               
remote: 2023/12/12 06:11:47.415112 WARN RESTY Get "https://172.17.0.3:5000/": http: server gave HTTP response to HTTPS client, Attempt 1
remote: 2023/12/12 06:11:52.417331 WARN RESTY Get "https://172.17.0.3:5000/": http: server gave HTTP response to HTTPS client, Attempt 2
remote: 2023/12/12 06:11:57.422703 WARN RESTY Get "https://172.17.0.3:5000/": http: server gave HTTP response to HTTPS client, Attempt 3
remote: 2023/12/12 06:11:57.422720 ERROR RESTY Get "https://172.17.0.3:5000/": http: server gave HTTP response to HTTPS client
remote:  !     Failure in name='check-1': Get "https://172.17.0.3:5000/": http: server gave HTTP response to HTTPS client
401c81c11c238e1eba4e094a2edcf8b21a5453e77ade87179766d8de017e862c
remote:  !     Could not start due to 1 failed checks (web.1)
=====> Start of mmd container output (web.1)
       [16] Puma starting in cluster mode...
       [16] * Puma version: 6.4.0 (ruby 3.2.2-p53) ("The Eagle of Durango")
       [16] *  Min threads: 5
       [16] *  Max threads: 5
       [16] *  Environment: production
       [16] *   Master PID: 16
       [16] *      Workers: 2
       [16] *     Restarts: (✔) hot (✔) phased
       [16] * Listening on http://0.0.0.0:5000
       [16] Use Ctrl-C to stop
       [16] - Worker 1 (PID: 155) booted in 1.74s, phase: 0
       2023-12-12 06:11:47 +0000 HTTP parse error, malformed request: #<Puma::HttpParserError: Invalid HTTP format, parsing fails. Are you trying to open an SSL connection to a non-SSL Puma?>
       [16] - Worker 0 (PID: 153) booted in 1.84s, phase: 0
       2023-12-12 06:11:52 +0000 HTTP parse error, malformed request: #<Puma::HttpParserError: Invalid HTTP format, parsing fails. Are you trying to open an SSL connection to a non-SSL Puma?>
       2023-12-12 06:11:57 +0000 HTTP parse error, malformed request: #<Puma::HttpParserError: Invalid HTTP format, parsing fails. Are you trying to open an SSL connection to a non-SSL Puma?>
       [16] === puma shutdown: 2023-12-12 06:11:57 +0000 ===
       [16] - Goodbye!
       [16] - Gracefully shutting down workers...
       2023/12/12 06:11:57 signal: terminated
=====> End of mmd container output (web.1)
=====> Start of  container output (.)
       [16] Puma starting in cluster mode...
       [16] * Puma version: 6.4.0 (ruby 3.2.2-p53) ("The Eagle of Durango")
       [16] *  Min threads: 5
       [16] *  Max threads: 5
       [16] *  Environment: production
       [16] *   Master PID: 16
       [16] *      Workers: 2
       [16] *     Restarts: (✔) hot (✔) phased
       [16] * Listening on http://0.0.0.0:5000
       [16] Use Ctrl-C to stop
       [16] - Worker 1 (PID: 155) booted in 1.74s, phase: 0
       2023-12-12 06:11:47 +0000 HTTP parse error, malformed request: #<Puma::HttpParserError: Invalid HTTP format, parsing fails. Are you trying to open an SSL connection to a non-SSL Puma?>
       [16] - Worker 0 (PID: 153) booted in 1.84s, phase: 0
       2023-12-12 06:11:52 +0000 HTTP parse error, malformed request: #<Puma::HttpParserError: Invalid HTTP format, parsing fails. Are you trying to open an SSL connection to a non-SSL Puma?>
       2023-12-12 06:11:57 +0000 HTTP parse error, malformed request: #<Puma::HttpParserError: Invalid HTTP format, parsing fails. Are you trying to open an SSL connection to a non-SSL Puma?>
       [16] === puma shutdown: 2023-12-12 06:11:57 +0000 ===
       [16] - Goodbye!
       [16] - Gracefully shutting down workers...
       2023/12/12 06:11:57 signal: terminated
=====> End of  container output (.)
remote: parallel: This job failed:
remote: /var/lib/dokku/plugins/available/scheduler-docker-local/bin/scheduler-deploy-process-container mmd herokuish dokku/mmd:latest latest web 1 1
To 185.221.213.49:mmd
 ! [remote rejected] master -> master (pre-receive hook declined)
error: failed to push some refs to '185.221.213.49:mmd'
```
