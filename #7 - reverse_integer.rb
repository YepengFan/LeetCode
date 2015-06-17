# @param {Integer} x
# @return {Integer}
def reverse(x)
  x = x >= 0 ? x.to_s.reverse.to_i : - (x.abs.to_s.reverse.to_i)
  x > 2147483647|| x < -2147483647 ? 0 : x
end
