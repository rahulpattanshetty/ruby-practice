# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target
# nums = [2,7,11,15], target = 9 o/p:- [0,1]
# nums = [3,2,4], target = 6, o/p:- [1,2]

def two_sum(nums, target)
  if nums.length > 2
    result = {}
    nums.each_with_index do |val, idx|
      if result.has_key?(target - val)
        return [result[target-val], idx]
      else
        result[val] = idx
      end
    end
  else
    []
  end
end

nums = [3,2,4]
target = 6
p two_sum(nums, target)
