require 'open3'

class Rubydoop
  class MiniTest <  MiniTest::Unit::TestCase

    def map(script, input)
      Open3.pipeline_rw("./#{script} map", "sort") do |in_io, out_io, wt|
        in_io.print input
        in_io.close
        out_io.readlines
      end
    end

    def mapreduce(script, input)
      Open3.pipeline_rw("./#{script} map", "sort", "./#{script} reduce") do |in_io, out_io, wt|
        in_io.print input
        in_io.close
        out_io.readlines
      end
    end

  end
end
