-- RUBENFOOD MOD
-- A mod written by rubenwardy that adds
-- food to the minetest game
-- ======================================
-- >> rubenfood/food/sandwich.lua
-- adds sandwich
-- ======================================
-- [regis-food] Cheese Sandwich
-- [craft] Cheese Sandwich
-- [regis-food] Venison Sandwich
-- [craft] Venison Sandwich
-- [regis-food] Burger
-- [craft] Burger
-- ======================================

print "Food [Modern] - Loading Burgers"

minetest.register_craftitem("food_modern:burger", {
	description = "Burger",
	inventory_image = "food_burger.png",
	on_use = minetest.item_eat(10),
	groups={food=2},
})

minetest.register_craft({
	output = '"food_modern:burger" 1',
	recipe = {
                 {"",'"food:bun"',""},
		{"food:butter","food:meat",'"food:butter"'},
		{"",'"food:bun"',""},
	}
})

minetest.register_craftitem("food_modern:chips", {
	description = "Chips",
	inventory_image = "food_modern_chips.png",
	on_use = minetest.item_eat(4),
	groups={food=3},
})

minetest.register_craftitem("food_modern:chips_raw", {
	description = "Raw Chips",
	inventory_image = "food_modern_chips.png",
})

minetest.register_craft({
	output = "food_modern:chips_raw",
	recipe = {{"food:potato"}},
})

minetest.register_craft({
	output = "food_modern:chips",
	type = "cooking",
	recipe = "food_modern:chips_raw",
})
