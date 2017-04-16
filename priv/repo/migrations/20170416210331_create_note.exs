defmodule Notebooks.Repo.Migrations.CreateNote do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :number, :integer
      add :content, :string

      timestamps()
    end

  end
end
