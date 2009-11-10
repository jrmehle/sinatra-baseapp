%w{ rubygems sinatra helpers }.each do |lib|
  require lib
end

helpers do
  include Helpers
end

