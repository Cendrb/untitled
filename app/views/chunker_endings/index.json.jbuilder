json.array!(@chunker_endings) do |chunker_ending|
  json.extract! chunker_ending, :id, :name
  json.url chunker_ending_url(chunker_ending, format: :json)
end
