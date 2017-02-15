class Planet
  attr_accessor :name, :diameter, :distance_from_sun, :mass, :average_temp
  
  def initialize(name, diameter, order_from_sun, mass, average_temp)
    @name = name
    @diameter = diameter
    @order_from_sun = order_from_sun
    @mass = mass
    @average_temp = average_temp
  end
  #method outputting the info
  def planet_info
    "#{ @name } has a diameter of #{ @diameter } miles, a mass of #{ @mass }, a yearly temperature averaging #{ @average_temp } and is the #{ @order_from_sun } planet away from the sun."
  end
  
end
#planet info
class SolarSystem
  attr_accessor :planets
  def initialize
    @planets = []
  end
  #adds single planet
  def add_a_planet(planet)
    @planets.push(planet)
  end
  #adds list
  def add_a_list_of_planets(planet)
    planet.each do |add_list|
      @planets.push(add_list)
    end
    def planet_info
      "#{ @name } has a diameter of #{ @diameter } miles, a mass of #{ @mass }, a yearly temperature averaging #{ @average_temp } and is the #{ @order_from_sun } planet away from the sun."
    end
  end
end
#planets info
mercury = Planet.new("Mercury", "3,032", "1st", "3.3010 * 10**23 kg", "332 F")
venus = Planet.new("Venus", "7520.8", "2nd", "4.8685 * 10**24", "854.33 F" )
earth = Planet.new("Earth", "7.9175K", "3rd", "5.9736 * 10**24", "45 F")
neptune = Planet.new("Neptune", "30.599K", "8th", "10.243 * 10**25", "-370 F")
jupiter = Planet.new("Jupiter", "86.8814K", "5th", "1.8986 * 10**27", "-244 F")
mars = Planet.new("Mars","4.212K", "4th", "6.4185 * 10**23", "98max/-123min F")
saturn = Planet.new("Saturn", "72.3674K", "6th", "5.6846 * 10**26", "-300 F")
uranus = Planet.new("Uranus", "31.518K", "7th", "8.6810 * 10**25", "-300 F max")
# divided planets into 2 arrays in order not to have duplicates when adding new list
planets = [mercury, venus, earth]
add_list = [neptune, jupiter, mars, saturn, uranus]

#this can be changed to print individual planet info
planets.each do |planet|
  print planet.planet_info + "\n"
end

#adding planets to solar system
my_solar_system = SolarSystem.new
my_solar_system.add_a_planet(mercury)
my_solar_system.add_a_planet(venus)
my_solar_system.add_a_planet(earth)
# my_solar_system.add_a_planet(neptune)
# my_solar_system.add_a_planet(jupiter)
# my_solar_system.add_a_planet(mars)
# my_solar_system.add_a_planet(saturn)
# my_solar_system.add_a_planet(uranus)
my_solar_system.add_a_list_of_planets(planets)
my_solar_system.add_a_list_of_planets(add_list)

add_list.each do |planet|
  print planet.planet_info + "\n"
end

# puts venus.planet_info
