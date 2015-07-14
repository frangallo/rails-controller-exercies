require 'addressable/uri'
require 'rest-client'

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json',
  ).to_s

  puts RestClient.post(url, { user: {name: "Lisa", email: "lmid" } } )
end

def create_bad_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json',
  ).to_s

  begin
    puts RestClient.post(url, { user: {name: "Lisa" } } )
  rescue
    RestClient::Exception
    puts "Error rescued"
  end
end

def show_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1.json',
  ).to_s

  puts RestClient.get(url)
end

def update_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1.json',
  ).to_s

  puts RestClient.put(url, {user: {name: "Francesco G."}})
end

def destroy_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1.json',
  ).to_s

  puts RestClient.delete(url)
end

# # show_user
destroy_user
# update_user
