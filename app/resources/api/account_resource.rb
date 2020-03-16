class Api::AccountResource < JSONAPI::Resource
  attributes :name, :subdomain

  singleton singleton_key: -> (context) {
    key = Account.first.id # Hardcoded to first record for simplicity
    raise JSONAPI::Exceptions::RecordNotFound.new(nil) if key.nil?
    key
  }
end
