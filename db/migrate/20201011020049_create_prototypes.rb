class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title,        null: false
      t.text :catch_copy,     null: false
      t.text :concept,        null: false
      t.references :user, foreign_key: true
      #user_idはusersテーブルのidが主キーであり、prototypesテーブルと
      #関連性をもつ場合に必要なカラムです
      t.timestamps
    end
  end
end
