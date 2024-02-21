defmodule CatalogItemUpdateQueryResourceObject do
  @moduledoc """
  Provides struct and type for a CatalogItemUpdateQueryResourceObject
  """

  @type t :: %__MODULE__{
          attributes: map,
          id: String.t(),
          relationships: map | nil,
          type: String.t()
        }

  defstruct [:attributes, :id, :relationships, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attributes: :map,
      id: {:string, :generic},
      relationships: :map,
      type: {:const, "catalog-item"}
    ]
  end
end
