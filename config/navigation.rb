SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :login, 'Login', [:new, :user_session]
    primary.item :login, 'Logout', [:destroy, :user_session]
    primary.item :entries, 'Entries', [:entries]
    primary.item :servers, 'Servers', [:servers]
    primary.item :members, 'Members', [:users]
    primary.item :messages, 'Messages', [:messages] if current_user
    primary.item :forum, 'Forum', [:forum, :categories]
  end
end
