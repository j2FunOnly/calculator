require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  describe 'makes divisions' do
    it 'successfully' do
      subject.set_operand 6
      subject.set_operator '/'
      subject.set_operand 3
      expect(subject.result).to eq(6 / 3)
    end

    it 'when second operand is zero' do
      subject.set_operand 6
      subject.set_operator '/'
      subject.set_operand 0
      expect(subject.state).to eq(:operator_state)
      expect(subject.result).to eq(6)
    end
  end
end
