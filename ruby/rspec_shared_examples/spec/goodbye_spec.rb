# frozen_string_literal: true

require 'goodbye'
require 'shared_examples_for_greeters'

RSpec.describe Goodbye do
  it_behaves_like 'a greeter'
end
