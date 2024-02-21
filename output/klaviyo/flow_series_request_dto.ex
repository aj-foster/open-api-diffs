defmodule FlowSeriesRequestDto do
  @moduledoc """
  Provides struct and type for a FlowSeriesRequestDto
  """

  @type t :: %__MODULE__{data: FlowSeriesRequestDtoresourceObject.t()}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {FlowSeriesRequestDtoresourceObject, :t}]
  end
end
