# chanceIn100(.5) is a 50/50 chance
window.chanceIn100 = (chance) ->
  target = Math.random()
  chance > target
