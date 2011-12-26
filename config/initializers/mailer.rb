# config/initializers/mailer.rb
ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
:enable_starttls_auto => true,
:address => 'smtp.gmail.com',
:port => 587,
:domain => "htscs.com",
:user_name => 'flavio.bordoni@htscs.com',
:password => '2001onsfb',
:authentication => 'plain',
}
