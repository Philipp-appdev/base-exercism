=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(string)
    array_of_strings = string.gsub(/[^0-9a-z ]/i, ' ')
    array_of_strings = array_of_strings.gsub(/\s+/, ' ')
    array_of_strings = array_of_strings.split(/[^a-zA-Z]/)
   
    abbreviation = ""
    array_of_strings.each do |i|
      abbreviation << i.chars[0]
    end
    abbreviation.upcase
  end
end
