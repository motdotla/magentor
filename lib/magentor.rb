# Ruby wrapper for the magentor api
#
# Author::    Preston Stuteville  (mailto:preston.stuteville@gmail.com)
# License::   MIT
#
# Inspiration from the Magentor plugin from Tim Matheson (http://github.com/timmatheson/Magentor) 

require "active_support/inflector"
require "logger"
require 'xmlrpc/client'

XMLRPC::Config.send(:remove_const, :ENABLE_NIL_PARSER)
XMLRPC::Config.send(:const_set, :ENABLE_NIL_PARSER, true)
XMLRPC::Config.send(:remove_const, :ENABLE_NIL_CREATE)
XMLRPC::Config.send(:const_set, :ENABLE_NIL_CREATE, true)

require 'magentor/connection'
require 'magentor/base'
require 'magentor/version'

module Magentor
  def self.version_string
    "Magentor version #{Magentor::VERSION}"
  end

  autoload :CategoryAttribute,   "magentor/category_attribute"
  autoload :Category,            "magentor/category"
  autoload :Country,             "magentor/country"
  autoload :CustomerAddress,     "magentor/customer_address"
  autoload :CustomerGroup,       "magentor/customer_group"
  autoload :Customer,            "magentor/customer"
  autoload :Inventory,           "magentor/inventory"
  autoload :Invoice,             "magentor/invoice"
  autoload :OrderItem,           "magentor/order_item"
  autoload :Order,               "magentor/order"
  autoload :ProductAttribute,    "magentor/product_attribute"
  autoload :ProductAttributeSet, "magentor/product_attribute_set"
  autoload :ProductLink,         "magentor/product_link"
  autoload :ProductMedia,        "magentor/product_media"
  autoload :Product,             "magentor/product"
  autoload :ProductStock,        "magentor/product_stock"
  autoload :ProductTierPrice,    "magentor/product_tier_price"
  autoload :ProductType,         "magentor/product_type"
  autoload :Region,              "magentor/region"
  autoload :Shipment,            "magentor/shipment"
end
