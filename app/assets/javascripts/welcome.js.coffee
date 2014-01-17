# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  console.log "ready!"
  url = $(location).attr "href"
  array = url.split("/")
  array.reverse()
  laststring = (if array[0] isnt "" then array[0] else array[1])

  console.log laststring

  if laststring == "you"
    $("#you_link").addClass "active"
  if laststring == "about"
    $("#about_link").addClass "active"
  if laststring == "explore"
    $("#explore_link").addClass "active"
  if laststring == "contact"
    $("#contact_link").addClass "active"

  $("#content").addClass "show"

  $("#nav-toggle").click ->
    $("#main-mobile").toggleClass "active"
    $(this).preventDefault();
