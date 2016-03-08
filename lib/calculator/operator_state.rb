# lib/calculator/operator_state.rb

module J2FunOnly
  class OperatorState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def set_operator(value)
      if value.empty?
        @calc.set_state @calc.get_initialized_state
      else
        @calc.operator = value
        # ждем ввода операнда
        @calc.set_state @calc.get_operand_state
      end
    end
  end
end
