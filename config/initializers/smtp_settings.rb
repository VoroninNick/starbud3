ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "example.com",
    :user_name => "nazariy.papizh@gmail.com",
    :password => "secret",
    :authentication => "plain",
    :enable_starttls_auto => true
}