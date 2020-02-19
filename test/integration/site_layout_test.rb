require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do
	get '/home'
	assert_template 'static_pages/home'
	assert_select "a[href=?]", 'home', count: 2
	assert_select "a[href=?]", 'help'
	assert_select "a[href=?]", 'about'
	assert_select "a[href=?]", 'contact'
	end
end
