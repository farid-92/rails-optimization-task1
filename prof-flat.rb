require 'ruby-prof'
require_relative './task-1.rb'

RubyProf.measure_mode = RubyProf::WALL_TIME

result = RubyProf.profile do
  work(file_name: 'fixtures/data_large.txt', disable_gc: true)
end
printer = RubyProf::FlatPrinter.new(result)
printer.print(File.open("ruby_prof_reports/flat.txt", "w+"))
