def output_in_LCD_view(input_number)
  @buffer = input_number
  @output = []
  @numbers_calc_view = {
    1 => ['   ', '  |', '  |'],
    2 => [' _ ', ' _|', '|_ '],
    3 => [' _ ', ' _|', ' _|'],
    4 => ['   ', '|_|', '  |'],
    5 => [' _ ', '|_ ', ' _|'],
    6 => [' _ ', '|_ ', '|_|'],
    7 => [' _ ', '  |', '  |'],
    8 => [' _ ', '|_|', '|_|'],
    9 => [' _ ', '|_|', ' _|'],
    0 => [' _ ', '| |', '|_|']
    }

  def create_out_array
    @output << @numbers_calc_view[0] if @buffer == 0
    while(@buffer > 0)
      @output << @numbers_calc_view[@buffer % 10]
      @buffer /= 10;
    end
  end

  def transpose_out
    puts(@output.reverse.transpose[0].join(" "))
    puts(@output.reverse.transpose[1].join(" "))
    puts(@output.reverse.transpose[2].join(" "))
  end
  
  create_out_array
  transpose_out
end

def enter_error(input_number)
  error_message = "\nProbably you enter not integer,\n" \
                   "or a certain amount of extra zeros before your integer."\
                   "\nTry again.\n "
  unless ARGV[0].to_s == input_number.to_s
    puts(error_message)
    return true
  else
    return false
  end
end

input_number = ARGV[0].to_i
enter_error(input_number) || output_in_LCD_view(input_number)