class CommentsController < InheritedResources::Base
  nested_belongs_to :entry, :server, :polymorphic => true
  
  def create
    create! do |success, failure|
      success.any do
        @comment.author = current_user
        @comment.save
        redirect_to @comment.commentable
      end
      
      failure.any do
        redirect_to @entry, :error => "Your comment could not be saved."
      end
    end
  end
  
  def update
    update! do |success, failure|
      success.any do
        redirect_to @comment.commentable
      end
    
      failure.any do
        redirect_to @comment.commentable, :error => "Comment could not be updated."
      end
    end
  end
  
  def destroy
    destroy! do |success, failure|
      success.any do
        redirect_to @comment.commentable
      end
      
      failure.any do
        redirect_to @comment.commentable, :error => "Comment could not be deleted."
      end
    end
  end      
end
