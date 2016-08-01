# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative begins searching for the document from the directory its is called from as opposed to the system directory.
#
#require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
      #As the .new method virus predictor class is created these instance variables are initated with it.
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  


  def virus_effects
      #Calling other private methods, combining the output of these methods for driver code. 
    print "#{@state} will lose #{predicted_deaths} people on this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

private

  def predicted_deaths
      #calculating number of deaths, rounding down to a whole person based on the multiplier of the population, returing a print statement with number of deaths per state.
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    
    #"#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
      #Calcuating how fast he virus will spread based off the pop density and returning the speed in a puts statement.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

   # " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do  |state, info|
  new_state =  VirusPredictor.new(state, info[:population_density], info[:population])
  new_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


#In STATE_DATA it uses a string for the state hash key and for the population density and population a symbol
  #These two hash syntaxes differ in how they are called and the space they occupy on the system

  #Require relative begins searching from the file in which its used opposed to require which begins searching from the entire system. Ex: c/dbc/phase-0-tracks/ruby... and so on.

  #map and .each are two common ways to iterate through a hash.  The interesting thing about the variables were in this example info was used to then further dive into the other hashes 
    #that contained more info since there was more than one level of hashes in STATE_DATa.

    #In virus effects before we refactored it, it was pushing instance variables to the other methods which was unnecessary.
      #It also was piecing together two print statements.  We change it so the other methods simply did the calculation and virus effects called them and organized it into one print statement.

      #The most difficult thing in this assignment was iterating through the hash and accessing the secondary hash within it.

      
