require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
 
  test "should get home" do
  	# Let’s test the Home page by issuing a GET request to the home action and 
  	# then making sure we receive a ‘success’ status code in response
    get :home
    assert_response :success
    # the assert_select method which 
    # lets us test for the presence of a particular HTML tag
    assert_select "title", "Home | This is where it Starts"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | This is where it Starts"
  end

  test "should get about" do
  	get :about
  	assert_response :success
  	assert_select "title", "About | This is where it Starts"
	end

end
