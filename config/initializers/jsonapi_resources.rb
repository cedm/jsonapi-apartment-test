# Patch to work with Apartment gem. Uncomment to enable.
# JSONAPI::BasicResource.class_eval do
#   def self._table_name
#     @_table_name ||= _model_class.respond_to?(:table_name) ? _model_class.table_name.partition('.').last : _model_name.tableize
#   end
# end
