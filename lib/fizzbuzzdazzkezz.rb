class Range
  # rdoc
  #   Usage: (1..100).print_fizzbuzzdazzkezz(hash)
  #
  #   By default, the following Hash is presented:
  #       {3 => :Fizz, 5 => :Buzz, 7 => :Dazz , 9 => :Kezz}
  #   We use symbols as it is cheaper than using strings.

  def print_fizzbuzzdazzkezz(hash = { 7 => :Dazz, 5 => :Buzz,
                                      3 => :Fizz, 9 => :Kezz }
                            )
    result = []
    each do |i|
      str = ''
      hash.sort.each do |key, value|
        str += value.to_s if i.modulo(key).zero?
      end
      str = i if str.empty?
      result << str
    end
    result * "\n"
  end

  alias_method :print_fbdk, :print_fizzbuzzdazzkezz
end # End of class Range

class Integer
  # rdoc
  # Usage: int.fizzbuzz(hash = {3 => :Fizz, 5 => :Buzz})
  #
  # Sample:
  #       results = ''
  #       (1..100).each do |num|
  #       results << num.fizzbuzz
  #       end
  #
  #       puts results

  def fizzbuzz(hash = { 3 => :Fizz, 5 => :Buzz })
    results = ''
    hash.to_a.sort.each do |key, value|
      results << value.to_s if modulo(key).zero?
    end
    results.empty? ?  to_s + "\n" : results + "\n"
  end

  alias_method :fizzbuzzdazzkezz, :fizzbuzz
end # end of Class Integer
