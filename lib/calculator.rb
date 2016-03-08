# lib/calculator.rb

require_relative 'calculator/calculator_state'
require_relative 'calculator/initialized_state'
require_relative 'calculator/operator_state'
require_relative 'calculator/operand_state'
require_relative 'calculator/calculate_state'
require_relative 'calculator/calculator_memory'

module J2FunOnly
  class Calculator
    attr_accessor :operand, :operator
    attr_writer :result

    def initialize
      @result = 0
      @initialized_state = InitializedState.new self
      @operator_state = OperatorState.new self
      @operand_state = OperandState.new self
      @calculate_state = CalculateState.new self
      @memory = CalculatorMemory.new

      set_state @initialized_state
    end

    def get_initialized_state
      @initialized_state
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
      @state.execute # может нам надо что-то сделать после смены статуса
    end

    def state
      @state.state
    end

    def put(value = nil)
      @state.put value
    end

    def get
      @result
    end

    def mem_add
      @memory.add @result
    end

    def mem_get
      @result = @memory.get
      set_state get_operator_state
    end

    def reset
      set_state get_initialized_state
    end

    def calculate
      send operator, operand
    end

    private

    def +(value)
      @result += value
    end

    def -(value)
      @result -= value
    end

    def /(value)
      @result /= value
    rescue ZeroDivisionError
      @result /= 1
    end

    def *(value)
      @result *= value
    end
  end
end
