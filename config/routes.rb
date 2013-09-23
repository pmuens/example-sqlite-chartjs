ExampleSqliteChartjs::Application.routes.draw do
  root to: 'examples#index'

  get '/line', to: 'examples#line'
  get '/bar', to: 'examples#bar'
  get '/radar', to: 'examples#radar'
  get '/polar_area', to: 'examples#polar_area'
  get '/pie', to: 'examples#pie'
  get '/doughnut', to: 'examples#doughnut'
end
