require 'test_helper'

module Admin
  class ArticlesControllerTest < ActionController::TestCase
    setup do
      @article = articles(:one)
    end

    test 'should get index' do
      get :index
      assert_response :success
      assert_not_nil assigns(:articles)
    end

    test 'should get new' do
      get :new
      assert_response :success
    end

    test 'should create article' do
      assert_difference('Article.count') do
        post :create, article: { content: @article.content, title: @article.title }
      end

      assert_redirected_to admin_articles_path
    end

    test 'should get edit' do
      get :edit, id: @article
      assert_response :success
    end

    test 'should update article' do
      patch :update, id: @article, article: { content: @article.content, title: @article.title }
      assert_redirected_to admin_articles_path
    end

    test 'should destroy article' do
      assert_difference('Article.count', -1) do
        delete :destroy, id: @article
      end

      assert_redirected_to admin_articles_path
    end
  end
end
