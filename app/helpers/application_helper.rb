module ApplicationHelper
  def url?(text)
    (text.length < 255) && !!text.match(/^http/)
  end

  def qrcable?(post)
    url?(post.body) && post.body.length < 110 ? true : false
  end

  def render_post(post)
    content = post.body
    if url?(content)
      link_to content, content
    else
      content
    end
  end

  def render_qrcode(qr)
    safe_concat '<table>'
    qr.modules.each_index do |x|
      safe_concat '<tr>'
      qr.modules.each_index do |y|
        color = qr.dark?(x, y) ? 'black' : 'white'
        safe_concat "<td class='#{color}'/>"
      end
      safe_concat '</tr>'
    end
    safe_concat '</table>'
  end
end
