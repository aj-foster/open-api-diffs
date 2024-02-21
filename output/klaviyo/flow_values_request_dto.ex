defmodule FlowValuesRequestDto do
  @moduledoc """
  Provides struct and type for a FlowValuesRequestDto
  """

  @type t :: %__MODULE__{data: FlowValuesRequestDtoresourceObject.t()}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {FlowValuesRequestDtoresourceObject, :t}]
  end
end
