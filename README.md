# mdBook

A [Docker](http://docker.com) file to build [mdBook](https://github.com/mdbook) a utility to create modern online books from Markdown files.

> Be aware! You should read carefully the usage documentation of every tool!

## Details

| Website | GitHub | Docker Hub |
| --- | --- | --- |
| [Deft.Work my personal blog](https://deft.work) | [mdbook](https://github.com/elswork/mdbook) | [mdbook](https://hub.docker.com/r/elswork/mdbook) |

| Docker Pulls | Docker Stars | Size/Layers |
| --- | --- | --- |
| [![](https://img.shields.io/docker/pulls/elswork/mdbook.svg)](https://hub.docker.com/r/elswork/mdbook "mdbook on Docker Hub") | [![](https://img.shields.io/docker/stars/elswork/mdbook.svg)](https://hub.docker.com/r/elswork/mdbook "mdbook on Docker Hub") | [![](https://images.microbadger.com/badges/image/elswork/mdbook.svg)](https://microbadger.com/images/elswork/mdbook "mdbook on microbadger.com") |

## Compatible Architectures

This image has been builded using [buildx](https://docs.docker.com/buildx/working-with-buildx/) for this architectures: 
- amd64 arm64 arm/v7

## Usage Example

### Start container

```bash
docker run --rm elswork/mdbook \
 someparameter
```
or
```bash
make start PARAM=someparameter
```
---
**[Sponsor me!](https://github.com/sponsors/elswork) Together we will be unstoppable.**