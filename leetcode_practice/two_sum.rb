def two_sum(nums, target)
  nums.each_with_index do |num, index|
    rest = target - num
    rest_index = nums[(index + 1)..-1].index(rest)
    return [index, rest_index + index + 1] if rest_index
  end
end

p two_sum([3, 2, 3], 6)
