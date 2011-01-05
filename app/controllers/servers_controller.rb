class ServersController < InheritedResources::Base
  authorize_resource
  
  def show
    show! do |format|
      format.html do
        render '_show'
      end
    end
  end
end
