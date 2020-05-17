json.extract! comment, :id, :body, :upvotes, :downvotes, :deleted, :edit_timestamp, :created_at, :updated_at
json.url comment_url(comment, format: :json)
