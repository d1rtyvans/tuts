# frozen_string_literal: true

RSpec.shared_examples 'a greeter' do
  let(:greeter) { described_class.new }

  describe '#greet' do
    subject { greeter.greet }
    it { is_expected.to eq(greeter.greeting) }

    context 'with name argument' do
      subject { greeter.greet(name) }
      let(:name) { 'Rudolph' }
      it { is_expected.to include(name) }
    end
  end
end
