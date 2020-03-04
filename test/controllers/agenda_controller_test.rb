require 'test_helper'

class AgendaControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect when trying to connect agenda index without logging in" do
    get agenda_index_url
    assert_response :redirect
  end

end
