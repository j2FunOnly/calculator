# lib/calculator/operand_state.rb

module J2FunOnly
  class OperandState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def put(value = nil)
      value = sanitize_operand value
      return if value.nil?

      @calc.operand = value
      # наконец-то вычисления
      @calc.set_state @calc.get_calculate_state
    end
  end
end
