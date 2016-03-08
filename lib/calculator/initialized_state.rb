# lib/calculator/initialized_state.rb

module J2FunOnly
  class InitializedState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def execute
      @calc.set_result 0
    end

    def put(value = nil)
      value = sanitize_operand value
      return if value.nil?

      @calc.set_result value
      # далее наш калькулятор ожидает ввода оператора
      @calc.set_state @calc.get_operator_state
    end
  end
end
