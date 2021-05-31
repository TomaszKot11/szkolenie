require 'test_helper'

class PostsControllerTest < ActionController::TestCase
    def setup 
        @post = posts(:post_one)
    end

    # GET #index
    test 'should get index' do
      get :index
      assert_response :success
      assert_not_nil assigns(:posts)
    end

    # GET #show
    test 'should get show' do 
        get :show, id: @post.id
        assert_response :success 
        assert_not_nil assigns(:post)
    end

    # GET #edit 
    test 'should get edit' do 
        get :edit, id: @post.id
        assert_response :success 
        assert_not_nil assigns(:post)
    end

    # GET #new
    test 'should get new' do 
        get :new, id: @post.id
        assert_response :success 
        assert_not_nil assigns(:post)
    end


    # PUT #update
    test 'should update post' do
        updated_content = 'Content updated'
        patch :update, id: @post.id, post: { content: updated_content } 
      
        assert_equal updated_content, @post.reload.content
    end

    test 'should render :edit when params invalid' do
        updated_content =  ''
        patch :update, id: @post.id, post: { content: updated_content }
      
        assert_template :edit
    end

    # POST #create
    test 'should create post with valid param' do
        post_content = 'post content'
      
        post :create, post: { content: post_content }

        assert_redirected_to posts_path 
    end

    test 'should render :new with invalid params' do 
        post_content = ''
      
        post :create, post: { content: post_content }

        assert_template :new
    end
end