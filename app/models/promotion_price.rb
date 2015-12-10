# t.string :type
# t.string :title
# t.date :custom_date
# t.text :comment
# t.boolean :published
# t.integer :position
# t.attachment :price

class PromotionPrice < ActiveRecord::Base
  attr_accessible *attribute_names
  attr_accessible :price
  has_attached_file :price

  validates_attachment_content_type :price,
                                    :content_type => %w(application/pdf application/msword application/vnd.ms-office application/vnd.ms-excel application/vnd.openxmlformats-officedocument.spreadsheetml.sheet),
                                    :if => :file_attached?

  validates_attachment_size :price, :less_than => 30.megabytes

  def file_attached?
    self.price.file?
  end

  def set_custom_date
    self.custom_date ||= Date.today
  end
  before_save :set_custom_date
end
