module J2FunOnly
  class OperatorState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def set_operator(value)
      @calc.operator = value
      @calc.set_state @calc.get_operand_state
    end
  end
end
