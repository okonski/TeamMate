class Forum::ForumsController < ApplicationController
  inherit_resources
  defaults :resource_class => Forum::Forum, :collection_name => 'forums', :instance_name => 'forum'
end
