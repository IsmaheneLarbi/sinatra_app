require "sinatra"
require "erb"

get "/" do
    "You made it this far :)"
end

get "/hello/:name" do
    # default name for layout is layout, so true is enough
    # erb :hello, {:locals => params, :layout => true}
    # you can omit it altogether if layout file name is layout in views/
    erb :hello, {:locals => params}
    # mention the name of the layout file if different from layout
    # erb :hello, {:locals => params, :layout => :layout}
    # if we don't want a layout, :layout => false
    # erb :hello, {:locals => params, :layout => false}
end
