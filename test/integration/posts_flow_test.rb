require 'test_helper'

class PostsFlowTest < ActionDispatch::IntegrationTest  
  test 'post flow test' do
    get '/posts'
    assert_response :success
    assert_select 'h1', 'Tagi'

    post '/posts', post: { content: 'Blog content' } 
    assert_response :redirect
    follow_redirect!
    assert_response :success

    get '/posts/new'
    assert_select 'h1', 'Edytuj'
  end
end
