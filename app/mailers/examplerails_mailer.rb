class ExamplerailsMailer < ApplicationMailer
  default from: "zorasenat@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.examplerails_mailer.g.subject
  #
  def g
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.examplerails_mailer.mailer.subject
  #
  def mailer
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.examplerails_mailer.example_mailer.subject
  #
  def example_mailer
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
