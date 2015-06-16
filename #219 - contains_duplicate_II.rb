# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  numsDict = {}
  for i in (0..nums.length-1)
    index = numsDict[nums[i]]
    index = -1 if index.nil?
    return true if index >= 0 && i - index <= k
    numsDict[nums[i]] = i
  end
  false
end
