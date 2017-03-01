class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(num)
    @seconds = num
  end

  def time_string
    secs = @seconds
    string = '00:00:00'
    string = string.split(':')
    hours = @seconds / 3600
    hours_rem = @seconds % 3600
    mins = hours_rem / 60
    mins_rem = hours_rem % 60

    if secs == 0
      string.join(":")
    elsif secs < 60
      string[2] = "%02d" % [mins_rem]
    elsif secs < 3600
      string[1] = "%02d" % [mins]
      string[2] = "%02d" % [mins_rem]
    else
      string[0] = "%02d" % [hours]
      string[1] = "%02d" % [mins]
      string[2] = "%02d" % [mins_rem]
    end

    string.join(":")

  end
end
