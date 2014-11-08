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
      console.log 'mutiny'
    when 'physical_health'
      console.log 'physical_health'
    when 'mental_health'
      console.log 'mental_health'
    when 'food'
      console.log 'food'
    when 'parts'
      console.log 'parts'
