class Forum::CategoriesController < ApplicationController
  inherit_resources
  defaults :resource_class => Forum::Category, :collection_name => 'categories', :instance_name => 'category'
end
