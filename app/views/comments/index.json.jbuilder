json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :body, :Post_id
  json.url comment_url(comment, format: :json)
end
