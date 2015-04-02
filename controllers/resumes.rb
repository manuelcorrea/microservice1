require 'json'

get '/service/resumes',:provides => :json do
  if should_fail?
    status( 500 )
  else
    resumes = [
        {
            :name => 'Alice',
            :resume => 'Software engineer'
        },
        {
            :name => 'Ana',
            :resume => 'Nurse'
        }
    ]
    JSON.pretty_generate(resumes)
  end

end

def should_fail?
  [true, false].sample
end