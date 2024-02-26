class AddSubdomainToSearches < ActiveRecord::Migration[7.1]
  def change
    add_column :searches, :subdomain, :string, array: true, default: []
  end
end
