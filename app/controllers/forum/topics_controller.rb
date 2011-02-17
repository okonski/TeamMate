class Forum::TopicsController < ApplicationController
  inherit_resources
  defaults :resource_class => Forum::Topic, :collection_name => 'topics', :instance_name => 'topic'
end
