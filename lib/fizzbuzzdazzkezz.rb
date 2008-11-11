class Range

=begin rdoc
  Usage: (1..100).print_fizzbuzzdazzkezz(hash)

  By default, the following Hash is presented:
      {3 => :Fizz, 5 => :Buzz, 7 => :Dazz , 9 => :Kezz}
  We use symbols as it is cheaper than using strings.
=end

  def print_fizzbuzzdazzkezz(hash = {7 => :Dazz, 5 => :Buzz, 3 => :Fizz , 9 => :Kezz})
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

  alias print_fbdk print_fizzbuzzdazzkezz
end # End of class Range


