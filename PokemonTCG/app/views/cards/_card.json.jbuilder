json.extract! card, :id, :name, :move, :poke_type, :number, :user_id, :deck_id, :created_at, :updated_at
json.url card_url(card, format: :json)
