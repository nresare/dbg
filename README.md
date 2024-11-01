# The nresare/dbg image

A tiny alpine based docker image with a simple name and some useful tools.
Feel free to use however you want.

https://creativecommons.org/share-your-work/public-domain/cc0/

## how to build

* Install buildx using one of the methods described [here](https://github.com/docker/buildx)
* If you haven't done so before, set up the buildx builder with `docker buildx create --use`
* Build the image with `docker buildx build --platform linux/amd64,linux/arm64 .`
* To build and push an image to the repo, make sure you `docker login` successfully, then use
  `docker buildx build --platform linux/amd64,linux/arm64 -t ${REPO}/dbg:${VERSION} -t ${REPO}/dbg:latest --push .`
