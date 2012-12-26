class CreateThanksgivings < ActiveRecord::Migration
  def change
    create_table :thanksgivings do |t|
      t.string :thanks

      t.timestamps
    end
  end
end
