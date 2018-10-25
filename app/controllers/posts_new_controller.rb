class PostsNewController < PostsController

  def index
      # 投稿データを全て取得、またインスタンス変数なのでViewで参照可能
 　　@post = Post.new
  end

  def new
      # Postモデルのオブジェクトを作成
  　  @post = Post.new
      # @boardはインスタンス変数で、Viewで参照可能

  end

  def create
      # データはparamsという変数に渡されてくる
      # create は、Postモデルのクラスメソッド
      @post = Post.new(params[:post])
          @post.save
          redirect_to new_user_path
  end

end
