window.generation = 5

window.nextTurn = ->
  window.generation = window.generation + 5
  window.inventory.food = window.inventory.food - window.conditions.food_consume_rate
  window.conditions.physical_health = window.conditions.physical_health - window.conditions.physical_deterioration_rate
  window.conditions.mental_health = window.conditions.mental_health - window.conditions.mental_deterioration_rate

  window.updateConditions()

  console.log 'conditions -> ', window.conditions
  console.log 'inventory -> ', window.inventory

  if chanceIn100(window.conditions.mutiny_rate)
    window.lose('mutiny')

  if window.conditions.physical_health <= 0
    window.lose('physical_health')

  if window.conditions.mental_health <= 0
    window.lose('mental_health')

  if window.inventory.food < 0
    window.lose('food')

  if window.inventory.parts < 0
    window.lose('parts')

window.lose = (condition) ->
  switch condition
    when 'mutiny'
      console.log 'A significant group of people plot a mutiny, hijacking the ship and redirecting it back to Earth. This is a failed attempt. You lose.'
    when 'physical_health'
      console.log 'The crew has been exposed to extreme radiation and they develop cancer. Their bodies are unable to repair the damage, the population dwindles. You lose.'
    when 'mental_health'
      console.log 'The daily stress of space life has taken its toll. Depression is wide spread and the population dwindles. You lose.'
    when 'food'
      console.log 'The sustainable food source has been contaminated by bacteria. You quickly run out of food and lose.'
    when 'parts'
      console.log 'There are no more parts to repair and maintain the ship. You lose.'
