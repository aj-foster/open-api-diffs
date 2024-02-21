defmodule GetTagResponseCollectionCompoundDocument do
  @moduledoc """
  Provides struct and type for a GetTagResponseCollectionCompoundDocument
  """

  @type t :: %__MODULE__{
          data: [map],
          included: [TagGroupResponseObjectResource.t()] | nil,
          links: CollectionLinks.t()
        }

  defstruct [:data, :included, :links]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [:map], included: [{TagGroupResponseObjectResource, :t}], links: {CollectionLinks, :t}]
  end
end
