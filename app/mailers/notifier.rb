# app/mailer/notifier.rb
class Notifier < ActionMailer::Base

  def support_notification(sender)
    @sender = sender
    mail(:to => "flavio.bordoni@htscs.com",
         :from => sender.email,
         :subject => "Sito HTSCS -> Support messaggio da #{sender.sender_name}")
 end
 
  def contact_notification(sender)
    @sender = sender
    mail(:to => "flavio.bordoni@htscs.com",
         :from => sender.email,
         :subject => "Sito HTSCS -> Contatti messaggio da #{sender.sender_name}")
 end
end
