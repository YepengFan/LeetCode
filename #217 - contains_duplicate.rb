# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums.uniq.length == nums.length ? false : true
end
