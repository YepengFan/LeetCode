# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  (n.to_s(2).reverse + "0" * (32 - n.to_s(2).size)).to_i(2)
end
