class EntriesController < ApplicationController
  inherit_resources
  #before_filter :authenticate_user!
  authorize_resource
  
  def create
    create! do |success, failure|
      success.any do
        @entry.author = current_user
        @entry.save
        redirect_to @entry
      end
    end
  end
  
  def show
    show! do |format|
      format.html do
        render '_show'
      end
    end
  end
end
