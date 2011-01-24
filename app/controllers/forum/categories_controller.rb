class Forum::CategoriesController < InheritedResources::Base
  defaults :resource_class => Forum::Category, :collection_name => 'categories', :instance_name => 'category'
end
