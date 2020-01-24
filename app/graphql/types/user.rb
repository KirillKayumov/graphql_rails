module Types
  class User < BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: false

    field :posts, [Post], null: false

    def posts
      Loaders::AssociationLoader.for(::User, :posts).load(object)
    end
  end
end
