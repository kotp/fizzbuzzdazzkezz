class Object
  def print_fizzbuzzdazzkezz
    hash = {7 => "Dazz", 5 => "Buzz", 3 => "Fizz" , 9 => "Kess"}
    (1..100).each do |i|
      str = ''
      hash.sort.each do |key, value|
        str += value if i.modulo(key).zero?
      end
      str = i if str.empty?
      puts str
    end
  end
end