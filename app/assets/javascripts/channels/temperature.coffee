App.temperature = App.cable.subscriptions.create "TemperatureChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    #  $("#temperatures").prepend("<li>" + data.value + "</li>")
    
    #document.getElementById("temperatures").innerHTML = "<li>" + data.data + "</li>" + document.getElementById("temperatures").innerHTML;
    # console.log(document.getElementById("temperatures").lastElementChild.innerHTML)
    document.getElementById("temperatures").innerHTML = "<li>" + data.data + "</li>";
