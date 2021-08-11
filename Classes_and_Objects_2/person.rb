class Person
  attr_writer :secret

  def share_secret
    puts secret.to_s
    # or
    puts "with instance variable: #{@secret}"

    puts "with instance method: #{secret}"
  end

  private


  attr_reader :secret

  def initialize; end
end