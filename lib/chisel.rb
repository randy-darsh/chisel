class Chisel

  attr_reader :markdown

  def initialize(markdown_file, my_output)
    @markdown = File.read(markdown_file)
    @markdown_file = markdown_file
    @my_output = my_output
  end

  def write_to_html(my_output)
    renderer = Redcarpet::Render::HTML.new
    engine = Redcarpet::Markdown.new(renderer)
    my_input = markdown_file
    my_output = File.new(my_output, 'w')
    my_output.write(engine.render(my_input))
    # engine.render(markdown_file)
    # => "<h1>My Life in Desserts</h1>\n\n<h2>Chapter 1: The Beginning</h2>\n\n<p>&quot;You just <em>have</em> to try the cheesecake,&quot; he said. &quot;Ever since it appeared in <strong>Food &amp; Wine</strong> this place has been packed every night.&quot;</p>\n"
  end



  markdown_file = ARGV[0]
  # html_file = ARGV[1]
  #
  # html = Chisel.new(markdown).to_html
  #
  # File.write(html_file, html)
  #
  # number_of_lines_of_markdown = markdown.lines.count
  # number_of_lines_of_html = html.lines.count

  # puts "Converted #{markdown_file} (#{number_of_lines_of_markdown} lines) to #{html_file} (#{number_of_lines_of_html} lines)"


end
