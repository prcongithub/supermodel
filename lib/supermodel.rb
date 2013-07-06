gem "activesupport"
gem "activemodel"

require "active_support/core_ext/class/attribute_accessors"
require "active_support/core_ext/class/attribute"
require "active_support/core_ext/hash/indifferent_access"
require "active_support/core_ext/kernel/reporting"
require "active_support/core_ext/module/delegation"
require "active_support/core_ext/module/aliasing"
require "active_support/core_ext/object/blank"
require "active_support/core_ext/object/try"
require "active_support/core_ext/object/to_query"
require "active_support/json"

require "active_model"

module SuperModel
  class SuperModelError < StandardError; end
  class UnknownRecord < SuperModelError; end
  class InvalidRecord < SuperModelError; end
end

$:.unshift(File.dirname(__FILE__))

require "supermodel/ext/array"

require "supermodel/association"
require "supermodel/callbacks"
require "supermodel/observing"
require "supermodel/marshal"
require "supermodel/random_id"
require "supermodel/timestamp"
require "supermodel/validations"
require "supermodel/dirty"
require "supermodel/base"
require "supermodel/redis"
