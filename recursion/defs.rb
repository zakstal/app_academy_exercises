	def range(min, max)
    return [] if max <= min
    range(min, max - 1) << max - 1
	end

	def sum_rec(nums)
    return 0 if nums.empty?
    nums.first + sum_rec(nums.drop(1))
	end
	def exp1(base, power)
    if power == 0
      1
    else
      base * exp1(base, power - 1)
    end
	end
	def exp2(base, power)
    if power == 0
      1
    elsif power == 1
      base
    else
      half = exp2(base,power / 2)
      if power.even?
        half * half
      else
        base * half * half
      end
	end
end

def deep_dup

	end
	def fibs_rec(n)
    if n <= 2
      [0,1].take(2)
    else
      next_fib = fibs_rec(n - 1)
      next_fib << next_fib[-2] + next_fib[-1]
    end
	end
	def bsearch(nums, target)
    half = nums.length/2
    if nums[half] < target #upper
      half + bsearch(nums.drop(half),target)
    elsif nums[half] > target #lower
      bsearch(nums.take(half),target)
    else
      half
    end
	end
  class Array
	def merge_sort
    return self if length < 2
    half = length/2
    left = self.take(half).merge_sort
    right = self.drop(half).merge_sort

    merge(left,right)

	end
  def merge(left, right)
    new_ar = []
    until left.empty? || right.empty?
      new_ar << ((left.first < right.first) ? left.shift : right.shift)
    end
    new_ar + left + right
	end
	  def subsets
      return [[]] if empty?
      sub = take(count - 1).subsets
      sub + sub.map{|s| s + [last]}
	end
end

  def factorial(n)
    return [n] if n < 2
      num = factorial(n - 1)
      num + [num.last * n]
  end

