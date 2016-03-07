# lib/calculator/operand_state.rb

module J2FunOnly
  class OperandState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def set_operand(value)
      @calc.operand = value
      # наконец-то вычисления
      @calc.set_state @calc.get_calculate_state
    end
  end
end
