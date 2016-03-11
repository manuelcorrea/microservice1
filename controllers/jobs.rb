require 'json'

get '/service/jobs',:provides => :json do
  jobs =[
      {
      :jobdid => '123',
      :name => 'Software Engineer'
      }
  ]
  JSON.pretty_generate(jobs)
end


get '/healthcheck' do
  status 200
end