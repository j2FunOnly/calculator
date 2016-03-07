# spec/calculator_memory_spec.rb

require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  describe 'works with memory' do
    it 'successfully' do
      subject.set_operand 5
      subject.set_operator '-'
      subject.set_operand 3
      expect(subject.result).to eq(5 - 3) # 2
      subject.mem_add # 0 + 2 = 2
      subject.set_operator '+'
      subject.set_operand 8
      expect(subject.result).to eq(2 + 8) # 10
      subject.mem_add # 2 + 10
      subject.mem_get
      expect(subject.result).to eq(12)
    end
  end
end
