require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  describe 'makes multiple' do
    it 'successfully' do
      subject.put 5
      subject.put '*'
      subject.put 5
      expect(subject.get).to eq 5 * 5
    end
  end
end
