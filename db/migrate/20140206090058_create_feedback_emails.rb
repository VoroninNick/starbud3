class CreateFeedbackEmails < ActiveRecord::Migration
  def change
    create_table :feedback_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
