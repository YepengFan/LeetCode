# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n.to_s(2).chars.inject(0) {|r, b| r + b.to_i}
end
