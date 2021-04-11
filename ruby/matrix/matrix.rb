=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix(input_string)
    def initialize
        @string = input_string
    end

    def row(n)
        row = @string.split(/\n/)[n].split.map(&:to_i)
        row
    end

    def column(n)
        array_of_rows = @string.split
        column = ""
        array_of_rows.each do |row|
            column << row[n]
        end
        column = column.split.map(&:to_i)
    end
end
