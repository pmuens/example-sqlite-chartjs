class ExamplesController < ApplicationController
  before_filter :fetch_datasets, except: [:index]

  def index
    @title = 'Overview of examples'
    @datasets = Dataset.all
    respond_to do |format|
      format.html
      format.xml { render xml: @datasets.to_xml }
      format.json { render json: @datasets }
    end
  end

  def line
    @title = 'Line Demo'
    respond_to do |format|
      format.html
      format.xml { render xml: @datasets.to_xml }
      format.json { render json: @datasets }
    end
  end

  def bar
    @title = 'Bar Demo'
    respond_to do |format|
      format.html
      format.xml { render xml: @datasets.to_xml }
      format.json { render json: @datasets }
    end
  end

  def radar
    @title = 'Radar Demo'
    respond_to do |format|
      format.html
      format.xml { render xml: @datasets.to_xml }
      format.json { render json: @datasets }
    end
  end

  def polar_area
    @title = 'Polar Area Demo'
    respond_to do |format|
      format.html
      format.xml { render xml: @datasets.to_xml }
      format.json { render json: @datasets }
    end
  end

  def pie
   @title = 'Pie Demo'
   respond_to do |format|
      format.html
      format.xml { render xml: @datasets.to_xml }
      format.json { render json: @datasets }
    end
  end

  def doughnut
    @title = 'Doughnut Demo'
    respond_to do |format|
      format.html
      format.xml { render xml: @datasets.to_xml }
      format.json { render json: @datasets }
    end
  end

  private
    def fetch_datasets
      count = params[:count] ? params[:count] : 5
      @datasets = Dataset.limit(count) # FIXME: Not the safties way to parse the params into the query (SQLInjection Alert)
    end
end
