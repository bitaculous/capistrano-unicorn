[Capistrano Unicorn]
====================

[![Gemnasium Status][Gemnasium Status]][Gemnasium]

**Unicorn specific tasks for Capistrano**

Installation
------------

1. Add Capistrano Unicorn to your Gemfile:

    ```ruby
    group :deployment
      gem 'capistrano-unicorn', github: 'bitcoveries/capistrano-unicorn', require: false
    end
    ```

2. Run `bundle` to install all dependencies with [Bundler]

Usage
-----

Add Capistrano Unicorn to your Capfile:

```ruby
require 'capistrano/unicorn'
```

Invoke Unicorn from your `config/deploy.rb` or `config/deploy/<ENVIRONMENT>.rb`:

If `preload_app:true` use:

```ruby
after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
```

If `preload_app:true` and you need Capistrano to cleanup your `*.oldbin` PID use:

```ruby
after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:legacy_restart'
  end
end
```

Otherwise use:

```ruby
after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:reload'
  end
end
```

> Note that presently you must put the `invoke` outside any `on` block since the task handles this for you; otherwise
> you will get an `undefined method 'verbosity'` error.*

Ensure that your `unicorn_pid` directory has been added Capistrano's `linked_dirs`. Otherwise Unicorn workers will not
be properly killed/restarted.

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

Credits
-------

Capistrano Unicorn is heavily inspired by [sosedoff/capistrano-unicorn].

License
-------

Capistrano Unicorn is released under the [MIT License (MIT)], see [LICENSE].

[Bundler]: http://bundler.io "The best way to manage a Ruby application's gems"
[Capistrano Unicorn]: https://bitaculous.github.io/capistrano-unicorn/ "Unicorn specific tasks for Capistrano"
[Gemnasium]: https://gemnasium.com/bitaculous/capistrano-unicorn "Capistrano Unicorn at Gemnasium"
[Gemnasium Status]: https://img.shields.io/gemnasium/bitaculous/capistrano-unicorn.svg?style=flat "Gemnasium Status"
[Guard]: http://guardgem.org "A command line tool to easily handle events on file system modifications."
[here]: https://github.com/bitaculous/capistrano-unicorn/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/capistrano-unicorn/master/LICENSE "License"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[RSpec]: http://rspec.info "Behaviour Driven Development for Ruby"
[RuboCop]: https://github.com/bbatsov/rubocop "A Ruby static code analyzer, based on the community Ruby style guide."
[sosedoff/capistrano-unicorn]: https://github.com/tablexi/capistrano3-unicorn "Capistrano3 Unicorn"