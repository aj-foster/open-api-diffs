defmodule GetCampaignResponseCollectionCompoundDocument do
  @moduledoc """
  Provides struct and type for a GetCampaignResponseCollectionCompoundDocument
  """

  @type t :: %__MODULE__{
          data: [map],
          included:
            [CampaignMessageResponseObjectResource.t() | TagResponseObjectResource.t()] | nil,
          links: CollectionLinks.t()
        }

  defstruct [:data, :included, :links]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: [:map],
      included: [
        union: [{CampaignMessageResponseObjectResource, :t}, {TagResponseObjectResource, :t}]
      ],
      links: {CollectionLinks, :t}
    ]
  end
end
