module J2FunOnly
  class InitializedState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def set_operand(value)
      @calc.result = value
      @calc.set_state @calc.get_operator_state
    end
  end
end