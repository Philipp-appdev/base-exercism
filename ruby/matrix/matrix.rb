=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  def initialize(input_string)
    @string = input_string
  end

  def rows
    rows_string = @string.split(/\n/)
    rows_array = []
    rows_string.each do |row|
      rows_array << row.split.map(&:to_i)
    end
    rows_array
  end

  def columns
    rows_string = @string.split(/\n/)
    rows_array = []
    rows_string.each do |row|
      rows_array << row.split.map(&:to_i)
    end
    columns_array = []
    no_columns = rows_array[0].length
    no_columns.times do |column|
        current_column =[]
      rows_array.each do |row|
        current_column << row[column]
      end
      columns_array << current_column
    end
    columns_array
  end
end
