SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :login, 'Login', new_user_session_path
    primary.item :login, 'Logout', destroy_user_session_path
  end
end
