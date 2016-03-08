require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  describe 'shows states' do
    it 'initialized_state when calculator started' do
      expect(subject.state).to eq(:initialized_state)
    end
    it 'operator_state when waiting operator' do
      subject.set_operand 5
      expect(subject.state).to eq(:operator_state)
    end
    it 'operand_state when waiting operand' do
      subject.set_operand 5
      subject.set_operator '+'
      expect(subject.state).to eq(:operand_state)
    end
  end
end
