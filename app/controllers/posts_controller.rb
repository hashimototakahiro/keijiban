# Applicationcontrollerクラスを継承することで、クラスがコントローラと認識される
class PostsController < ApplicationController
    def index
    end
    def new
    end
 @post = Post.new
    end
