require 'rest-client'

def get_missions
    baseUrl = "https://api.spacexdata.com/v3/missions"
    missions = RestClient.get(baseUrl)
    response = JSON.parse(missions)

    response.each do |mission|
        Mission.create(title: mission['mission_name'], description: mission['description'], website: mission['website'], manufacturer: mission['manufacturers'])
    end
end

get_missions()
