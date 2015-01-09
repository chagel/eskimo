module ApplicationHelper
  def render_post(post)
    content = post.body
    if content.length < 300 && content.match(/^http/)
      link_to content, content
    else
      content
    end
  end
end
