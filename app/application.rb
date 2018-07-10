class Application
  def call(env)
    resp = Rack::Response.new
    
    current_time = Time.new
    if current_time.hour.to_i > 12
      resp.write "#{current_time.inspect}"
      resp.write "#{current_time.zone}"
      resp.write "Good Afternoon!"
    else
      resp.write "#{current_time.hour}"
      resp.write "Good Morning!"
    end
    
    resp.finish
  end
end