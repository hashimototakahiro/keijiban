# Applicationcontrollerクラスを継承することで、クラスがコントローラと認識される
    class PostsController < ApplicationController
    def index
        # 投稿データを全て取得、またインスタンス変数なのでViewで参照可能
        @posts = Post.all

    end





    def new
        # Postモデルのオブジェクトを作成
       @post = Post.new

    end
        # @boardはインスタンス変数で、Viewで参照可能
    def show
        @post = Post.all

    end


    def create

      @post = Post.new(content: params[:post][:content], title: params[:post][:title],name: params[:post][:name])
      @post.save
      redirect_to "/posts"


    end

    # 追加
    def open

    end
    def edit
        @post = Post.find(params[:id])
    end
    def update
      @post = Post.find(params[:id])

       if @post.update(article_params)
          redirect_to @post
       else
          render 'edit'
       end
     end


    # paramsから欲しいデータのみ抽出
    def posts_params
        params. require(:posts).permit(:name)
    end
end
