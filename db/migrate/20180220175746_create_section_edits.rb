class CreateSectionEdits < ActiveRecord::Migration[5.1]
  def up
    create_table :section_edits do |t|

      t.timestamps
    end
  end

  def down
  	drop_table :section_edits
  end
end
