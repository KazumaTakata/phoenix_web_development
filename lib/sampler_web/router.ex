defmodule SamplerWeb.Router do
  use SamplerWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", SamplerWeb do
    # Use the default browser stack
    pipe_through(:browser)

    get("/", PageController, :index)
    get("/polls", PollController, :index)
    get("/polls/new", PollController, :new)
    post("/polls", PollController, :create)
  end

  # Other scopes may use custom stacks.
  # scope "/api", SamplerWeb do
  #   pipe_through :api
  # end
end
