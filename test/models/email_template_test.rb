require 'test_helper'

class EmailTemplateTest < ActiveSupport::TestCase
  def setup
     @emailTemplate = EmailTemplate.create(subject: "Test Email", body: "We need to test if this saves")
  end

  test 'if subject is being saved' do
    result = EmailTemplate.find_by(subject:'Test Email')
    assert_equal 'Test Email' , result.subject
  end

  test 'if body is being saved' do
    result = EmailTemplate.find_by(body:'We need to test if this saves')
    assert_equal 'We need to test if this saves' , result.body
  end

end
