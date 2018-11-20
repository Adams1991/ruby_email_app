require 'test_helper'

class WebAppMailerTest < ActionMailer::TestCase
  def setup
     @email = WebAppMailer.mail_method("This is the body", "example@example.com", "this is the subject").deliver_now
  end

  test 'email is sent' do
    assert !ActionMailer::Base.deliveries.empty?
  end

end
