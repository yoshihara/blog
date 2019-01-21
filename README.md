# blog

[![CircleCI](https://circleci.com/gh/yoshihara/blog.svg?style=svg)](https://circleci.com/gh/yoshihara/blog)

- https://github.com/yoshihara/blog
- https://blog.bomberowl.org

## used AWS Services

- Route53

## used Other Services

- [esa.io](https://esa.io): create posts
- [CircleCI](https://circleci.com): Deploy

## dependency

- [Hugo](http://gohugo.io/) v0.51
    - [kiss (theme for Hugo)](https://github.com/ribice/kiss.git)

## deploy

See circle.yml

## install

1. install Go
1. install Hugo
1. clone this repository
1. `git submodule update --init`

## build site

```sh
$ hugo
```

## for check in local

```sh
$ hugo server -D
```
