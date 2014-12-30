class CustomForms < ActionMailer::Base
  default from: "Star Bud <support@voroninstudio.eu>"
  default to: 	"nazariy.papizh@gmail.com"

  def call_order_data(name, phone, call_time_begin, call_time_end)
    @name = name
    @phone = phone
    @call_time_begin = call_time_begin
    @call_time_end = call_time_end
    to = []
    to = FeedbackEmail.first.email.split(',')
    mail(:template_path => 'notifications_mailer', :template_name => 'call_order', :subject => "Форма замовлення дзвінка...", to: to)
  end

  def order_product_data(brand, collection, product, name, phone, email, message)
    @brand = brand
    @collection = collection
    @product = product
    @name = name
    @phone = phone
    @email = email
    @message = message
    to = []
    to = FeedbackEmail.first.email.split(',')
    mail(:template_path => 'notifications_mailer', :template_name => 'order_product', :subject => "Замовлення товару...", to: to)
  end

end
