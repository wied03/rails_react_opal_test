require 'react'

class HelloMessage
  def render
    React.create_element('div') { 'Hello world' }
  end
end


Document.ready? do
  React.render(React.create_element(HelloMessage), `document.body`)
end