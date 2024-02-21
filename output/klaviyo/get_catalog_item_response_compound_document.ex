defmodule GetCatalogItemResponseCompoundDocument do
  @moduledoc """
  Provides struct and type for a GetCatalogItemResponseCompoundDocument
  """

  @type t :: %__MODULE__{data: map, included: [CatalogVariantResponseObjectResource.t()] | nil}

  defstruct [:data, :included]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: :map, included: [{CatalogVariantResponseObjectResource, :t}]]
  end
end
