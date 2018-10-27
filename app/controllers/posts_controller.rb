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
        @post = Post.find_by(params[:id])
    end


    def create
      @post = Post.new(content:params[:content])
      @post.save


    end

    # 追加
    def open

    end
    def edit
        @post = Post.find(params[:id])
    end
    def update
        @post = Post.find(params[:id])
        # モデルの更新は、クラスメソッドのupdateメソッドで行える
        Post.update_attributes(posts_params)

        # リダイレクト処理
        redirect_to "/posts/edit"
    end


    # paramsから欲しいデータのみ抽出
    def posts_params
        params. require(:posts).permit(:name)
    end
end
