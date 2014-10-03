require_relative './lib/each_with_progressbar/version'

Gem::Specification.new do |s|
  s.name = 'each_with_progressbar'
  s.version = EachWithProgressbar::VERSION
  s.licenses = ['MIT']
  s.summary = 'Each, with a progressbar!'
  s.description = 'Use `each_with_progressbar` to show a progressbar while iterating.'
  s.authors = ['Aaron Breckenridge']
  s.email = 'aaronbreckenridge@gmail.com'
  s.homepage = 'https://github.com/breckenedge/each-with-progressbar'
  s.add_dependency 'ruby-progressbar'
end

