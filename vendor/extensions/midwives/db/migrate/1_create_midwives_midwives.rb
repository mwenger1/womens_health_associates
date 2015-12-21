class CreateMidwivesMidwives < ActiveRecord::Migration

  def up
    create_table :refinery_midwives do |t|
      t.string :name
      t.string :title
      t.text :description
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-midwives"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/midwives/midwives"})
    end

    drop_table :refinery_midwives

  end

end
