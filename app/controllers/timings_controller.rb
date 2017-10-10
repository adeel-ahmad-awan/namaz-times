class TimingsController < ApplicationController

  def new

  end

  def create
    @masjid = Masjid.find(params[:masjid_id])
    @timings = @masjid.timings.create(timing_params)
    redirect_to masjid_path(@masjid)
  end

  def destroy
    @masjid = Masjid.find(params[:masjid_id])
    @timings = @masjid.timings.find(params[:id])
    @timings.destroy

    redirect_to masjid_path(@masjid)
  end

private
  def timing_params
    params.require(:timing).permit(:day, :fajar, :zohar, :asar, :magrib, :isha)
  end
end
