class GlobBlock < Liquid::Block

  def initialize(tag_name, text, tokens)
    super

    @files = Dir.glob(text.strip)
  end

  def render(context)
    context.stack do
      context['files'] = @files
      render_all(@nodelist, context)
    end
  end

end

Liquid::Template.register_tag('glob', GlobBlock)
