defmodule GetCampaignMessagesRelationshipListResponseCollection do
  @moduledoc """
  Provides struct and type for a GetCampaignMessagesRelationshipListResponseCollection
  """

  @type t :: %__MODULE__{data: [map]}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [:map]]
  end
end
