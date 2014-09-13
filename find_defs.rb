
origin = ARGV

raise "No file name given foo" if origin.empty?


name_no_extention = origin[0][0..-4]
name = name_no_extention
practice_name = "#{name}_parctice.rb"
test_name = "#{name}_tests.rb"


  puts "Replace current files? y/n" if Dir.exist?(name_no_extention)

  Dir.mkdir(name)

`mv #{origin[0]} #{name}` if File.exist?(origin[0])


next_if = %w(sum_iter,dd_inject, dd_map, fibs_iter, make_change)



Dir.chdir("#{name}") do
puts `pwd`
origin_file = File.readlines(origin[0])

swich = 0
# make practice file
File.open("#{practice_name}","w") do |f|

  origin_file.each_with_index do |line,index|

    if line.include?("def") && next_if.none? {|w| line.include?(w)}

      f.puts "\t" + line
      f.puts "\n\tend\n"
    end
  end

end

#make test file
File.open("#{test_name}","w") do |f|

  f.puts"require \'#{name}_parctice\'"
  f.puts
  f.puts "def #{name}_test\n\n"
  origin_file.each_with_index do |line,index|

    if line.include?("def")
      def_name = line.chomp.gsub(/\A(?:def )/,"")
      f.puts "puts \"\\n#{def_name}\""
      f.puts "p #{def_name} == \n\n"

    end
  end

  f.puts "\nend\n#{name}_test"
end

puts "\n\nYour files have been created\n\n"

`open "#{practice_name}"`
end