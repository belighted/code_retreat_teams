require File.expand_path("app/services/team_builder_service")

class ApplicationController < ActionController::Base

  def build_teams
    # participants = params[:participants_list]
    participants = Participation.all.map do |p|
      {user_id: p.user_id, user_name: p.user.name, technology: p.primary_technology.name}
    end
      # [{user_id: 1, technology: "Ruby"}]

    @teams = TeamBuilderService.new(participants).call
  end

end
