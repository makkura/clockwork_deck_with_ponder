require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.esper.net"
    c.channels = ["#aff"]
  end

  on :message, "hello" do |m|
    m.reply "Hello, #{m.user.nick}"
  end
  on :message, "goodbye" do |m|
    m.reply "As you wish, #{m.user.nick}"
    exit
  end
end

bot.start
