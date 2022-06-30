# The path to Ruby Enlightenment starts with the following:

$LOAD_PATH << File.dirname(__FILE__)

require 'about_true_and_false'
require 'about_arrays'
require 'about_methods'
require 'about_iteration'
require 'about_classes'
require 'about_modules'
in_ruby_version("2", "3") do
    require 'about_keyword_arguments'
  end
