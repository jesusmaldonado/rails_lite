# require 'webrick'
#
# # http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick.html
# # http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick/HTTPRequest.html
# # http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick/HTTPResponse.html
# # http://www.ruby-doc.org/stdlib-2.0/libdoc/webrick/rdoc/WEBrick/Cookie.html
#
#
# server = WEBrick::HTTPServer.new(Port: 3000)
# trap('INT') { server.shutdown}
#
#
# server.mount_proc '/' do |req, res|
#   # res.body = req.inspect
#   cookie = req.cookies.find { |cookie| cookie.name == "tommy" }
#   cookie = WEBrick::Cookie.new("tommy", cookie.value + "5")
#
#   # cookie = WEBrick::Cookie.new("tommy", "magic")
#   # res.cookies << cookie
#   res.body = "#{req.cookies}"
#
#   # res.status = 302
#   # res["Location"] ="http://google.com"
    res[]
    res["Content-Type"] = "text/html"
# end
#
# server.start


class TripPlanner
  def jet_ski
    puts "jet skiing"
  end

  def snowboarding
    puts "snowboarding"
  end

  def do_activity(&prc)
    instance_eval(&prc)
  end

end

tp = TripPlanner.new



tp.do_activity do

  jet_ski
  snowboarding
end
