require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  describe 'makes substraction' do
    it 'successfully' do
      subject.set_operand 5
      subject.set_operator '-'
      subject.set_operand 3
      expect(subject.result).to eq(5 - 3)
    end
  end
end
