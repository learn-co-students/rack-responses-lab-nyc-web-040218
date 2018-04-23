class Application
  def call(eval)
    resp = Rack::Response.new
    time = Time.now.strftime("%I:%M %p")
    period = time.split(" ")[1]
    resp.write period == "AM" ? "Morning" : "Afternoon"
    resp.finish
  end
end
