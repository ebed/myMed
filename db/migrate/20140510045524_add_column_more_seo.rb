class AddColumnMoreSeo < ActiveRecord::Migration
  def change
  	add_column :customers, :seo_url, :string
  end
end
