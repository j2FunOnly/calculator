require_relative 'calculator/calculator_state'
require_relative 'calculator/initialized_state'
require_relative 'calculator/operator_state'
require_relative 'calculator/operand_state'
require_relative 'calculator/calculate_state'

module J2FunOnly
  class Calculator
    attr_accessor :operand, :result, :operator

    def initialize
      @result = 0
      @initialized_state = InitializedState.new self
      @operator_state = OperatorState.new self
      @operand_state = OperandState.new self
      @calculate_state = CalculateState.new self

      set_state @initialized_state
    end

    def get_operator_state
      @operator_state
    end

    def get_operand_state
      @operand_state
    end

    def get_calculate_state
      @calculate_state
    end

    def set_state(state)
      @state = state
      @state.execute
    end

    def set_operand(value)
      @state.set_operand value
    end

    def set_operator(value)
      @state.set_operator value
    end

    def +(value)
      @result += value
    end

    def -(value)
      @result -= value
    end
  end
end
