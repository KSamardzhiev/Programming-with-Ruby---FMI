C = 'C'
F = 'F'
K = 'K'

SUBSTANCES_MELTING = {
  'water' => 0,
  'ethanol' => -114,
  'gold' => 1064,
  'silver' => 961.8,
  'copper' => 1085
}

SUBSTANCES_BOILING = {
  'water' => 100,
  'ethanol' => 78.37,
  'gold' => 2700,
  'silver' => 2162,
  'copper' => 2567
}

def celsius_to_fahr(temp)
  temp * 1.8 + 32
end

def fahr_to_celsius(temp)
  (temp - 32) / 1.8
end

def celsius_to_kelvin(temp)
  temp + 273.15
end

def kelvin_to_celsius(temp)
  temp - 273.15
end

def fahr_to_kelvin(temp)
  celsius = fahr_to_celsius(temp)
  celsius_to_kelvin(celsius)
end

def kelvin_to_fahr(temp)
  celsius = kelvin_to_celsius(temp)
  celsius_to_fahr(celsius)
end

def convert_between_temperature_units(temp, from_temp, to_temp)
  if from_temp == C && to_temp == F
    celsius_to_fahr temp
  elsif from_temp == C && to_temp == K
    celsius_to_kelvin temp
  elsif from_temp == F && to_temp == C
    fahr_to_celsius temp
  elsif from_temp == F && to_temp == K
    fahr_to_kelvin temp
  elsif from_temp == K && to_temp == C
    kelvin_to_celsius temp
  elsif from_temp == K && to_temp == F
    kelvin_to_fahr temp
  elsif from_temp == to_temp
    temp
  end
end

def melting_point_of_substance(substance, temp)
  convert_between_temperature_units(SUBSTANCES_BOILING[substance], 'C', temp)
end

def boiling_point_of_substance(substance, temp)
  convert_between_temperature_units(SUBSTANCES_BOILING[substance], 'C', temp)
end
