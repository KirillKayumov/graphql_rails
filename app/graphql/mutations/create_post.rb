module Mutations
  class CreatePost < BaseMutation
    argument :title, String, required: true
    argument :text, String, required: true
    argument :user_id, ID, required: true

    type Types::Post

    def resolve(title:, text:, user_id:)
      Post.create!(
        title: title,
        text: text,
        user_id: user_id
      )
    end
  end
end
