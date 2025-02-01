Rails.application.routes.draw do
  get("/", { :controller => "game", :action => "homepage" })

  get("/:user_move", { :controller => "game", :action => "play" })

end
