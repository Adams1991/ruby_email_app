require 'test_helper'

class SentEmailTest < ActiveSupport::TestCase
  def setup
     @emailTemplate = EmailTemplate.create(subject: "Test Email", body: "We need to test if this saves")
     @sentEmail = SentEmail.create(recipient_name:'Bob', recipient_email: 'bob@example.com', subject: @emailTemplate.subject, body: @emailTemplate.body)
  end

  test 'if recipient_name is being saved' do
    result = SentEmail.find_by(recipient_name:'Bob')
    assert_equal 'Bob' , result.recipient_name
  end

  test 'if recipient_email is being saved' do
    result = SentEmail.find_by(recipient_email:'bob@example.com')
    assert_equal 'bob@example.com' , result.recipient_email
  end

  test 'if subject is being saved' do
    result = SentEmail.find_by(subject:'Test Email')
    assert_equal 'Test Email' , result.subject
  end

  test 'if body is being saved' do
    result = SentEmail.find_by(body:'We need to test if this saves')
    assert_equal 'We need to test if this saves' , result.body
  end

end
