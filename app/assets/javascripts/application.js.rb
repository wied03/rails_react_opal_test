require 'opal'
require 'opal_ujs'
# Handles the opalrb->JS part, but does NOT run the code
require_tree '.'
require 'react-with-addons'
# Contains stuff that actually runs the code
require 'opal_application'