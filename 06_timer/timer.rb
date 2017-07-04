class Timer
  #write your code here
  attr_accessor :seconds

  def initialize(seconds=00)
  	@seconds = seconds
  end

  def calc_time(seconds)
  	@seconds = seconds % 60
  	@minutes = (seconds /60) % 60
  	@hours = (seconds / 60) / 60
  end

  def time_string
  	calc_time(@seconds)
  	if @hours < 10
  		@hours = "0#{@hours}"
  	end
  	if @minutes < 10
  		@minutes = "0#{@minutes}"
	end
	if @seconds < 10
		@seconds = "0#{@seconds}"
	end

  	"#{@hours}:#{@minutes}:#{@seconds}"
  end

end


