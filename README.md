# docker-aipo
[![GitHub release](https://img.shields.io/github/release/radioberry/docker-aipo.svg)]()
[![Build Status](https://travis-ci.org/radioberry/docker-aipo.svg?branch=master)](https://travis-ci.org/radioberry/docker-aipo)
[![Coverage Status](https://coveralls.io/repos/github/radioberry/docker-aipo/badge.svg?branch=master)](https://coveralls.io/github/radioberry/docker-aipo?branch=master)

====

Aipo Open Source Edition docker image

## Description

Aipo - the open source Groupware platform
Licence	AGPLv3

Configuration of docker-compose:
 - centos: centos7,centos6,barge
 - core: aipo
 - volumes: postgressql

## Demo

## Usage
```
http://localhost
```

## Install

```
git clone https://github.com/radioberry/docker-aipo.git
cd docker-aipo
cp .env-sample .env

docker-compose up -d
```

## Deploy
```
git clone https://github.com/radioberry/docker-aipo.git
cd docker-aipo
cp .env-sample .env

docker-compose -f docker-compose-ci.yml up -d
```
