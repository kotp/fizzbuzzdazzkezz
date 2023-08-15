class Range

  # rdoc
  #   Usage: (1..100).print_fizzbuzzdazzkezz(rules)
  #
  #   By default, the following rules are presented:
  #       {3 => :Fizz, 5 => :Buzz, 7 => :Dazz , 9 => :Kezz}
  #   We use symbols as it is cheaper than using strings.

  def print_fizzbuzzdazzkezz(rules = { 7 => :Dazz, 5 => :Buzz,
                                       3 => :Fizz, 9 => :Kezz }
                            )
    result = ''
    each do |integer|
      result << integer.fizzbuzz(rules)
    end
    result.chomp
  end

  alias_method :print_fbdk, :print_fizzbuzzdazzkezz

end # End of class Range

class Integer

  # rdoc
  # Usage: integer.fizzbuzz(rules = {3 => :Fizz, 5 => :Buzz})
  #
  # Sample:
  #       results = ''
  #       (1..100).each do |number|
  #       results << number.fizzbuzz
  #       end
  #
  #       puts results

  def fizzbuzz(rules = { 3 => :Fizz, 5 => :Buzz })
    rules.each_with_object(results = '') do |(factor, word)|
      results << word.to_s if modulo(factor).zero?
    end
    results.empty? ?  to_s << "\n" : results << "\n"
  end

  alias_method :fizzbuzzdazzkezz, :fizzbuzz

end # end of Class Integer
