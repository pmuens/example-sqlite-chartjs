class ExamplesController < ApplicationController
  before_filter :fetch_datasets, except: [:index]

  def index
    @title = 'Overview of examples'
    @datasets = Dataset.all
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

  private
    def fetch_datasets
      count = params[:count] ? params[:count] : 5
      @datasets = Dataset.limit(count) # FIXME: Not the safties way to parse the params into the query (SQLInjection Alert)
    end
end
