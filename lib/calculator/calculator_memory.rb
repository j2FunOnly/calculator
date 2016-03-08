# lib/calculator/calculator_memory.rb

module J2FunOnly
  class CalculatorMemory
    def initialize
      @result = 0
    end

    def add(value)
      @result += value
    end

    def get
      @result
    end
  end
end
