
require 'fileutils'
require 'tmpdir'

def em_mongo_version
  File.read("VERSION").strip
end

namespace :gem do

  desc "build gem"
  task :build do
    puts "Building em-mongo #{em_mongo_version}"
    system "gem build rubydoop.gemspec -q"
  end

  desc "release gem"
  task :release do
    system "gem push rubydoop-#{em_mongo_version}.gem"
  end

end

