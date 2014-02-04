class Contact
#class Contact < MailForm::Base
  #attribute :name,      :validate => true
  #attribute :phone,     :validate => true
  #attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  #attribute :message
  #attribute :nickname,  :captcha  => true








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






  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  #def headers
  #  {
  #      :subject => "My Contact Form",
  #      :to => "nazariy.papizh@gmail.com",
  #      :from => %("#{name}" <#{email}>)
  #  }
  #end
end