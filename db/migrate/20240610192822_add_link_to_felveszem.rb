class AddLinkToFelveszem < ActiveRecord::Migration[7.0]
  def change
    add_column :felveszems, :link, :string
    add_column :felveszems, :active, :boolean, default: true
    add_column :felveszems, :sorrend, :integer
  end
end
