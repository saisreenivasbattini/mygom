json.array!(@test_reqs) do |test_req|
  json.extract! test_req, :id, :req_type, :unit, :site, :start_date, :end_date, :notes
  json.url test_req_url(test_req, format: :json)
end
