

class Application
  def call(env)
    curr_time = Time.now.to_a
    resp = Rack::Response.new
    hour = curr_time[2]
    minute = curr_time[1]
    if hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
