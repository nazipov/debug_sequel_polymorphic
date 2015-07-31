class Like < Sequel::Model
  many_to_one :likeable, polymorphic: true
  many_to_one :user
end