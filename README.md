# blog

[![CircleCI](https://circleci.com/gh/yoshihara/blog.svg?style=svg)](https://circleci.com/gh/yoshihara/blog)

https://github.com/yoshihara/blog

## used AWS Services

- Amazon S3
- CloudFront
- Route53
- Certificate Manager

## used Other Services

- [esa.io](https://esa.io): create posts
- [CircleCI](https://circleci.com): Deploy

## dependency

- go version go1.8.3 linux/amd64
- [Hugo](http://gohugo.io/) v0.32

## deploy

See circle.yml

## build site

```sh
$ hugo
```

## for check in local

```sh
$ hugo server -D
```
