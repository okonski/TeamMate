SimpleNavigation::Configuration.run do |navigation|
  
  navigation.items do |primary|
    primary.dom_id = "nav"
    primary.item :home, "Home", root_url
    primary.item :forum, 'Forum', [:forum, :categories]
    primary.item :members, 'Roster', [:users]
    primary.item :servers, 'Servers', [:servers]
    primary.item :login, 'Login', [:new, :user_session]
    primary.item :login, 'Logout', [:destroy, :user_session]
    primary.item :entries, 'Entries', [:entries]
    
    
    primary.item :messages, 'Messages', [:messages] if current_user
    
  end
end
