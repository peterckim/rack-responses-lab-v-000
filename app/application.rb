class Application
  def call(env)
    resp = Rack::Response.new
    
    current_time = Time.new
    if current_time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Goof Afternoon!"
    end
    
    resp.finish
  end
end