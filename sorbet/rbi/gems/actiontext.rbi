# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actiontext/all/actiontext.rbi
#
# actiontext-6.0.1
module ActionText
  def self.railtie_helpers_paths; end
  def self.railtie_namespace; end
  def self.railtie_routes_url_helpers(include_path_helpers = nil); end
  def self.table_name_prefix; end
  def self.use_relative_model_naming?; end
  extend ActiveSupport::Autoload
end
module ActionText::Attachables
  extend ActiveSupport::Autoload
end
module ActionText::Attachments
  extend ActiveSupport::Autoload
end
class ActionText::Engine < Rails::Engine
end
module ActionText::Attachments::TrixConversion
  def to_trix_attachment(content = nil); end
  def trix_attachment_content; end
  extend ActiveSupport::Concern
end
module ActionText::Attachments::TrixConversion::ClassMethods
  def fragment_by_converting_trix_attachments(content); end
  def from_trix_attachment(trix_attachment); end
end
module ActionText::Attachments::Minification
  extend ActiveSupport::Concern
end
module ActionText::Attachments::Minification::ClassMethods
  def fragment_by_minifying_attachments(content); end
end
module ActionText::Attachments::Caching
  def cache_digest; end
  def cache_key(*args); end
end
class ActionText::Attachment
  def attachable; end
  def attachable_attributes; end
  def caption; end
  def full_attributes; end
  def initialize(node, attachable); end
  def inspect; end
  def method_missing(method, *args, &block); end
  def node; end
  def node_attributes; end
  def respond_to_missing?(name, include_private = nil); end
  def self.fragment_by_canonicalizing_attachments(content); end
  def self.from_attachable(attachable, attributes = nil); end
  def self.from_attachables(attachables); end
  def self.from_attributes(attributes, attachable = nil); end
  def self.from_node(node, attachable = nil); end
  def self.node_from_attributes(attributes); end
  def self.process_attributes(attributes); end
  def sgid_attributes; end
  def to_html; end
  def to_param(*args, &block); end
  def to_plain_text; end
  def to_s; end
  def with_full_attributes; end
  extend ActionText::Attachments::Minification::ClassMethods
  extend ActionText::Attachments::TrixConversion::ClassMethods
  include ActionText::Attachments::TrixConversion
end
module ActionText::Attribute
  extend ActiveSupport::Concern
end
module ActionText::Attribute::ClassMethods
  def has_rich_text(name); end
end