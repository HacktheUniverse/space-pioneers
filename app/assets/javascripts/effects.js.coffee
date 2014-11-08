window.chooseEffect = (effect_num) ->
  effect = effects["effect_#{effect_num}"]

  # TODO: Insert this text into dom
  console.log effect.text

  # Execute this function to update game state
  effect.result()

effects = {
  effect_1: {
    text: "You start out with an extra 200 food, however you consume food 5% more rapidly."
    result: ->
      window.inventory.food = window.inventory.food + 200
      window.conditions.food_consume_rate = window.conditions.food_consume_rate * 1.05
  }
  effect_2: {
    text: "Your decision to create a sustainable biosphere reduces food consumption by 10%."
    result: -> console.log 'effect 2'
  }
  effect_3: {
    text: "You loose 1 spare part for repairs."
    result: -> console.log 'effect 3'
  }
  effect_4: {
    text: "95% You fix the air purifier 5% You fail to fix the air purifier and 15% of your population suffocate.  You don't have enough of a population to maintain genetic diversity. LOSE"
    result: -> console.log 'effect 4'
  }
  effect_5: {
    text: "The physical health of your population deteriorates 10% quickly."
    result: -> console.log 'effect 5'
  }
  effect_6: {
    text: "The physical health of your population deteriorates 10% quickly."
    result: -> console.log 'effect 6'
  }
  effect_7: {
    text: "The mental health of your population deteriorates less quickly."
    result: -> console.log 'effect 7'
  }
  effect_8: {
    text: "Chance of mutiny decreased by 10%."
    result: -> console.log 'effect 8'
  }
  effect_9: {
    text: "The physical health of your population increases by 10."
    result: -> console.log 'effect 9'
  }
  effect_10: {
    text: "You push the ship past its physical limits causing damage that must be repaired.  You use 1 part to fix the damage.  You have no parts to fix the damage and the structure of ship disintegrates. LOSE"
    result: -> console.log 'effect 10'
  }
}

