# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
      return unless user.present?
      can :read, :all
      can :manage, Registration, user_id: user.id
      return unless user.admin?
      can :manage, :all
  end
end
