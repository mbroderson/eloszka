defmodule Eloszka.UserController do
  use Eloszka.Web, :controller
  alias Eloszka.User

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"user" => user_params}) do
    changeset = User.changeset(%User{}, user_params)
    {:ok, user} = Repo.insert(changeset)
    conn
    |> put_flash(:info, "#{user.name} created!")
    |> redirect(to: user_path(conn, :new))
  end
end
