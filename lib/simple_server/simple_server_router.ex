defmodule SimpleServer.Router do
  use Plug.Router
  use Plug.Debugger
  require Logger
  plug(Plug.Logger, log: :debug)
  plug(:match)
  plug(:dispatch)

  get "/" do
    # Process.sleep(1000 * 100)
    send_resp(conn, 200, "hello world")
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
