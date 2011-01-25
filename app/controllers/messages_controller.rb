class MessagesController < InheritedResources::Base
  before_filter :authenticate_user!
  has_scope :read, :type => :boolean
  
  def show
    show! do |format|
      format.any do
        if current_user == @message.recipient
          @message.update_attributes(:read => true)
        end
      end
    end
  end
end
