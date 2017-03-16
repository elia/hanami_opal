require 'tilt/opal'

# No other way to set a Tilt template's options from Hanami,
# will probably need a default options setting
module OpalTiltTemplateBuildEnabler
  def initialize(*args, &block)
    super
    @options[:build] = true
  end
  ::Opal::TiltTemplate.prepend self
end
