alpine-base-image
========================

This repository contains the sources for the following [docker](https://docker.io) base images:
- [`lacion/alpine-base-image`]

[![Anchore Image Overview](https://anchore.io/service/badges/image/a41a4b94ebcbf58b78c084deb6c540b1c48fcbbbc4ea0a71ffaab47a4a6642c7)](https://anchore.io/image/dockerhub/lacion%2Falpine-base-image%3Alatest)

## Image Security Scan

Anchore is being used to periodically scan images and detect possible vulnerabilities (and fix them).

https://anchore.io/image/dockerhub/09deed702c6a1228e3a485a2c30f23bb1529b415ae996ae718bbe06336539742?repo=lacion%2Falpine-base-image&tag=latest#overview

## Usage

This Image is intedend to be used in multi stage docker builds and is for final or production use you can find more info
about multistage build in this [blog post](https://www.critiqus.com/post/multi-stage-docker-builds/)

```
FROM lacion/alpine-base-image

ADD binfile /opt/test/binfile
WORKDIR /opt/test/

CMD binfile

```
## Developing and testing

```bash
# Pull image
git clone ssh://git@github.com/lacion/alpine-base-image.git
cd alpine-base-image

# hack hack hack

# Build
make build

# Test