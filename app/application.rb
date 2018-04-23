class Application

  def call(env)
    resp = Rack::Response.new

    now = Time.now

    resp.write "#{now}\n"
    now_array = now.to_a
    hour = now_array[2]

    if hour <= 12
      resp.write "Good Morning!"
    elsif hour > 12
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
