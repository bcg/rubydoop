
require 'fileutils'
require 'tmpdir'

def rubydoop_version
  File.read("VERSION").strip
end

namespace :gem do

  desc "build gem"
  task :build do
    puts "Building rubydoop #{rubydoop_version}"
    system "gem build rubydoop.gemspec -q"
  end

  desc "release gem"
  task :release do
    system "gem push rubydoop-#{rubydoop_version}.gem"
  end

end

