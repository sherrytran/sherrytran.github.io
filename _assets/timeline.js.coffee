class TimeLine
  constructor: () ->
    $("#read-more a").click((ev)=>
      id=$(ev.target).attr("id")
      splitId = id.split("-")
      window.location = "/company/"+splitId[1]+".html"+"#"+splitId[1]
    )

$(document).ready(()->
  new TimeLine()
)
