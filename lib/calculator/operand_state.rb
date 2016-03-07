module J2FunOnly
  class OperandState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def set_operand(value)
      @calc.operand = value
      @calc.set_state @calc.get_calculate_state
    end
  end
end
