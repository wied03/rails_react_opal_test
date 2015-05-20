require 'opal'
require 'opal_ujs'
# Handles the opalrb->JS part, but does NOT run the code
require_tree '.'
# Contains stuff that actually runs the code
require 'react-with-addons'
require 'opal_application'