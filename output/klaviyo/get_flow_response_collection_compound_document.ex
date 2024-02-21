defmodule GetFlowResponseCollectionCompoundDocument do
  @moduledoc """
  Provides struct and type for a GetFlowResponseCollectionCompoundDocument
  """

  @type t :: %__MODULE__{
          data: [map],
          included: [FlowActionResponseObjectResource.t() | TagResponseObjectResource.t()] | nil,
          links: CollectionLinks.t()
        }

  defstruct [:data, :included, :links]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: [:map],
      included: [union: [{FlowActionResponseObjectResource, :t}, {TagResponseObjectResource, :t}]],
      links: {CollectionLinks, :t}
    ]
  end
end
