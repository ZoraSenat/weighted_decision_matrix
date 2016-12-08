require 'test_helper'

class ExamplerailsMailerTest < ActionMailer::TestCase
  test "g" do
    mail = ExamplerailsMailer.g
    assert_equal "G", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "mailer" do
    mail = ExamplerailsMailer.mailer
    assert_equal "Mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "example_mailer" do
    mail = ExamplerailsMailer.example_mailer
    assert_equal "Example mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
