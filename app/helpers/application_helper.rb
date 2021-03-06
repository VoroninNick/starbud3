module ApplicationHelper
  def embedded_svg filename, options={}
    file = File.read(Rails.root.join('app', 'assets', 'images', 'svg', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    if options[:class].present?
      svg['class'] = options[:class]
    end
    doc.to_html.html_safe
  end
end


def render_title
  return @title if defined?(@title)
  "Generic Page Title"
end

def is_active?(page_name)
  "active_menu" if params[:action] == page_name
end
def current_class?(test_path)
  return 'active_menu' if request.path == test_path
  ''
end
#Наступних 3 обявлення для SEO
def m_title(title = nil)
  if title.present?
    content_for :m_title, title
  else
    content_for?(:m_title) ? APP_CONFIG['default_title'] + ' | ' + content_for(:m_title) : APP_CONFIG['default_title']
  end
end
def meta_keywords(tags = nil)
  if tags.present?
    content_for :meta_keywords, tags
  else
    content_for?(:meta_keywords) ? [content_for(:meta_keywords), APP_CONFIG['meta_keywords']].join(', ') : APP_CONFIG['meta_keywords']
  end
end
def meta_description(desc = nil)
  if desc.present?
    content_for :meta_description, desc
  else
    content_for?(:meta_description) ? content_for(:meta_description) : APP_CONFIG['meta_description']
  end
end
