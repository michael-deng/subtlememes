class AddMemesTags < ActiveRecord::Migration[5.2]
  def change
    create_table :memes_tags, id: false do |t|
      t.belongs_to :meme, index: true
      t.belongs_to :tag, index: true
    end
  end
end
