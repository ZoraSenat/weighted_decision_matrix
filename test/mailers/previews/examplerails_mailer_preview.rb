# Preview all emails at http://localhost:3000/rails/mailers/examplerails_mailer
class ExamplerailsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/examplerails_mailer/g
  def g
    ExamplerailsMailer.g
  end

  # Preview this email at http://localhost:3000/rails/mailers/examplerails_mailer/mailer
  def mailer
    ExamplerailsMailer.mailer
  end

  # Preview this email at http://localhost:3000/rails/mailers/examplerails_mailer/example_mailer
  def example_mailer
    ExamplerailsMailer.example_mailer
  end

end
