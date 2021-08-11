class Banner
  attr_writer :message, :length

  def initialize(message)
    self.message = message
    self.length = message.length + 1
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+#{gen_padding('-')}+"
  end

  def empty_line
    "|#{gen_padding(' ')}|"
  end

  def gen_padding(input)
    rule = ''
    (0..@length).each { rule << input }
    rule
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner
#
# banner = Banner.new('To boldly go where no one has gone before.')
# puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
#
#