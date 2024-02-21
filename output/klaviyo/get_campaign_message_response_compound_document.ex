defmodule GetCampaignMessageResponseCompoundDocument do
  @moduledoc """
  Provides struct and type for a GetCampaignMessageResponseCompoundDocument
  """

  @type t :: %__MODULE__{
          data: map,
          included:
            [CampaignResponseObjectResource.t() | TemplateResponseObjectResource.t()] | nil
        }

  defstruct [:data, :included]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      data: :map,
      included: [
        union: [{CampaignResponseObjectResource, :t}, {TemplateResponseObjectResource, :t}]
      ]
    ]
  end
end
