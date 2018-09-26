defmodule SamplerWeb.Model.Poll do
  use Ecto.Schema
  import Ecto.Changeset
  alias SamplerWeb.Model.Poll
  alias SamplerWeb.Model.Option

  schema "polls" do
    field(:title, :string)
    has_many(:options, Option)
    timestamps()
  end

  def changeset(%Poll{} = poll, attrs) do
    poll
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
