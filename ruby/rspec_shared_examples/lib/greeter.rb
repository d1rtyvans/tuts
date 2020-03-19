# frozen_string_literal: true

module Greeter
  def greet(name = nil)
    name ? greeting + ", #{name}." : greeting
  end

  def greeting
    raise StandardError.new('Greeters must implement a greeting')
  end
end
