alpine-base-image
========================

This repository contains the sources for the following [docker](https://www.docker.com/) base images:
- [`kitabisa/alpine-base-image`](https://hub.docker.com/r/kitabisa/alpine-base-image)

## Usage

This Image is intended to be used in multi-stage docker builds and is for final or production use, you can find more info
about multi-stage build in this [blog post](https://www.critiqus.com/post/multi-stage-docker-builds/)

```
FROM kitabisa/alpine-base-image

ADD binfile /opt/test/binfile
WORKDIR /opt/test/

CMD binfile
```
## Developing and testing

```bash
# Pull image
git clone https://github.com/kitabisa/alpine-base-image.git
cd alpine-base-image

# hack hack hack

# Build
make build
```