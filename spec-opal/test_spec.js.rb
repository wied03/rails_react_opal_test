require 'spec_helper'
require 'foobars_view'

describe HelloMessage do
  subject { React.render_to_static_markup(React.create_element(App)) }
  
  it { is_expected.to eq '<div><span>Default greeting: Cool! John!</span></div>' }  
end