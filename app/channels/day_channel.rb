class DayChannel < ApplicationCable::Channel
  def subscribed
    stream_from "day_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
