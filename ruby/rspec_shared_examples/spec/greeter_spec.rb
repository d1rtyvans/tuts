# frozen_string_literal: true

require 'greeter'

RSpec.describe Greeter do
  let(:greeter) { described_class.new }

  describe '#greeting' do
    subject { greeter.greeting }

    it 'Subclasses are expected to implement' do
      err = [StandardError, 'Greeters must implement a greeting']
      expect { subject }.to raise_error(*err)
    end
  end
end
