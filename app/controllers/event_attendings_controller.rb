# frozen_string_literal: true

class EventAttendingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @event_attending = current_user.event_attendings.new(event_attending_params)

    if @event_attending.save
      redirect_to event_path(@event_attending.attended_event_id), notice: 'You have successfully signed up for this event'
    else
      render event_path(@event_attending.attended_event_id), status: :unprocessable_entity
    end
  end

  private

  def event_attending_params
    params.require(:event_attending).permit(:attendee_id, :attended_event_id)
  end
end
