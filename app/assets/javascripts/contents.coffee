# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  video = document.querySelector('#player');
  if video
    if Hls.isSupported()
      hls = new Hls()
      hls.loadSource video.dataset.contentMedia
      hls.attachMedia video
      hls.on Hls.Events.MANIFEST_PARSED, ->
        video.play()
        return
    plyr.setup(video);
