# @param {String} s
# @return {Integer}
def roman_to_int(s)
  ri = {
      :I => 1,
      :V => 5,
      :X => 10,
      :L => 50,
      :C => 100,
      :D => 500,
      :M => 1000
  }
  arr = s.chars.map { |e| ri[e.to_sym] }
  s = arr[-1]

  (arr.length-2).downto(0).each do |index|
    return s if arr[index -1].nil?
    arr[index] >= arr[index + 1] ? s += arr[index] : s -= arr[index]
  end
  s
end
