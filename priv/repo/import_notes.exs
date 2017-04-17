
defmodule Notebooks do
  def import_data(row) do
    row |>
    save_record
  end

 def save_record([number | content]) do
   Notebooks.Repo.insert!(%Notebooks.Note{
     number: String.to_integer(number),
     content: List.to_string(content)
   })
 end
end

file = "priv/repo/data/2013-08-04-notebooks-2.csv"

File.stream!(file) |>
# CSV.decode(separator: ?\t) |>
CSV.decode |>
Enum.map(fn row ->
  Notebooks.import_data(row)
end)

case File.read(file) do
  {:ok, body} -> Notebooks.import_data(body)
  {:error, reason} -> IO.puts reason
end

