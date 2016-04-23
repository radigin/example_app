module PostsHelper
  def post_options(selected)
    options_for_select(Post.order(:name).all.map{ |p| [p.name, p.id] }, selected)
  end
end
