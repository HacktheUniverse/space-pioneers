// To add a new event, just push another event object into events
// We will run this when starting the app in order to create all the events
// Don't forget to add 1 to the id each time you create a new event!
events = []

events.push({
  "id": "0"
  "name": "Air purifier broke down",
  "text": "Oh no, the air purifier broke down. If you don't fix it soon, the crew will start to suffocate. What do you do?",
  "choices": [
    {
      "text": "Replace the part",
      "effect_code": "001"
    },
    {
      "text": "Try to have one of your mechanics fix it",
      "effect_code": "002"
    }
  ]
})
