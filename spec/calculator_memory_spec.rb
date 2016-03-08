# spec/calculator_memory_spec.rb

require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  context 'works with memory' do
    it 'successfully' do
      subject.put 5
      subject.put '-'
      subject.put 3
      expect(subject.get).to eq(5 - 3) # 2
      subject.mem_add # 0 + 2 = 2
      subject.put '+'
      subject.put 8
      expect(subject.get).to eq(2 + 8) # 10
      subject.mem_add # 2 + 10
      subject.mem_add # 12 + 10
      subject.mem_result!
      expect(subject.get).to eq(22)
    end
  end
end
