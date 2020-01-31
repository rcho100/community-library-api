class GrabSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :book_id, :created_at
  belongs_to :user
  belongs_to :book
end
