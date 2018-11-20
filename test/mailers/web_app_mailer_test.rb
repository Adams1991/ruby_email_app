require 'test_helper'

class WebAppMailerTest < ActionMailer::TestCase
  def setup
     @email = WebAppMailer.web_app_email("This is the body", "example@example.com", "this is the subject")
  end

  test 'email is not in queue when not sent' do
    assert ActionMailer::Base.deliveries.empty?
  end

  test 'email can be sent' do
    @email.deliver_now
    assert !ActionMailer::Base.deliveries.empty?
  end

  test 'sent email has correct contents' do
      @email.deliver_now
      assert_equal ['example@example.com'], @email.to
      assert_equal "this is the subject", @email.subject
      assert_equal "This is the body\n\n", @email.text_part.body.to_s 
  end

end
