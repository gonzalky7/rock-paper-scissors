class Game

  attr_reader :started

  def start
    @started = true
  end

  def started?
    self.started || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if (left == :rock && right == :scissors)
        @started = false
       "Rock beats scissors!"
    elsif (left == :scissors && right == :rock)
      "Rock beats scissors!"
    elsif (left == :paper && right == :rock)
      "Paper beats rock!"  
    elsif (left == :rock && right == :paper)
      "Paper beats rock!"  
    elsif (left == :scissors && right == :paper)
      "Scissors beats paper!"
    elsif (left == :paper && right == :scissors)
      "Scissors beats paper!"    
    else
      :UNKNOWN
    end
  end

end