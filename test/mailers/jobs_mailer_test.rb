require 'test_helper'

class JobsMailerTest < ActionMailer::TestCase
  test "weekly_jobs" do
    mail = JobsMailer.weekly_jobs
    assert_equal "Weekly jobs", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
