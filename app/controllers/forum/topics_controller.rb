class Forum::TopicsController < InheritedResources::Base
  defaults :resource_class => Forum::Topic, :collection_name => 'topics', :instance_name => 'topic'
  nested_belongs_to :category, :parent_class => Forum::Category, :param => :category_id
end
