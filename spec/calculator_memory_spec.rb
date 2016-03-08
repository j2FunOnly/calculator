# spec/calculator_memory_spec.rb

require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  describe 'works with memory' do
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
      subject.mem_get
      expect(subject.get).to eq(12)
    end
  end
end
