class Ability
  include CanCan::Ability

  def initialize(user)
    unless user.group.admin
      user.group.permissions.each do |permission|
        can permission.action.to_sym, permission.k.constantize
      end
    else
      can :manage, :all
    end
  end
end
