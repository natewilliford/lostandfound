class HomeController < ApplicationController
  def index
    @all_posts = Post.find(:all)
  end
end
