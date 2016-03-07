# lib/calculator/calculate_state.rb

module J2FunOnly
  class CalculateState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def execute
      @calc.send @calc.operator, @calc.operand
      # и все сначала
      @calc.set_state @calc.get_operator_state
    end
  end
end
