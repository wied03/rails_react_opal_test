require 'react'

class HelloMessage
  include React::Component
  
  MSG = {great: 'Cool!', bad: 'Cheer up!'}

  define_state(:foo) { "Default greeting" }
  
  before_mount do
    self.foo = "#{self.foo}: #{MSG[params[:mood]]}"
  end

  after_mount :log

  def log
    puts "mounted!"
  end

  def render
    div do
      span { self.foo + " #{params[:name]}!" }
    end
  end
end

class App
  include React::Component

  def render
    present HelloMessage, name: 'John', mood: 'great'
  end
end

Document.ready? do
  React.render(React.create_element(App), `document.body`)
end