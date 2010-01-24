$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

framework 'Cocoa'

module Hotcocoa
  VERSION = '0.0.1'
  Views = {}
end

require 'hotcocoa/object_ext'
require 'hotcocoa/kernel_ext'
require 'hotcocoa/mappings'
require 'hotcocoa/behaviors'
require 'hotcocoa/mapping_methods'
require 'hotcocoa/mapper'
require 'hotcocoa/layout_view'
require 'hotcocoa/delegate_builder'
require 'hotcocoa/notification_listener'
require 'hotcocoa/data_sources/table_data_source'
require 'hotcocoa/data_sources/combo_box_data_source'
require 'hotcocoa/data_sources/outline_view_data_source'
require 'hotcocoa/plist'
require 'hotcocoa/kvo_accessors'
require 'hotcocoa/attributed_string'

HotCocoa::Mappings.reload