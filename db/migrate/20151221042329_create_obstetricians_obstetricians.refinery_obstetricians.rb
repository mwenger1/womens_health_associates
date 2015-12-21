# This migration comes from refinery_obstetricians (originally 1)
class CreateObstetriciansObstetricians < ActiveRecord::Migration

  def up
    create_table :refinery_obstetricians do |t|
      t.string :name
      t.string :title
      t.text :description
      t.text :quote
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-obstetricians"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/obstetricians/obstetricians"})
    end

    drop_table :refinery_obstetricians

  end

end
