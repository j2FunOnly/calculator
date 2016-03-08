# spec/calculator_substraction_spec.rb

require 'calculator'

RSpec.describe J2FunOnly::Calculator do
  subject { J2FunOnly::Calculator.new }

  context 'makes substraction' do
    it 'successfully' do
      subject.put 5
      subject.put '-'
      subject.put 3
      expect(subject.get).to eq(5 - 3)
    end
  end
end
