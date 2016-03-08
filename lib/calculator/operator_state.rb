# lib/calculator/operator_state.rb

module J2FunOnly
  class OperatorState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def put(value = nil)
      return if value.nil?
      return unless value.is_a? String
      return unless value.strip!.size == 1

      @calc.operator = value
      # ждем ввода операнда
      @calc.set_state @calc.get_operand_state
    end
  end
end
