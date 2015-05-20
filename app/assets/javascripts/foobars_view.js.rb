require 'react'

class HelloMessage
  def initialize(props)
    puts props
  end

  def component_will_mount
    puts "will mount!"
  end

  def render
    React.create_element("div") { "Hello #{self.props[:name]}!" }
  end
end


Document.ready? do
  React.render(React.create_element(HelloMessage, name: 'John'), `document.body`)
end