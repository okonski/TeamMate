class UsersController < InheritedResources::Base
  def new
    new! do |format|
      format.any do
        build_assoc
      end
    end
  end
  
  def create
    create! do |success, failure|
      failure.any do
        build_assoc
        render :action => :new
      end
    end
  end
  
  def edit
    edit! do |format|
      format.any do
        build_assoc
      end
    end
  end
  
  def update
    update! do |success, failure|
      success.any do
        redirect_to @user, :notice => "User was updated."
      end
      
      failure.any do
        build_assoc
        render :action => :edit
      end
    end
  end
  
  protected
    def build_assoc
      @user.build_profile
      @user.build_hardware
    end
end
