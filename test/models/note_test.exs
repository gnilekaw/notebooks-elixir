defmodule Notebooks.NoteTest do
  use Notebooks.ModelCase

  alias Notebooks.Note

  @valid_attrs %{content: "some content", number: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Note.changeset(%Note{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Note.changeset(%Note{}, @invalid_attrs)
    refute changeset.valid?
  end
end
