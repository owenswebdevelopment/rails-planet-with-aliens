puts "Cleaning the DB...."
Planet.destroy_all

puts "Creating planets to use...."

Planet.create([
  { name: "Mercury", description: "The smallest planet in the Solar System.", size: 2440, alien_count: 70, rings: 10 },
  { name: "Venus", description: "Hot and covered with thick clouds.", size: 6052, alien_count: 50, rings: 10 },
  { name: "Earth", description: "The only planet known to harbor life.", size: 6371, alien_count: 7, rings: 10 },
  { name: "Mars", description: "Known as the Red Planet.", size: 3390, alien_count: 2, rings: 50 },
  { name: "Jupiter", description: "The largest planet in the Solar System.", size: 69911, alien_count: 79, rings: 4 },
  { name: "Saturn", description: "Famous for its beautiful ring system.", size: 58232, alien_count: 62, rings: 7 },
  { name: "Uranus", description: "An ice giant with a tilted rotation.", size: 25362, alien_count: 27, rings: 13 },
  { name: "Neptune", description: "The farthest planet from the Sun.", size: 24622, alien_count: 14, rings: 5 },
  { name: "Pluto", description: "A dwarf planet located in the Kuiper belt.", size: 1188, alien_count: 60, rings: 20 },
  { name: "Kepler-22b", description: "An exoplanet in the habitable zone of its star.", size: 28000, alien_count: 3, rings: 2 }
  ])

puts "Created 10 planets🌎 successfully"
