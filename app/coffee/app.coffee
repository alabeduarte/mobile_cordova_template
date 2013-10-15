app =
    initialize: ->
        document.addEventListener("deviceready", @onDeviceReady, false) 

    onDeviceReady: ->
        alert "device is ready!"