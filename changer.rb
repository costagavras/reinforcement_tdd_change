class Changer


@coins = [25, 10, 5, 1]


  def initialize
  end

  def self.make_change(int)
    @output = []
    # Case my coin is exactly the integer
    if @coins.include?(int)
        @output << int
        return @output
    else
      repeat = 0
      @coins.each do |coin|
        # Case my coin is exactly n times integer
        if int % coin == 0
          repeat = int / coin
          repeat.times do
            @output << coin
          end
          return @output
        else
          # Case the integer is a loose collection of coins
          repeat = int / coin
          repeat.times do
            @output << coin
          end
          int = int % coin
          if int == 0
            return @output
          end
        end
      end
    end
  end

end
