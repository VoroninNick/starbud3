# -*- encoding : utf-8 -*-
class Contact
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :phone, :email, :message, :nickname

  validates :name, :phone, :email, :message, :nickname, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end