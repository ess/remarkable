module Remarkable
  # Helper that includes required Remarkable modules into the given klass.
  def self.include_matchers!(base, klass)
    # Add Remarkable core modules
    klass.send :extend,  Remarkable::Macros

    klass.send :include, base::Matchers if defined?(base::Matchers)
    klass.send :extend,  base::Matchers if defined?(base::Matchers)
    klass.send :extend,  base::Macros   if defined?(base::Macros)
  end
end

dir = File.dirname(__FILE__)
require File.join(dir, 'remarkable_core', 'version')
require File.join(dir, 'remarkable_core', 'base')
require File.join(dir, 'remarkable_core', 'macros')
