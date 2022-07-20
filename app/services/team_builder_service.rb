class TeamBuilderService
  def initialize(participants_list)
    @participants_list = participants_list
  end

  def call
    build_teams
  end

  private

  def build_teams
    teams = []
    @participants_list.group_by { |p| p[:technology] }.each do |tech, participants|
      while participants.count > 3
        team = {technology: tech, participants: []}
        team[:participants] << participants.pop
        team[:participants] << participants.pop
        teams << team
      end

      team = {technology: tech, participants: participants}
      teams << team
    end

    teams
  end
end
