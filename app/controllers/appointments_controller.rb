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

  # GET /suits/:suit_id/appointments
  # def index
  #   json_response(@suit.appointments)
  # end

  # def show
  #   json_response(@appointment)
  # end

  # # POST /suits/:suit_id/appointments/:id
  # def create
  #   @suit.appointments.create!(appointment_params)
  #   json_response(@suit, :created)
  # end

  # # PUT /suits/:suit_id/appointments/:id
  # def update
  #   @appointment.update(appointment_params)
  #   head :no_content
  # end

  # # DELETE /suits/:suit_id/appointments/:id
  # def destroy
  #   @appointment.destroy
  #   head :no_content
  # end

  # private

  # def appointment_params
  #   params.permit(:user_id, :suit_id)
  # end

  # def set_suit
  #   @suit = Suit.find(params[:suit_id])
  # end

  # def set_suit_appointment
  #   @appointment = @suit.appointments.find_by!(id: params[:id]) if @suit
  # end
end
