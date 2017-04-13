# docker-taxonomy
docker image test of a pre-loaded virtuoso triplestore

taxonomy ttl taken from [DDBJ page](http://ddbj.nig.ac.jp/ontologies/).

this image will be considered *READ-ONLY*.  Any inserts or changes to the graph will be ignored once the original docker image is changed.

## Prerequisite:

1. Working docker engine
2. Working docker-compose 

## Usage:
### pull latest image
```
docker-compose pull
```
### startup
```
docker-compose up
```

## Features:
### Working version without any configuration

No initial data files required.  simple configuration where detailed changes are docker-compose compatible.

### Version management

Using Docker management, binary level updates of data.

## Todo:
### link to external triplestore

should be possible to link this into another application.  As it is read-only, it should not be used within a dynamically changing triplestore environment.
