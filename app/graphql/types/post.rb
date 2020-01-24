module Types
  class Post < BaseObject
    field :title, String, null: false
    field :text, String, null: false
  end
end
