SimpleNavigation::Configuration.run do |navigation|
  
  navigation.items do |primary|
    primary.dom_id = "nav"
    primary.item :home, "Home", root_url
    primary.item :forum, 'Forums', [:forums]
    primary.item :members, 'Roster', [:users]
    primary.item :servers, 'Servers', [:servers]
    if current_user
      primary.item :profile, 'Profile', [:edit, current_user]
      primary.item :login, 'Logout', [:destroy, :user_session]  
    else
      primary.item :login, 'Login', [:new, :user_session]
    end
  end
end
