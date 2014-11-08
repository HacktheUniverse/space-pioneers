window.chooseEffect = (effect_num) ->
  effect = effects["effect_#{effect_num}"]

  # Execute this function to update game state
  effect.result()

  # TODO: Insert this text into dom
  console.log effect.text


effects = {
  effect_1: {
    text: "You start out with an extra 200 food, however you consume food 5% more rapidly."
    result: ->
      window.conditions.food = window.conditions.food + 200
      window.conditions.food_consume_rate = window.conditions.food_consume_rate * 1.05
  }
  effect_2: {
    text: "Your decision to create a sustainable biosphere reduces food consumption by 10%."
    result: ->
      window.conditions.food_consume_rate = window.conditions.food_consume_rate * 0.9
  }
  effect_3: {
    text: "You loose 1 spare part for repairs."
    result: ->
      window.conditions.parts = window.conditions.parts - 1
  }
  effect_4: {
    text: null
    result: ->
      if window.chanceIn100(.95)
        this.text = "You fix the air purifier"
      else
        this.text = "You fail to fix the air purifier and 15% of your population suffocates.  You don't have enough people to maintain genetic diversity."
        window.conditions.physical_health = 0
  }
  effect_5: {
    text: "The physical health of your population deteriorates 10% quicker."
    result: ->
      window.conditions.physical_deterioration_rate = window.conditions.physical_deterioration_rate * 1.1
  }
  effect_6: {
    text: "The physical health of your population deteriorates 10% quickly."
    result: ->
      window.conditions.physical_deterioration_rate = window.conditions.physical_deterioration_rate * 1.1
  }
  effect_7: {
    text: "The mental health of your population deteriorates by 5%."
    result: ->
      window.conditions.mental_deterioration_rate = window.conditions.mental_deterioration_rate * 1.05
  }
  effect_8: {
    text: "Chance of mutiny decreased by 10%."
    result: ->
      window.conditions.mutiny_rate = window.conditions.mutiny_rate * 0.9
  }
  effect_9: {
    text: "The physical health of your population increases by 10."
    result: ->
      window.conditions.physical_health = window.conditions.physical_health + 10
  }
  effect_10: {
    text: "You push the ship past its physical limits causing damage that must be repaired.  You need parts to fix the damage."
    result: ->
      window.conditions.parts = window.conditions.parts - 1
  }
}

