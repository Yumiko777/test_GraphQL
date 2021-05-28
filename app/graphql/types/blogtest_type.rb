Types::BlogtestType = GraphQL::ObjectType.define do
  name "Blogtest"
  field :id, !types.ID
  field :title, !types.String
  field :text, !types.String
end
