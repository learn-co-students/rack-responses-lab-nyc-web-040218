require "date"
class Application

  def call(env)
    resp = Rack::Response.new
    now = Time.now
    hr = now.hour
    if hr >=12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end




end




#
