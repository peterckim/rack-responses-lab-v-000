class Application
  def call(env)
    resp = Rack::Response.new
    
    current_time = Time.new
    if current_time.hour.to_i < 12
      resp.write "Good hi!"
    else
      resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
end