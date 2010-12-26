class EntriesController < InheritedResources::Base
  before_filter :authenticate_user!
  authorize_resource
  
  def index
    index!
  end
  
  def create
    create! do |success, failure|
      success.any do
        @entry.author = current_user
        @entry.save
        redirect_to @entry
      end
    end
  end
end
