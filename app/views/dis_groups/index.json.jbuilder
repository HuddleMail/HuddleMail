json.array!(@dis_groups) do |dis_group|
  json.extract! dis_group, :id, :disname
  json.url dis_group_url(dis_group, format: :json)
end
