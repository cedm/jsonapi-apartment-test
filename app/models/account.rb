class Account < ApplicationRecord
  after_create  :create_tenant
  after_destroy :drop_tenant

  validates :name, :subdomain, presence: true

  private

  # Create new tenant
  def create_tenant
    Apartment::Tenant.create(subdomain)
  end

  # Destroy tenant and associated database
  def drop_tenant
    Apartment::Tenant.drop(subdomain)
  end
end
