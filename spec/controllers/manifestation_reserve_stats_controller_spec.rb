require 'spec_helper'
require 'sunspot/rails/spec_helper'

describe ManifestationReserveStatsController do
  fixtures :all
  disconnect_sunspot

  def valid_attributes
    FactoryGirl.attributes_for(:manifestation_reserve_stat)
  end

  describe "GET index" do
    before(:each) do
      FactoryGirl.create(:manifestation_reserve_stat)
    end

    describe "When logged in as Administrator" do
      login_admin

      it "assigns all manifestation_reserve_stats as @manifestation_reserve_stats" do
        get :index
        assigns(:manifestation_reserve_stats).should eq(ManifestationReserveStat.all)
      end
    end

    describe "When logged in as Librarian" do
      login_librarian

      it "assigns all manifestation_reserve_stats as @manifestation_reserve_stats" do
        get :index
        assigns(:manifestation_reserve_stats).should eq(ManifestationReserveStat.all)
      end
    end

    describe "When logged in as User" do
      login_user

      it "assigns all manifestation_reserve_stats as @manifestation_reserve_stats" do
        get :index
        assigns(:manifestation_reserve_stats).should eq(ManifestationReserveStat.all)
      end
    end

    describe "When not logged in" do
      it "should not assign manifestation_reserve_stats as @manifestation_reserve_stats" do
        get :index
        assigns(:manifestation_reserve_stats).should eq(ManifestationReserveStat.all)
      end
    end
  end

  describe "GET show" do
    describe "When logged in as Administrator" do
      login_admin

      it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
        get :show, :id => manifestation_reserve_stat.id
        assigns(:manifestation_reserve_stat).should eq(manifestation_reserve_stat)
      end
    end

    describe "When logged in as Librarian" do
      login_librarian

      it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
        get :show, :id => manifestation_reserve_stat.id
        assigns(:manifestation_reserve_stat).should eq(manifestation_reserve_stat)
      end
    end

    describe "When logged in as User" do
      login_user

      it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
        get :show, :id => manifestation_reserve_stat.id
        assigns(:manifestation_reserve_stat).should eq(manifestation_reserve_stat)
      end
    end

    describe "When not logged in" do
      it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
        get :show, :id => manifestation_reserve_stat.id
        assigns(:manifestation_reserve_stat).should eq(manifestation_reserve_stat)
      end
    end
  end

  describe "GET new" do
    describe "When logged in as Administrator" do
      login_admin

      it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        get :new
        assigns(:manifestation_reserve_stat).should_not be_valid
      end
    end

    describe "When logged in as Librarian" do
      login_librarian

      it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        get :new
        assigns(:manifestation_reserve_stat).should_not be_valid
      end
    end

    describe "When logged in as User" do
      login_user

      it "should not assign the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        get :new
        assigns(:manifestation_reserve_stat).should_not be_valid
        response.should be_forbidden
      end
    end

    describe "When not logged in" do
      it "should not assign the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        get :new
        assigns(:manifestation_reserve_stat).should_not be_valid
        response.should redirect_to(new_user_session_url)
      end
    end
  end

  describe "GET edit" do
    describe "When logged in as Administrator" do
      login_admin

      it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
        get :edit, :id => manifestation_reserve_stat.id
        assigns(:manifestation_reserve_stat).should eq(manifestation_reserve_stat)
      end
    end

    describe "When logged in as Librarian" do
      login_librarian

      it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
        get :edit, :id => manifestation_reserve_stat.id
        assigns(:manifestation_reserve_stat).should eq(manifestation_reserve_stat)
      end
    end

    describe "When logged in as User" do
      login_user

      it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
        get :edit, :id => manifestation_reserve_stat.id
        response.should be_forbidden
      end
    end

    describe "When not logged in" do
      it "should not assign the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
        manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
        get :edit, :id => manifestation_reserve_stat.id
        response.should redirect_to(new_user_session_url)
      end
    end
  end

  describe "POST create" do
    before(:each) do
      @attrs = valid_attributes
      @invalid_attrs = {:start_date => ''}
    end

    describe "When logged in as Administrator" do
      login_admin

      describe "with valid params" do
        it "assigns a newly created manifestation_reserve_stat as @manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @attrs
          assigns(:manifestation_reserve_stat).should be_valid
        end

        it "redirects to the created manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @attrs
          response.should redirect_to(manifestation_reserve_stat_url(assigns(:manifestation_reserve_stat)))
        end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved manifestation_reserve_stat as @manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @invalid_attrs
          assigns(:manifestation_reserve_stat).should_not be_valid
        end

        it "re-renders the 'new' template" do
          post :create, :manifestation_reserve_stat => @invalid_attrs
          response.should render_template("new")
        end
      end
    end

    describe "When logged in as Librarian" do
      login_librarian

      describe "with valid params" do
        it "assigns a newly created manifestation_reserve_stat as @manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @attrs
          assigns(:manifestation_reserve_stat).should be_valid
        end

        it "redirects to the created manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @attrs
          response.should redirect_to(manifestation_reserve_stat_url(assigns(:manifestation_reserve_stat)))
        end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved manifestation_reserve_stat as @manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @invalid_attrs
          assigns(:manifestation_reserve_stat).should_not be_valid
        end

        it "re-renders the 'new' template" do
          post :create, :manifestation_reserve_stat => @invalid_attrs
          response.should render_template("new")
        end
      end
    end

    describe "When logged in as User" do
      login_user

      describe "with valid params" do
        it "assigns a newly created manifestation_reserve_stat as @manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @attrs
          assigns(:manifestation_reserve_stat).should be_valid
        end

        it "should be forbidden" do
          post :create, :manifestation_reserve_stat => @attrs
          response.should be_forbidden
        end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved manifestation_reserve_stat as @manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @invalid_attrs
          assigns(:manifestation_reserve_stat).should_not be_valid
        end

        it "should be forbidden" do
          post :create, :manifestation_reserve_stat => @invalid_attrs
          response.should be_forbidden
        end
      end
    end

    describe "When not logged in" do
      describe "with valid params" do
        it "assigns a newly created manifestation_reserve_stat as @manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @attrs
          assigns(:manifestation_reserve_stat).should be_valid
        end

        it "should be forbidden" do
          post :create, :manifestation_reserve_stat => @attrs
          response.should redirect_to(new_user_session_url)
        end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved manifestation_reserve_stat as @manifestation_reserve_stat" do
          post :create, :manifestation_reserve_stat => @invalid_attrs
          assigns(:manifestation_reserve_stat).should_not be_valid
        end

        it "should be forbidden" do
          post :create, :manifestation_reserve_stat => @invalid_attrs
          response.should redirect_to(new_user_session_url)
        end
      end
    end
  end

  describe "PUT update" do
    before(:each) do
      @manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
      @attrs = valid_attributes
      @invalid_attrs = {:start_date => ''}
    end

    describe "When logged in as Administrator" do
      login_admin

      describe "with valid params" do
        it "updates the requested manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @attrs
        end

        it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @attrs
          assigns(:manifestation_reserve_stat).should eq(@manifestation_reserve_stat)
        end
      end

      describe "with invalid params" do
        it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @invalid_attrs
          response.should render_template("edit")
        end
      end
    end

    describe "When logged in as Librarian" do
      login_librarian

      describe "with valid params" do
        it "updates the requested manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @attrs
        end

        it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @attrs
          assigns(:manifestation_reserve_stat).should eq(@manifestation_reserve_stat)
          response.should redirect_to(@manifestation_reserve_stat)
        end
      end

      describe "with invalid params" do
        it "assigns the manifestation_reserve_stat as @manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat, :manifestation_reserve_stat => @invalid_attrs
          assigns(:manifestation_reserve_stat).should_not be_valid
        end

        it "re-renders the 'edit' template" do
          put :update, :id => @manifestation_reserve_stat, :manifestation_reserve_stat => @invalid_attrs
          response.should render_template("edit")
        end
      end
    end

    describe "When logged in as User" do
      login_user

      describe "with valid params" do
        it "updates the requested manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @attrs
        end

        it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @attrs
          assigns(:manifestation_reserve_stat).should eq(@manifestation_reserve_stat)
          response.should be_forbidden
        end
      end

      describe "with invalid params" do
        it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @invalid_attrs
          response.should be_forbidden
        end
      end
    end

    describe "When not logged in" do
      describe "with valid params" do
        it "updates the requested manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @attrs
        end

        it "should be forbidden" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @attrs
          response.should redirect_to(new_user_session_url)
        end
      end

      describe "with invalid params" do
        it "assigns the requested manifestation_reserve_stat as @manifestation_reserve_stat" do
          put :update, :id => @manifestation_reserve_stat.id, :manifestation_reserve_stat => @invalid_attrs
          response.should redirect_to(new_user_session_url)
        end
      end
    end
  end

  describe "DELETE destroy" do
    before(:each) do
      @manifestation_reserve_stat = FactoryGirl.create(:manifestation_reserve_stat)
    end

    describe "When logged in as Administrator" do
      login_admin

      it "destroys the requested manifestation_reserve_stat" do
        delete :destroy, :id => @manifestation_reserve_stat.id
      end

      it "redirects to the manifestation_reserve_stats list" do
        delete :destroy, :id => @manifestation_reserve_stat.id
        response.should redirect_to(manifestation_reserve_stats_url)
      end
    end

    describe "When logged in as Librarian" do
      login_librarian

      it "destroys the requested manifestation_reserve_stat" do
        delete :destroy, :id => @manifestation_reserve_stat.id
      end

      it "redirects to the manifestation_reserve_stats list" do
        delete :destroy, :id => @manifestation_reserve_stat.id
        response.should redirect_to(manifestation_reserve_stats_url)
      end
    end

    describe "When logged in as User" do
      login_user

      it "destroys the requested manifestation_reserve_stat" do
        delete :destroy, :id => @manifestation_reserve_stat.id
      end

      it "should be forbidden" do
        delete :destroy, :id => @manifestation_reserve_stat.id
        response.should be_forbidden
      end
    end

    describe "When not logged in" do
      it "destroys the requested manifestation_reserve_stat" do
        delete :destroy, :id => @manifestation_reserve_stat.id
      end

      it "should be forbidden" do
        delete :destroy, :id => @manifestation_reserve_stat.id
        response.should redirect_to(new_user_session_url)
      end
    end
  end
end