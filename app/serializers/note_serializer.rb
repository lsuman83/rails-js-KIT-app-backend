class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :created_at
end
