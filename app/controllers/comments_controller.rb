class CommentsController < InheritedResources::Base
  nested_belongs_to :entry
  
  def create
    create! do |success, failure|
      success.any do
        @comment.author = current_user
        @comment.entry = @entry
        @comment.save
        redirect_to @entry
      end
      
      failure.any do
        redirect_to @entry, :error => "Your comment could not be saved."
      end
    end
  end
end
