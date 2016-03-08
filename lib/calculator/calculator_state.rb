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

    protected

    def sanitize_operand(value)
      result = nil
      return result if value.nil?

      if value.is_a? String
        result = value.to_i unless value.strip.empty?
      else
        result = value
      end

      return result
    end

    def sanitize_operator(value)
      result = nil
      return nil if value.nil?

      if value.is_a? String
        value.strip!
        if value.size == 1 && %w(+ - * /).include?(value)
          result = value
        end
      end

      return result
    end
  end
end
