require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  describe 'makes divisions' do
    it 'successfully' do
      subject.put 6
      subject.put '/'
      subject.put 3
      expect(subject.get).to eq(6 / 3)
    end

    it 'when second operand is zero' do
      subject.put 6
      subject.put '/'
      subject.put 0
      expect(subject.state).to eq(:operator_state)
      expect(subject.get).to eq(6)
    end
  end
end
