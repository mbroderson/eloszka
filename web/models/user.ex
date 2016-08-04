defmodule Eloszka.User do
  use Eloszka.Web, :model
  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    timestamps
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, ~w(name email), [])
    |> unique_constraint(:email)
    |> validate_format(:email, ~r/@binarapps.com/)
  end
end
