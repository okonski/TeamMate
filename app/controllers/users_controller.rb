class UsersController < ApplicationController
  inherit_resources
  load_and_authorize_resource
  
  def new
    new! do |format|
      format.any do
        build_assoc
      end
    end
  end
  
  protected
    def build_assoc
      @user.build_profile
      @user.build_hardware
    end
end
