# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  arr = []
  while n != 1 && arr.index(n).nil?
    arr << n
    n = n.to_s.chars.inject(0) { |r, e | r + e.to_i ** 2 }
  end
  n === 1
end
