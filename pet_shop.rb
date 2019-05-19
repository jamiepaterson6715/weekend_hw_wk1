# #1.
def pet_shop_name(shop)
  return shop[:name]
end

#2.
def total_cash(cash)
    return cash[:admin][:total_cash]
  end

# #3.
# #4.
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

# def find_pet_by_name(shop, name)
#   for pet in shop[:pets]
#     if pet[:name] == name
#       return pet
#     end
#   end
# end

# def find_pet_by_name(name, pet)
#   if pet[:pets][:name] == name
#     return pet
#   end
# end


# #11.
#
# def find_pet_by_name(pet_shop, name)
#   pet = 0
#   for pet in pet_shop[:pets]
#     if pet[:name] == name
#       return pet
#     end
#   end
# end




#12

def add_pet_to_stock(shop, pet)
  shop[:pets] << pet
end

#13

def customer_cash(person)
  return person[:cash]
end

# #14

def remove_customer_cash(person, cash)
  return person[:cash] -= cash
end

#15

def customer_pet_count(person)
    return person[:pets].count
  end

#16

def add_pet_to_customer(person, pet)
  return person[:pets].push(pet)
end





























































#
