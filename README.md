[Capistrano Unicorn]
====================

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

**Unicorn specific tasks for Capistrano**

Installation
------------

1. Add Capistrano Unicorn to your Gemfile:

    ```ruby
    gem 'capistrano-unicorn', github: 'bitcoveries/capistrano-unicorn'
    ```

2. Run `bundle` to install all dependencies with [Bundler]

Development
-----------

### Run specs with [RSpec]

Run `rspec`.

or via [Guard]:

```
$ guard -g spec
```

### Run [RuboCop]

Run `rubocop`.

To run all specs and RuboCop altogether, run `rake`.

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

License
-------

Capistrano Unicorn is released under the [MIT License (MIT)], see [LICENSE].

[Capistrano Unicorn]: https://bitaculous.github.io/capistrano-unicorn/ "Unicorn specific tasks for Capistrano"
[Gemnasium]: https://gemnasium.com/bitaculous/capistrano-unicorn "Capistrano Unicorn at Gemnasium"
[Gemnasium Status]: https://img.shields.io/gemnasium/bitaculous/capistrano-unicorn.svg?style=flat "Gemnasium Status"
[Guard]: http://guardgem.org "A command line tool to easily handle events on file system modifications."
[here]: https://github.com/bitaculous/capistrano-unicorn/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/capistrano-unicorn/master/LICENSE "License"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[RSpec]: http://rspec.info "Behaviour Driven Development for Ruby"
[RuboCop]: https://github.com/bbatsov/rubocop "A Ruby static code analyzer, based on the community Ruby style guide."
[Travis CI]: https://travis-ci.org/bitaculous/capistrano-unicorn "Capistrano Unicorn at Travis CI"
[Travis CI Status]: https://img.shields.io/travis/bitaculous/capistrano-unicorn.svg?style=flat "Travis CI Status"