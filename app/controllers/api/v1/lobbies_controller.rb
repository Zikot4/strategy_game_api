class Api::V1::LobbiesController < Api::V1::BaseController
  def index
    render json: { lobbies: Lobby.all.as_json }, status: 200
  end

  def create
    lobby = Lobby.new(lobby_params)
    lobby.owner = current_user
    lobby.lobbies_users.new(user_id: current_user.id)
    if lobby.save
      render json: LobbySerializer.new(
        lobby,
        scope: 'owner',
        user: current_user
      ).to_json, status: 200
    else
      render json: { errors: lobby.errors.full_messages }, status: 400
    end
  end

  private

  def lobby_params
    params.require(:lobby).permit(
      :amount_of_users
    )
  end
end
