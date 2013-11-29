# This migration comes from likeable (originally 20131129040453)
class CreateLikeableLikes < ActiveRecord::Migration
  def change
    create_table :likeable_likes do |t|
      t.references :liker, polymorphic: true, index: true
      t.references :likeable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
