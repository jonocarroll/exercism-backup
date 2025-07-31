class PhoneNumber
  def self.clean(input)
    res = remove_1(remove_non_numeric(input))
    if res.size != 10 || res[0].to_i < 2 || res[3].to_i < 2
      res = nil
    end
    res
  end

  def self.remove_non_numeric(input)
    input.gsub(/\W/, '')
  end

  def self.remove_1(input)
    input.gsub(/^1/, '')
  end
end
