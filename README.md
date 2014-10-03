each_with_progressbar
=====================

    long_array.each_with_progressbar { |item| puts item }

Usage
-----

    require 'each_with_progressbar'
    [1, 2, 3].each_with_progressbar { |num| num }
    [1, 2, 3].each_with_progressbar(STDERR) { |num| num }

Tests
-----

    ruby test/each_with_progressbar_test.rb

Contributing
------------

Fork & pull-request.
