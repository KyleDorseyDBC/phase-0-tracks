#The WORLD! 

the_world = {
	"north_america" => [
		"mexico",
		"canada",
		"united_states" => ["kansas", "california", "New york"],
	],

	"south_america" => [0,1,2,3,4,5],

	"europe" => {
		"people" => "tons!",
		"climate" => "crazy",
		"numbers" => "things!"
	},
}

p the_world
p the_world["north_america"]
p the_world["north_america"][2]

p the_world["south_america"].last

p the_world["europe"]["numbers"]
