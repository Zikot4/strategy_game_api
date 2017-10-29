class LobbySerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :amount_of_users,
             :everyone_is_ready, :users_count

  def initialize(object, options = {})
    super
    @action = options[:scope]
    @user = options[:user]
  end
end
