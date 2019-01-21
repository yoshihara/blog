# blog

[![CircleCI](https://circleci.com/gh/yoshihara/blog.svg?style=svg)](https://circleci.com/gh/yoshihara/blog)

- https://github.com/yoshihara/blog
- https://blog.bomberowl.org

## used AWS Services

- Route53

## used Other Services

- [esa.io](https://esa.io): create posts
- [Netlify](https://www.netlify.com): Deploy

## dependency

- [Hugo](http://gohugo.io/) v0.51
    - [kiss (theme for Hugo)](https://github.com/ribice/kiss.git)

## install

1. install Go
1. install Hugo
1. clone this repository
1. `git submodule update --init`

## build site

```sh
$ ./bin/format_esa_md_for_hugo.sh
$ hugo
```

## for check in local

```sh
$ ./bin/format_esa_md_for_hugo.sh
$ hugo server -D
```
