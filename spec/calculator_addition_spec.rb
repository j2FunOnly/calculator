# spec/calculation_addition_spec.rb
require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  describe 'makes addition' do
    it 'successfully' do
      subject.set_operand 5
      subject.set_operator '+'
      subject.set_operand 5
      expect(subject.result).to eq(5 + 5)
    end
  end
end
