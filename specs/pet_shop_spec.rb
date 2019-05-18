
require('minitest/autorun')
require('minitest/rg')
require_relative('../pet_shop')

class TestPetShop < Minitest::Test

  def setup

    @customers = [
      {
        name: "Alice",
        pets: [],
        cash: 1000
      },
      {
        name: "Bob",
        pets: [],
        cash: 50
      }
    ]

    @new_pet = {
      name: "Bors the Younger",
      pet_type: :cat,
      breed: "Cornish Rex",
      price: 100
    }

    @pet_shop = {
      pets: [
        {
          name: "Sir Percy",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "King Bagdemagus",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "Sir Lancelot",
          pet_type: :dog,
          breed: "Pomsky",
          price: 1000,
        },
        {
          name: "Arthur",
          pet_type: :dog,
          breed: "Husky",
          price: 900,
        },
        {
          name: "Tristan",
          pet_type: :dog,
          breed: "Basset Hound",
          price: 800,
        },
        {
          name: "Merlin",
          pet_type: :cat,
          breed: "Egyptian Mau",
          price: 1500,
        }
      ],
      admin: {
        total_cash: 1000,
        pets_sold: 0,
      },
      name: "Camelot of Pets"
    }
  end
#1.
  def test_pet_shop_name
    name = pet_shop_name(@pet_shop)
    assert_equal("Camelot of Pets", name)
  end
#2.
  def test_total_cash
    sum = total_cash(@pet_shop)
    assert_equal(1000, sum)
  end
#3.
  def test_add_or_remove_cash_add
    add_or_remove_cash(@pet_shop,10)
    cash = total_cash(@pet_shop)
    assert_equal(1010, cash)
  end
#4.
  def test_add_or_remove_cash__remove
    add_or_remove_cash(@pet_shop,-10)
    cash = total_cash(@pet_shop)
    assert_equal(990, cash)
  end
#5.
  def test_pets_sold
    sold = pets_sold(@pet_shop)
    assert_equal(0, sold)
  end
#6.
  def test_increase_pets_sold
    increase_pets_sold(@pet_shop,2)
    sold = pets_sold(@pet_shop)
    assert_equal(2, sold)
  end
#7.
  def test_stock_count
    count = stock_count(@pet_shop)
    assert_equal(6, count)
  end
#8.
  def test_all_pets_by_breed__found
    pets = pets_by_breed(@pet_shop, "British Shorthair")
    assert_equal(2, pets.count)
  end
#9.
  def test_all_pets_by_breed__not_found
    pets = pets_by_breed(@pet_shop, "Dalmation")
    assert_equal(0, pets.count)
  end
#10.
  # def test_find_pet_by_name__returns_pet
  #   pet = find_pet_by_name(@pet_shop, "Arthur")
  #   assert_equal("Arthur", pet[:name])
  end
#11
  def test_find_pet_by_name__returns_nil
    pet = find_pet_by_name(@pet_shop, "Fred")
    assert_nil(pet)
  end

  # def test_remove_pet_by_name
  #   remove_pet_by_name(@pet_shop, "Arthur")
  #   pet = find_pet_by_name(@pet_shop,"Arthur")
  #   assert_nil(pet)
  # end

  # def test_add_pet_to_stock
  #   add_pet_to_stock(@pet_shop, @new_pet)
  #   count = stock_count(@pet_shop)
  #   assert_equal(7, count)
  # end

  # def test_customer_cash
  #   cash = customer_cash(@customers[0])
  #   assert_equal(1000, cash)
  # end

  # def test_remove_customer_cash
  #   customer = @customers[0]
  #   remove_customer_cash(customer, 100)
  #   assert_equal(900, customer[:cash])
  # end

  # def test_customer_pet_count
  #   count = customer_pet_count(@customers[0])
  #   assert_equal(0, count)
  # end

  # def test_add_pet_to_customer
  #   customer = @customers[0]
  #   add_pet_to_customer(customer, @new_pet)
  #   assert_equal(1, customer_pet_count(customer))
  # end

  # # OPTIONAL

  # def test_customer_can_afford_pet__insufficient_funds
  #   customer = @customers[1]
  #   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
  #   assert_equal(false, can_buy_pet)
  # end

  # def test_customer_can_afford_pet__sufficient_funds
  #   customer = @customers[0]
  #   can_buy_pet = customer_can_afford_pet(customer, @new_pet)
  #   assert_equal(true, can_buy_pet)
  # end

  # #These are 'integration' tests so we want multiple asserts.
  # #If one fails the entire test should fail
  # def test_sell_pet_to_customer__pet_found
  #   customer = @customers[0]
  #   pet = find_pet_by_name(@pet_shop,"Arthur")

  #   sell_pet_to_customer(@pet_shop, pet, customer)

  #   assert_equal(1, customer_pet_count(customer))
  #   assert_equal(1, pets_sold(@pet_shop))
  #   assert_equal(100, customer_cash(customer))
  #   assert_equal(1900, total_cash(@pet_shop))
  # end

  # def test_sell_pet_to_customer__pet_not_found
  #   customer = @customers[0]
  #   pet = find_pet_by_name(@pet_shop,"Dave")

  #   sell_pet_to_customer(@pet_shop, pet, customer)

  #   assert_equal(0, customer_pet_count(customer))
  #   assert_equal(0, pets_sold(@pet_shop))
  #   assert_equal(1000, customer_cash(customer))
  #   assert_equal(1000, total_cash(@pet_shop))
  # end

  # def test_sell_pet_to_customer__insufficient_funds
  #   customer = @customers[1]
  #   pet = find_pet_by_name(@pet_shop,"Arthur")

  #   sell_pet_to_customer(@pet_shop, pet, customer)

  #   assert_equal(0, customer_pet_count(customer))
  #   assert_equal(0, pets_sold(@pet_shop))
  #   assert_equal(50, customer_cash(customer))
  #   assert_equal(1000, total_cash(@pet_shop))
  # end

# end








# require( 'minitest/autorun' )
# require( 'minitest/rg')
# require_relative( '../friends' )
#
# class TestFriends < MiniTest::Test
#
#   def setup
#
#     @person1 = {
#       name: "Shaggy",
#       age: 12,
#       monies: 1,
#       friends: ["Velma","Fred","Daphne", "Scooby"],
#       favourites: {
#         tv_show: "Friends",
#         snacks: ["charcuterie"]
#       }
#     }
#
#     @person2 = {
#       name: "Velma",
#       age: 15,
#       monies: 2,
#       friends: ["Fred"],
#       favourites: {
#         tv_show: "Baywatch",
#         snacks: ["soup","bread"]
#       }
#     }
#
#     @person3 = {
#       name: "Scooby",
#       age: 18,
#       monies: 20,
#       friends: ["Shaggy", "Velma"],
#       favourites: {
#         tv_show: "Pokemon",
#         snacks: ["scooby snacks"]
#       }
#     }
#
#     @person4 = {
#       name: "Fred",
#       age: 18,
#       monies: 20,
#       friends: ["Shaggy", "Velma", "Daphne"],
#       favourites: {
#         tv_show: "X-Files",
#         snacks: ["spaghetti", "ratatouille"]
#       }
#     }
#
#     @person5 = {
#       name: "Daphne",
#       age: 20,
#       monies: 100,
#       friends: [],
#       favourites: {
#         tv_show: "X-Files",
#         snacks: ["spinach"]
#       }
#     }
#
#     @people = [@person1, @person2, @person3, @person4, @person5]
#
#   end
#
#   # 1. For a given person, return their name
#   def test_getting_name
#     result = get_name(@person5)
#     assert_equal("Daphne", result)
#   end
#
#   # 2. For a given person, return their favourite tv show
#   # (e.g. the function favourite_tv_show(@person2) should return the string "Baywatch")
#   def test_favourite_tv_show
#     result = get_favourite_tv_show(@person2)
#     assert_equal("Baywatch", result)
#   end
#
#   # 3. For a given person, check if they like a particular food
#   # (e.g. the function likes_to_eat(@person2, "bread") should return true, likes_to_eat(@person3, "spinach") should return false)
#   def test_likes_to_eat
#     result = likes_to_eat(@person2, "bread")
#     assert_equal(true, result)
#   end
#   # 4. For a given person, add a new name to their list of friends
#   # (e.g. the function add_friend(@person2, "Scrappy-Doo") should add Scrappy-Doo to the friends.)
#   # (hint: This function should not return anything. After the function call, check for the length of the friends array to test it!)
#   def test_add_friend
#       add_friend(@person2, "Scrappy-Doo")
#       assert_equal(2, @person2[:friends].length)
#
#   end
#
#   # 5. For a given person, remove a specific name from their list of friends
#   # (hint: Same as above, testing for the length of the array should be sufficient)
#
#   def test_remove_friend
#     remove_friend(@person1, "Velma")
#     assert_equal(3, @person1[:friends].length)
# end
#
#   # 6. Find the total of everyone's money
#   # (hint: use the @people array, remember how we checked the total number of eggs yesterday?)

  # def test_total_cash
  #   result = total_cash(@people)
  #   assert_equal(143, result)
  # end
#
#
#   # 7. For two given people, allow the first person to loan a given value of money to the other
#   # (hint: our function will probably need 3 arguments passed to it... the lender, the lendee, and the amount for this function)
#   # (hint2: You should test if both the lender's and the lendee's money have changed, maybe two assertions?)
#
#   def test_lend
#     lend(@person5, @person1, 20)
#     assert_equal(21, @person1[:monies])
#     assert_equal(80, @person5[:monies])
#   end
#
#
#   # 8. Find the set of everyone's favourite food joined together
#   # (hint: concatenate the favourites/snack arrays together)
#
#   def test_list_favourite_food
#     result = list_favourite_food(@people)
#     assert_equal(["charcuterie", "soup", "bread", "scooby snacks", "spaghetti", "ratatouille", "spinach"], result)
#   end
#
#   # 9. Find people with no friends
#   # (hint: return an array, there might be more people in the future with no friends!)
#
#  def test_find_lonely_people
#    result = find_lonely_people(@people)
#    assert_equal(["Daphne"], result)
#  end
#
#
#
#
