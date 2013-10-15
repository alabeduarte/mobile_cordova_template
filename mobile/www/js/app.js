var app;

app = {
  initialize: function() {
    return document.addEventListener("deviceready", this.onDeviceReady, false);
  },
  onDeviceReady: function() {
    return alert("device is ready!");
  }
};
