#lib/calculator/calculator_state.rb

module J2FunOnly
  class CalculatorState
    def execute; end

    def state
      self.class.name.split('::')[1].
        gsub(/([a-z])([A-Z])/, '\1_\2').
        downcase.
        to_sym
    end
  end
end
