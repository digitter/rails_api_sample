module Types
  class QueryType < Types::BaseObject
    field :books, [BookType, null: true], null: false do
      description 'fetch all books'
    end

    field :book, BookType, null: false do
      description 'find a book by id'
      argument :id, ID, required: true
    end

    def books
      Book.all
    end

    def book(id:)
      Book.find(id)
    end
  end
end

