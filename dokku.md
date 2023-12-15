# Dokku command to set environment for mmd application

Warning!
Set environment variables before working with dokku, like so:

```shell
export POSTGRES_DB=your_database_name
export POSTGRES_USER=your_database_username
export POSTGRES_PASSWORD=your_database_user_password
```

Check it:

```shell
echo $POSTGRES_DB $POSTGRES_USER $POSTGRES_PASSWORD
```

## mmd

```shell
dokku apps:create mmd

dokku proxy:ports-add mmd http:3000:5000

sudo -u dokku mkdir -p /var/lib/dokku/data/storage/mmd

dokku storage:mount mmd /var/lib/dokku/data/storage/mmd:/app
dokku storage:report mmd

dokku config:set --no-restart mmd POSTGRES_PASSWORD="${POSTGRES_PASSWORD}"
dokku config:set --no-restart mmd POSTGRES_USER="${POSTGRES_USER}"
dokku config:set --no-restart mmd POSTGRES_DB="${POSTGRES_DB}"
dokku config:show mmd

git push dokku@185.221.213.49:mmd dev

dokku domains:add mmd "mmd.mymeddata.ru"
dokku domains:report mmd

# on your local repository to deploy to mmd
git remote add dokku dokku@mmd.mymeddata.ru:mmd
git push dokku
```

## db

```shell
dokku postgres:create mmd_db --image-version "16"

dokku postgres:link mmd_db mmd

dokku proxy:ports-add mmd_db http:5432:5432

sudo -u dokku mkdir -p /var/lib/dokku/data/storage/mmd_db
dokku storage:mount mmd_db /var/lib/dokku/data/storage/mmd_db:/var/lib/postgresql/data

dokku config:set --no-restart mmd_db POSTGRES_PASSWORD="${POSTGRES_PASSWORD}"
dokku config:set --no-restart mmd_db POSTGRES_USER="${POSTGRES_USER}"
dokku config:set --no-restart mmd_db POSTGRES_DB="${POSTGRES_DB}"

```

## redis

```shell
dokku redis:create mmd_redis --image-version "4.0.12-alpine"

dokku redis:link mmd_redis mmd

dokku proxy:ports-add mmd_redis http:6379:6379

sudo -u dokku mkdir -p /var/lib/dokku/data/storage/mmd_redis
dokku storage:mount mmd_redis /var/lib/dokku/data/storage/mmd_redis:/data

```

```
dokku postgres:help create
usage: dokku postgres:create <service> [--create-flags...]

create a Postgres service

arguments:

service   service to run command against

flags:

-c|--config-options "--args --go=here"   extra arguments to pass to the container create command
-C|--custom-env "USER=alpha;HOST=beta"   semi-colon delimited environment variables to start the service with
-i|--image IMAGE                         the image name to start the service with
-I|--image-version IMAGE_VERSION         the image version to start the service with
-m|--memory MEMORY                       container memory limit in megabytes (default: unlimited)
-N|--initial-network INITIAL_NETWORK     the initial network to attach the service to
-p|--password PASSWORD                   override the user-level service password
-P|--post-create-network NETWORKS        a comma-separated list of networks to attach the service container to after service creation
-r|--root-password PASSWORD              override the root-level service password
-S|--post-start-network NETWORKS         a comma-separated list of networks to attach the service container to after service start
-s|--shm-size SHM_SIZE                   override shared memory size for postgres docker container

examples:

create a postgres service named lollipop

    dokku postgres:create lollipop

you can also specify the image and image version to use for the service.
it *must* be compatible with the postgres image.

    export POSTGRES_IMAGE="postgres"
    export POSTGRES_IMAGE_VERSION="16.1"
    dokku postgres:create lollipop

you can also specify custom environment variables to start
the postgres service in semicolon-separated form.

    export POSTGRES_CUSTOM_ENV="USER=alpha;HOST=beta"
    dokku postgres:create lollipop

```
