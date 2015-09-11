json.array!(@chunker_verbs) do |chunker_verb|
  json.extract! chunker_verb, :id, :name
  json.url chunker_verb_url(chunker_verb, format: :json)
end
