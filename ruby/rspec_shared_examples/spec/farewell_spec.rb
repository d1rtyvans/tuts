# frozen_string_literal: true

require 'farewell'
require 'shared_examples_for_greeters'

RSpec.describe Farewell do
  it_behaves_like 'a greeter'
end
