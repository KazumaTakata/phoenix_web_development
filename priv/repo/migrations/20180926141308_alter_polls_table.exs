defmodule Sampler.Repo.Migrations.AlterPollsTable do
  use Ecto.Migration

  def change do
    alter table("polls") do
      timestamps()
    end
  end
end
