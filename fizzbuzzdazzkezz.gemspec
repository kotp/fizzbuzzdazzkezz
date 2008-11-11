require 'rubygems'
spec = Gem::Specification.new do |s|
  s.name = 'fizzbuzzdazzkezz'
  s.version = '0.0.1'
  s.summary = "When FizzBuzz is not enough."
  s.files = Dir.glob("**/**/**")
  s.test_files = Dir.glob("test/*_test.rb")
  s.autorequire = 'fizzbuzzdazzkezz'
  s.author = "Takaaki Kato"
  s.email = "takaaki@samuraicoder.net"
  s.has_rdoc = false
  s.required_ruby_version = '>=1.8.6'
end