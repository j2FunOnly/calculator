# lib/calculator/operand_state.rb

module J2FunOnly
  class OperandState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def put(value = nil)
      return if value.nil?

      if value.is_a? String
        return if value.strip.empty?
        value = value.to_i
      end

      @calc.operand = value
      # наконец-то вычисления
      @calc.set_state @calc.get_calculate_state
    end
  end
end
