# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.admin
      can :manage, :Creation
    else
      can :manage, Purchase, user_id: user.id
      can :read, Creation
    end
  end
end
