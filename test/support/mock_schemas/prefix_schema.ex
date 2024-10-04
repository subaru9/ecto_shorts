defmodule EctoShorts.Support.MockSchemas.PrefixSchema do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  @schema_prefix "mock_schema_prefix"

  schema "prefix_schemas" do
    field :body, :string

    timestamps()
  end

  @available_fields [:body]

  def changeset(model_or_changeset, attrs \\ %{}) do
    cast(model_or_changeset, attrs, @available_fields)
  end
end