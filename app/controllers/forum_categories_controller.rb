class ForumCategoriesController < ApplicationController
  inherit_resources
  defaults :resource_class => ForumCategory, :collection_name => 'categories', :instance_name => 'category'
end
