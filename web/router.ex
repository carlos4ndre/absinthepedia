defmodule Absinthepedia.Router do
  use Phoenix.Router

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: Absinthepedia.Schema
end
