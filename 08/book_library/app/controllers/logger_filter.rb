class LoggerFilter
  #def self.before(controller)
  #  puts "@@@ before!"
  #end

  #def self.after(controller)
  #  puts "@@@ after!"
  #end

  #def self.filter(contrller)
  #  puts "@@@ filter before!"
  #  yield
  #  puts "@@@ filter after!"
  #end

  def self.around(controller)
    puts "@@@ around before!"
    yield
    puts "@@@ around after!"
  end
end
