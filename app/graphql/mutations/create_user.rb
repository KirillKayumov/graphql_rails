module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: false, default_value: "Kirill"
    argument :email, String, required: true

    type Types::User

    def resolve(name:, email:)
      User.create!(name: name, email: email)
    end
  end
end
