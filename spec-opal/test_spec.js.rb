require 'spec_helper'
require 'foobars_view'

describe HelloMessage do
  it 'works' do
    
    result = React.render_to_static_markup(React.create_element(App))
    
    result.should == '<div><span>Default greeting: Cool! John!</span></div>'
  end
end