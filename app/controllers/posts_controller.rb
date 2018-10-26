# Applicationcontrollerクラスを継承することで、クラスがコントローラと認識される
    class PostsController < ApplicationController
    def index
        # 投稿データを全て取得、またインスタンス変数なのでViewで参照可能
    end
    
    end



    def new
        # Postモデルのオブジェクトを作成
       @post = Post.new

    end
        # @boardはインスタンス変数で、Viewで参照可能
    def show
        @post = Post.find(params[:id])
    end


    def create
        # データはparamsという変数に渡されてくる
        # create は、Postモデルのクラスメソッド

    end

    # 追加
    def open

    end



    # paramsから欲しいデータのみ抽出
    def post_params
        params.require(:posts).permit(:name, :title, :content)
    end
end
