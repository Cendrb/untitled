json.array!(@chunker_subjects) do |chunker_subject|
  json.extract! chunker_subject, :id, :name
  json.url chunker_subject_url(chunker_subject, format: :json)
end
