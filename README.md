# Dockerfile for Spress

This is a Dockerfile for running the static site generator [Spress](http://spress.yosymfony.com/).

To run a local web server with an existing site use the command

    docker run -v .:/var/www -p 4000 -t --rm gbirke/spress

You can stop the web server at any time with Ctrl-C. The container will be cleaned up automatically.

To build the site without running a web server, use the default Spress parameters after the image name:

    docker run -v .:/var/www -t --rm gbirke/spress site:build

Build with drafts:

    docker run -v .:/var/www -t --rm gbirke/spress site:build --drafts

Build in production environment:

    docker run -v .:/var/www -t --rm gbirke/spress site:build --env=prod

Build from a different directory:

    docker run -v /home/gbirke/blog:/var/www -t --rm gbirke/spress site:build
