module J2FunOnly
  class CalculatorMemory
    def initialize(calc)
      @calc = calc
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
