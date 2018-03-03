# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  video = document.querySelector('#player')

  if video
    protocol = video.dataset.contentPrt
    damedia = video.dataset.contentMedia
    if Hls.isSupported() and protocol == "hls"
      hls = new Hls()
      hls.loadSource damedia
      hls.attachMedia video
      hls.on Hls.Events.MANIFEST_PARSED, ->
        video.play()
        return
    plyr.setup(video);
$(document).on('turbolinks:load', ready);
