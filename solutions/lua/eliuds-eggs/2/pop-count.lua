local PopCount = {}

function PopCount.egg_count(number)
--  print(string.format("input: %s", number))--
  bits = 0
  while number > 0 do
    pwr = math.log(number, 2)
--    print(string.format("log2: %s", pwr))--
    rnd = math.floor(pwr+0.5)
--    print(string.format("rnd: %s", rnd))--
    if rnd == pwr then
      bits = bits + 1
--      print(string.format("bits: %s", bits))--
    end
    number = number - 2^rnd
--    print(string.format("number: %s", number))--
  end
  return bits
end

return PopCount
