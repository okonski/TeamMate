class EntriesController < InheritedResources::Base
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
