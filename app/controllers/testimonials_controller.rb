class TestimonialsController < ApplicationController
  before_action :set_profile, only: %i[new create]

  def create
    @testimonial = Testimonial.new(testimonial_params)
    @testimonial.profile = @profile
    @testimonial.save
    redirect_to profile_path(@profile)
  end

  def new
    @testimonial = Testimonial.new
  end

  private

  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

  def testimonial_params
    params.require(:testimonial).permit(:content, :profile)
  end
end
