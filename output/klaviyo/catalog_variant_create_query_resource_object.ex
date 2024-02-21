defmodule CatalogVariantCreateQueryResourceObject do
  @moduledoc """
  Provides struct and type for a CatalogVariantCreateQueryResourceObject
  """

  @type t :: %__MODULE__{attributes: map, relationships: map, type: String.t()}

  defstruct [:attributes, :relationships, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [attributes: :map, relationships: :map, type: {:const, "catalog-variant"}]
  end
end
