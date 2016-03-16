require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Creative App"
    assert_equal full_title("Help"), "Help | Creative App"
  end
end


