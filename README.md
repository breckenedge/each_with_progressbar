each_with_progressbar
=====================

    long_array.each_with_progressbar { |item| puts item }

Installation
------------

    $ gem install each_with_progressbar

or

    # Gemfile 
    gem 'each_with_progressbar'

and

    $ bundle install


Usage
-----

    require 'each_with_progressbar'
    [1, 2, 3].each_with_progressbar { |num| num }

Tests
-----

    ruby test/each_with_progressbar_test.rb

Contributing
------------

Fork & pull-request.
