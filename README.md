# README

```shell
git push dokku@<host-ip>:mmd master
```

# Deploy

1. git commit
2. git push dokku@<host-ip>:mmd master
3. scp nginx/nginx.conf root@185.221.213.49:/home/dokku/mmd/

## Questions

* Как nginx.conf дописать еще через dokku?
* How to set cookies?

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
...
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
