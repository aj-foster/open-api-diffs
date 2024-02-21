defmodule CampaignValuesRequestDto do
  @moduledoc """
  Provides struct and type for a CampaignValuesRequestDto
  """

  @type t :: %__MODULE__{data: CampaignValuesRequestDtoresourceObject.t()}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {CampaignValuesRequestDtoresourceObject, :t}]
  end
end
