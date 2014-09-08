class Details
  constructor: () ->
    hash = location.hash.replace('#','')
    if(!hash.match("-"))
      new ReadDetailsByID().show("#"+hash)
    else
      splitHash = hash.split("-")
      new ReadDetailsByID().show("#"+splitHash[1])
      $('html,body').animate({scrollTop: $("#"+hash).offset().top},1000)

class ReadDetailsByID
  constructor: () ->
    
  show: (id) ->
    $("#company-switcher a").removeClass("active")
    $(id).addClass("active")

$(document).ready(()->
  new Details()
)