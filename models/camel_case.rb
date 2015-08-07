class CamelCase < Sequel::Model
  one_to_many :likes, as: :likeable
end