defmodule Notebooks.Note do
  use Notebooks.Web, :model
  use Rummage.Ecto

  schema "notes" do
    field :number, :integer
    field :content, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:number, :content])
    |> validate_required([:number, :content])
  end
end
