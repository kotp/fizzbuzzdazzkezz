=begin rdoc
  Usage: (1..100).print_fizzbuzzdazzkezz(hash)
  By default, the following Hash is presented:
      {3 => :Fizz, 5 => :Buzz, 7 => :Dazz , 9 => :Kess}
  We use symbols as it is cheaper than using strings.
=end


class Range
  def print_fizzbuzzdazzkezz(hash = {7 => :Dazz, 5 => :Buzz, 3 => :Fizz , 9 => :Kess})
    hash = hash
    result = Array.new
    self.each do |i|
      str = ''
      hash.sort.each do |key, value|
        str += value.to_s if i.modulo(key).zero?
      end
      str = i if str.empty?
      puts str
    end
  end
end
