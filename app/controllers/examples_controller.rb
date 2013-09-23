class ExamplesController < ApplicationController
  def index
    @title = 'Overview of examples'
  end

  def line
    @title = 'Line Demo'
  end

  def bar
    @title = 'Bar Demo'
  end

  def radar
    @title = 'Radar Demo'
  end

  def polar_area
    @title = 'Polar Area Demo'
  end

  def pie
   @title = 'Pie Demo' 
  end

  def doughnut
    @title = 'Doughnut Demo'
  end
end
