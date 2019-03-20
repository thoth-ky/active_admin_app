class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == 'admin'
      can :manage, :all
    else
      can :manage, User, id: user.id
      can :manage, Article, author: user
    end
  end
end