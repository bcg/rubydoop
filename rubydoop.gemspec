version = File.read("VERSION").strip

Gem::Specification.new do |s|
  s.name    = 'rubydoop'
  s.version = version

  s.authors = ['Brenden Grace']
  s.email   = 'brenden.grace@gmail.com'
  s.date    = '2011-04-21'

  s.description = 'Simple Ruby Sugar for Hadoop Streaming'
  s.homepage = 'https://github.com/bcg/rubydoop'
  s.rubyforge_project = 'rubydoop'

  s.files      = Dir['lib/**/*']

  s.rdoc_options  = ["--charset=UTF-8"]
  s.require_paths = ["lib"]

  s.rubygems_version = '1.3.6'

  s.summary = 'Simple Ruby Sugar for Hadoop Streaming'
end
