require './defs'

def test
puts "\nrange"
p range(1,5) == [1,2,3,4]

puts "\nsum_rec"
p sum_rec([2,3,4]) == 9

puts "\nexp1"
p exp1(2,3) == 8

puts "\nexp2"
p exp2(2,3) == 8

puts "\nfibs"
p fibs_rec(4) == [0,1,1,2]

puts "\nbsearch"
p bsearch([1,2,3,4,5,6],5) == 4
p bsearch([1,2,3,4,5,6,7],5) == 4
p bsearch([1,2,3,4,5,6,7],2) == 1
p bsearch([1,2,3,4,5,6],2) == 1

puts "\nmake_change"
# p make_change(14, [10, 7, 1])
puts "\nmerge_sort"
p [].merge_sort == []
p [1].merge_sort == [1]
p [1, 4, 3, 5, 6].merge_sort == [1, 3, 4, 5, 6]
p [4, 3, 2, 1, 0].merge_sort == [0, 1, 2, 3, 4]

puts "\nsubsets"
p [1,2,3].subsets == [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]

puts "factorial"
p factorial(5)
end


test
