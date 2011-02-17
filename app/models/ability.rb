class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    unless user.admin?
      user.group.permissions.each do |permission|
        can permission.action.to_sym, permission.k.constantize, permission.options
      end
    else
      can :manage, :all
    end
  end
end
