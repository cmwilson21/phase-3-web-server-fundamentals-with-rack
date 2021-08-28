require 'rack'
require 'pry'

class App
  def call(env)
    path = env["PATH_INFO"]
    if path == "/"
       [200, { "Content-Type" => "text/html"}, ["<p>Well how about that</p>"]]
    elsif path == "/potato"
      [200, { "Content-Tyle" => "text/html" }, ["<p>I like potatoes</p>"]]
    else
      [404, {"Content-Type" => "text/html"}, ["Not here!"]]
      
    end
  end
end

run App.new