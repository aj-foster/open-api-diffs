defmodule CatalogVariantUpdateQueryResourceObject do
  @moduledoc """
  Provides struct and type for a CatalogVariantUpdateQueryResourceObject
  """

  @type t :: %__MODULE__{
          attributes: CatalogVariantUpdateQueryResourceObjectAttributes.t(),
          id: String.t(),
          type: String.t()
        }

  defstruct [:attributes, :id, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attributes: {CatalogVariantUpdateQueryResourceObjectAttributes, :t},
      id: {:string, :generic},
      type: {:const, "catalog-variant"}
    ]
  end
end
