# Djinn Infra
A playground for testing djinn.

# Prerequisites
You will need the following:

  * [docker](https://docs.docker.com/engine/installation/#docker-editions)
  * [docker-compose](https://docs.docker.com/compose/install/)

# Running
First run `docker-compose build`, this is necessary as the logstash container is built
locally.

Now just run `docker-compose up -d`, this will launch all containers.

## Tools
There are a number of containers launched:

  * Kibana
    * Location : http://localhost
    * Credentials : elastic/changeme

  * Jenkins
    * Location : http://localhost:8080
    * Credentials: admin/(see `docker logs jenkins` for password)

  * Rabbitmq
    * Location : http://localhost:15672
    * Credentials : admin/admin

  * Logstash
    * Location : http://localhost:9600

  * Elasticsearch
    * Location : http://localhost:9200
    * Credentials : elastic/changeme

# Jenkins Config
Currently there a few manual steps to configure jenkins.

    1. Install the `Mask Passwords Plugin` and `Logstash` plugins
    2. Go to `Manage Jenkins -> Global Tool Configuration` and modify Logstash plugin details
        * Host name : rabbitmq
        * Port : 5672
        * Username : admin
        * Password : admin
        * Key : test
    3. Create a build and enable `Send console log to Logstash`
