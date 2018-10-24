# Applicationcontrollerクラスを継承することで、クラスがコントローラと認識される
    class PostsController < ApplicationController
    def index
        # 投稿データを全て取得、またインスタンス変数なのでViewで参照可能

    end

    def new
        # Postモデルのオブジェクトを作成
        # @boardはインスタンス変数で、Viewで参照可能

    end

    def create
        # データはparamsという変数に渡されてくる
        # create は、Postモデルのクラスメソッド

    end

    # 追加
    def open

    end

    private

    # paramsから欲しいデータのみ抽出
    def post_params
        params.require(:post).permit(:name, :title, :content)
    end
end
