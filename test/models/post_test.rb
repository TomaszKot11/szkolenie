require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'valid post' do
    post = Post.new(content: 'Lorem ipsum')
    assert post.valid?
  end

  test 'invalid post' do
    post = Post.new
    assert_not post.valid?
  end
end