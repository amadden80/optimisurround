class DataController < ApplicationController
  
  before_filter :authenticate_user!

  def console
    require 'json'
    @clips = Clip.all.to_json
  end


  def visualization

    # puts params
    require 'json'

    case params[:commit]
    when 'Time'
      all_clips = Clip.all()
      clips_bytime = all_clips.group_by{ |u| u.created_at.beginning_of_hour }
      clips_byhour = []
      clips_bytime.each_with_index {|clips_group, index| clips_byhour << {hour: clips_group[0], numClips: clips_group[1].count} }
      @clips_byhour = clips_byhour.to_json
      render 'time-plot'
    when 'Spatial'
      @clips = Clip.all.to_json
      render 'spatial-plot'
    else
      render nothing: true
    end

  end


end