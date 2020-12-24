class Talk
  def self.register(topic, time_duration)
    if time_duration == 5
      LigtningTalks
    else
      NormalTalks
    end.new(topic, time_duration)
  end
end

class LigtningTalks < Talk
  attr_reader :topic, :time_duration

  def initialize(topic, time_duration)
    @topic = topic
    @time_duration = time_duration  
  end
end

class NormalTalks < Talk
  attr_reader :topic, :time_duration
  
  def initialize(topic, time_duration)
    @topic = topic
    @time_duration = time_duration
  end
end
