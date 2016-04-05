# webms
A set of flask microservices for running a website (with blog, flickr/twitter integration, etc.)

# starting the microservices
Each microservice has a 'start.sh' and a 'start_gunicorn.sh' script - the first for development, the second for production use.  When being used in a development environment, the repo should be checked out as is, and a 'secrets.sh' script should be placed in the top level.  This should have export lines for the various passwords needed by the microservices, e.g.

    export FLICKR_API_KEY='<flickr api key>'
    export FLICKR_API_SECRET='<flickr api secret>'

There is also a config.sh that contains default configuration that can be overridden.

A mongo db is expected to be running on localhost - soon this will be configurable

To get the flickrservice running you will require the Python Pillow pip, which in turn depends on the following libraries:
    yum install libjpeg zlib libtiff freetype freetype-devel littlecms libwebp openjpeg

You will also need gcc to compile Pillow:
    yum install gcc

Though afterwards you should probably remove it, at least if you're running on production.
