require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  context 'makes calculations' do
    it 'successfully' do
      subject.put 5
      subject.put '+'
      subject.put 5
      subject.put '-'
      subject.put '3'
      expect(subject.get).to eq(5 + 5 - 3) # 7
    end

    it 'nothing happen if operator or operand is empty' do
      subject.put 5
      subject.put
      expect(subject.state).to eq(:operator_state)
      expect(subject.get).to eq(5)

      subject.put '+'
      subject.put '  '
      expect(subject.state).to eq(:operand_state)
      expect(subject.get).to eq(5)
    end

    it 'revert to initialized state with command' do
      subject.put 5
      subject.put '+'
      subject.put 5
      subject.mem_add
      old_mem = subject.get
      subject.reset

      expect(subject.state).to eq :initialized_state
      expect(subject.get).to eq 0

      subject.mem_result!
      expect(subject.get).to eq old_mem
    end
  end
end
