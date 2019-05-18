#1.
def pet_shop_name(shop)
  return shop[:name]
end
#2.
def total_cash(cash)
    return cash[:admin][:total_cash]
  end
#3.
#4.
def add_or_remove_cash(add, amount)
    add[:admin][:total_cash] += amount
end
#5.
def pets_sold(pets)
  return pets[:admin][:pets_sold]
end
#6.
def increase_pets_sold(add, pet)
  add[:admin][:pets_sold] += pet
end
#7.
def stock_count(animal)
  return animal[:pets].length
end
#8.
#9.
def pets_by_breed(shop, breed)
  pets_by_breed = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      pets_by_breed.push(pet)
    end
  end
  return pets_by_breed
end
#10.





#11.
def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] === name
      return pet
    else
      pet = 0
    end
  end
end




end
















































# def get_name(person)
#   return person[:name]
# end
#
# def get_favourite_tv_show(person)
#   return person[:favourites][:tv_show]
# end
#
# def likes_to_eat(person, food)
#   # return person[:favourites][:snacks].include? food
#   for snack in person[:favourites][:snacks]
#       if snack == food
#         return true
#       end
#   end
#   return false
# end
#
# def add_friend(person, friend)
#   person[:friends].push(friend)
# end
#
# def remove_friend(person, friend)
#   person[:friends].delete(friend)
# end
#
# def total_cash(people)
#   total_cash = 0
#   for person in people
#     total_cash += person[:monies]
#   end
#   return total_cash
# end
#   def lend(lender, lendee, amount)
#     lender[:monies] -= amount
#     lendee[:monies] += amount
#   end
#
# def list_favourite_food(people)
#   food = []
#   for person in people
#     for snack in person[:favourites][:snacks]
#       food.push(snack)
#     end
#   end
#   return food
# end
#
# def find_lonely_people(people)
#   array = []
#   for person in people
#     if person[:friends] == []
#       array.push(person[:name])
#     end
#   end
#   return array
# end
