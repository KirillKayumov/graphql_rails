module Resolvers
  class Users < BaseResolver
    type [Types::User], null: false

    def resolve
      User.all.order(:id)
    end
  end
end
