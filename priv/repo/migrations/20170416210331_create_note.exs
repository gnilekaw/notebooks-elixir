defmodule Notebooks.Repo.Migrations.CreateNote do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :number, :integer
      add :content, :text

      timestamps()
    end

  end
end
