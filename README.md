# docker-taxonomy
docker image test of a pre-loaded virtuoso triplestore

taxonomy ttl taken from [DDBJ page](http://ddbj.nig.ac.jp/ontologies/).

this image will be considered *READ-ONLY*.  Any inserts or changes to the graph will be ignored once the original docker image is changed.

## Quick:
```
git clone https://github.com/aokinobu/docker-taxonomy.git
docker-compose pull
docker-compose up
```

then confirm the [rows per graph](http://localhost:8890/sparql?default-graph-uri=&query=SELECT+%3Fg+%28COUNT%28%3Fg%29+as+%3Fcount%29+WHERE+%7B+GRAPH+%3Fg+%7B%3Fs+%3Fp+%3Fo%7D%7D+GROUP+BY+%3Fg++ORDER+BY+%3Fg&format=text%2Fhtml&timeout=0&debug=on) of the localhost instance.  It should contain the ```http://taxonomy``` graph with approximately 22702450 rows.


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
