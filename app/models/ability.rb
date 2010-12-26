class Ability
  include CanCan::Ability

  def initialize(user)
    unless user.group.type == 1
      user.group.permissions.each do |permission|
        can permission.action.to_sym, permission.subject_class.constantize
      end
    else
      can :manage, :all
    end
  end
end
