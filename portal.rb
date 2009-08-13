# hello_world.rb
require 'rubygems'
require 'sinatra'
require 'haml'
require 'feed-normalizer'
require 'open-uri'


get '/' do
  
  columbiaSpec = RSSWidget.new("specNews","http://feeds.columbiaspectator.com/specblogs/newsroom", 5, :rss_widget, :sass)
  bwog = RSSWidget.new("bwogNews", "http://www.bwog.net/index.php?page=rss" , 5, :rss_widget, :sass)
  
  @widgets = Hash.new
  @widgets[columbiaSpec.name]=columbiaSpec
  @widgets[bwog.name]=bwog
  haml :index

end


get '/*.css' do
    content_type 'text/css', :charset => 'utf-8'
    sass params["splat"].first
end


helpers do    
    
  def partial(page, options={})
    haml page, options.merge!(:layout => false)
  end
  
  def widget(widget, options={})
    haml widget.haml_layout, options.merge!(:layout => false), { :widget => widget }
  end
  
end



class Widget
  
  attr_accessor :sass_layout
  attr_accessor :haml_layout
  attr_accessor :name
  
  def initialize(name, haml, sass)
    @name=name
    @sass_layout=sass
    @haml_layout=haml
  end
  
  
end

class RSSWidget < Widget
  
  attr_accessor :feed_url, :number_of_posts
  
  def initialize(feedurl, num_posts = 5)
    @feed_url=feedurl
    @number_of_posts=num_posts
  end
  
  
  def initialize(name, feedurl, num_posts, haml, sass)
    @feed_url=feedurl
    @number_of_posts=num_posts
    super(name, haml, sass)
  end

end



  


