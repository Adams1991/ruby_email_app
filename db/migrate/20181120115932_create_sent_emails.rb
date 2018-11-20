class CreateSentEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :sent_emails do |t|
      t.string :recipient_name
      t.string :recipient_email
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
