class AppointmentsController < ApplicationController
  def create
    appointment = current_user.appointments.create!(suit_id: params[:suit_id])

    if appointment.save
      render json: { message: 'Appointment successfully created' }, status: :created
    else
      render json: { error: appointment.errors.full_messages.first }, status: :unprocessable_entity
    end
  end

  def destroy
    appointment = Appointment.find_by(user_id: current_user.id, suit_id: params[:id])

    if appointment
      appointment.destroy
      render json: { message: 'Successfully deleted an appointment' }
    else
      render json: { message: 'Something went wrong' }
    end
  end
end
