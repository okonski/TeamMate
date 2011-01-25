class Forum::TopicsController < InheritedResources::Base
  defaults :resource_class => Forum::Topic, :collection_name => 'topics', :instance_name => 'topic'
end
