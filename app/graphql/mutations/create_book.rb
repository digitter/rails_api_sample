module Mutations
  class CreateBook < BaseMutation
    field :book, Types::BookType, null: false

    argument :body, String, required: true
    argument :title, String, required: true

    def resolve(**attributes)
      # attributesには次のHashが渡ってきます。(attributesという名前以外でもOKです。)
      # {:body=>"GraphQL理解しないとGraphql-rubyわからんね", :title=>"GraphQLな奴"}
      book = Book.create!(attributes)
      { book: book }
    end
  end
end
