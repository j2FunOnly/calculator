# lib/calculator/initialized_state.rb

module J2FunOnly
  class InitializedState < CalculatorState
    def initialize(calc)
      @calc = calc
    end

    def execute
      @calc.result = 0
    end

    def put(value = nil)
      value = value.to_i if value.is_a? String
      @calc.result = value
      # далее наш калькулятор ожидает ввода оператора
      @calc.set_state @calc.get_operator_state
    end
  end
end
