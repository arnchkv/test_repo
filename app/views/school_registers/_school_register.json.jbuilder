json.extract! school_register, :id, :roll, :name, :age, :created_at, :updated_at
json.url school_register_url(school_register, format: :json)
