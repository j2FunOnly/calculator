require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  describe 'makes calculations' do
    it 'successfully' do
      subject.set_operand 5
      subject.set_operator '+'
      subject.set_operand 5
      subject.set_operator '-'
      subject.set_operand 3
      expect(subject.result).to eq(5 + 5 - 3) # 7
    end
  end
end
