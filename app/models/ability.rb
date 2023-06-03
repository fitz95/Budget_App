class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, Group, user_id: user.id if user.present?
    can :mange, Entity, user: user if user.present?
    can :manage, group_entity, group: { user_id: user.id } if user.present?
  end
end
