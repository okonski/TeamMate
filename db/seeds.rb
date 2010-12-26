if ENV.include? 'GROUPS'
  Group.destroy_all
  Group.create(:name => 'Administrators', :g_type => 1)
  g = Group.create(:name => 'Clan Members', :g_type => 2)
  [[:manage, Entry]].each do |a|
    g.permissions.create(:action => a.first.to_sym, :subject_class => a.second.to_s)
  end
end
