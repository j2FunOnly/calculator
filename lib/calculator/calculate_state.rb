module J2FunOnly
  class CalculateState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def execute
      @calc.send @calc.operator, @calc.operand
      @calc.set_state @calc.get_operator_state
    end
  end
end
