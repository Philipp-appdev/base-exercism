=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  def self.song
    input_day = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
    input_gift = ["a Partridge in a Pear Tree", "two Turtle Doves", "three French Hens", "four Calling Birds", "five Gold Rings", "six Geese-a-Laying", "seven Swans-a-Swimming", "eight Maids-a-Milking", "nine Ladies Dancing", "ten Lords-a-Leaping", "eleven Pipers Piping", "twelve Drummers Drumming"]
    final_output = ""
    12.times do |day|
      input_string = ""
      day.times do |i|
        input_string.prepend("#{input_gift[i + 1]}, ")
      end
      if day == 0
        input_string = input_gift[0]
      else
        input_string = "#{input_string}and #{input_gift[0]}"
      end

      final_output << "On the #{input_day[day]} day of Christmas my true love gave to me: #{input_string}.\n\n"
    end
    final_output.chomp
  end
end
