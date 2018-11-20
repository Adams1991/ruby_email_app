require 'test_helper'

class SentEmailTest < ActiveSupport::TestCase
  def setup
     @sentEmail = SentEmail.create(recipient_name:'Bob', recipient_email: 'bob@example.com', subject: "Test Email", body: "We need to test if this saves")
  end

  test 'if recipient_name is being saved' do
    result = SentEmail.find_by(recipient_name:'Bob')
    assert_equal 'Bob' , result.recipient_name
  end

end
