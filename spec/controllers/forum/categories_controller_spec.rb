require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe Forum::CategoriesController do

  def mock_category(stubs={})
    @mock_category ||= mock_model(Forum::Category, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all forum_categories as @forum_categories" do
      Forum::Category.stub(:all) { [mock_category] }
      get :index
      assigns(:forum_categories).should eq([mock_category])
    end
  end

  describe "GET show" do
    it "assigns the requested category as @category" do
      Forum::Category.stub(:find).with("37") { mock_category }
      get :show, :id => "37"
      assigns(:category).should be(mock_category)
    end
  end

  describe "GET new" do
    it "assigns a new category as @category" do
      Forum::Category.stub(:new) { mock_category }
      get :new
      assigns(:category).should be(mock_category)
    end
  end

  describe "GET edit" do
    it "assigns the requested category as @category" do
      Forum::Category.stub(:find).with("37") { mock_category }
      get :edit, :id => "37"
      assigns(:category).should be(mock_category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created category as @category" do
        Forum::Category.stub(:new).with({'these' => 'params'}) { mock_category(:save => true) }
        post :create, :category => {'these' => 'params'}
        assigns(:category).should be(mock_category)
      end

      it "redirects to the created category" do
        Forum::Category.stub(:new) { mock_category(:save => true) }
        post :create, :category => {}
        response.should redirect_to(forum_category_url(mock_category))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved category as @category" do
        Forum::Category.stub(:new).with({'these' => 'params'}) { mock_category(:save => false) }
        post :create, :category => {'these' => 'params'}
        assigns(:category).should be(mock_category)
      end

      it "re-renders the 'new' template" do
        Forum::Category.stub(:new) { mock_category(:save => false) }
        post :create, :category => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested category" do
        Forum::Category.stub(:find).with("37") { mock_category }
        mock_forum_category.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :category => {'these' => 'params'}
      end

      it "assigns the requested category as @category" do
        Forum::Category.stub(:find) { mock_category(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:category).should be(mock_category)
      end

      it "redirects to the category" do
        Forum::Category.stub(:find) { mock_category(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(forum_category_url(mock_category))
      end
    end

    describe "with invalid params" do
      it "assigns the category as @category" do
        Forum::Category.stub(:find) { mock_category(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:category).should be(mock_category)
      end

      it "re-renders the 'edit' template" do
        Forum::Category.stub(:find) { mock_category(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested category" do
      Forum::Category.stub(:find).with("37") { mock_category }
      mock_forum_category.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the forum_categories list" do
      Forum::Category.stub(:find) { mock_category }
      delete :destroy, :id => "1"
      response.should redirect_to(forum_categories_url)
    end
  end

end
