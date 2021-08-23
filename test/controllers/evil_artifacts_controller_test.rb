require 'test_helper'

class EvilArtifactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get evil_artifacts_index_url
    assert_response :success
  end

end
