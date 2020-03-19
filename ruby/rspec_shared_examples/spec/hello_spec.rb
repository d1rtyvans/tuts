# frozen_string_literal: true

require 'hello'
require 'shared_examples_for_greeters'

RSpec.describe Hello do
  it_behaves_like 'a greeter'
end
