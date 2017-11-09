json.extract! user, :id, :username
# followers and following will return array of ids
json.foods user.food_ids
