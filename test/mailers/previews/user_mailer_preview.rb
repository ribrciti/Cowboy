# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/contactus
  def contactus
    UserMailer.contactus
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/newsletter
  def newsletter
    UserMailer.newsletter
  end

end
