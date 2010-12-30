if ENV.include? 'GROUPS'
  puts "Creating default groups..."
  Group.destroy_all
  Group.create(:name => 'Administrators', :admin => true)
  g = Group.create(:name => 'Clan Members', :admin  => false)
  [[:manage, Entry]].each do |a|
    g.permissions.create(:action => a.first.to_sym, :klass => a.second.to_s)
  end
  
  if u = User.first
    puts "Assigning admin group to the first user"
    u.group = Group.where(:admin => true).first
    u.save
  end   
end
