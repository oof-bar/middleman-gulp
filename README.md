# Middleman + Gulp

This kit leverages the new external pipeline to compile Sass and Coffeescript with Gulp.

It also includes support for Slim templates.

## Setup

Clone this repo, and swap the remotes…

```
$ git clone https://github.com/oof-bar/middleman-gulp.git your-project-name
$ cd your-project-name
$ git remote remove origin
$ git remote add origin https://github.com/user/repo.git
$ git push origin master
```

…install the Ruby and Node dependencies…

```
$ bundle
$ npm install
```

…and you're off!

```
$ middleman
```

## To-do?

Eventually, it might make sense to convert this into a Middleman template, rather than something to clone and push to another remote.

:deciduous_tree:
