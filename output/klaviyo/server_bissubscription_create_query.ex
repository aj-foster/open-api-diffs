defmodule ServerBissubscriptionCreateQuery do
  @moduledoc """
  Provides struct and type for a ServerBissubscriptionCreateQuery
  """

  @type t :: %__MODULE__{data: ServerBissubscriptionCreateQueryResourceObject.t()}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: {ServerBissubscriptionCreateQueryResourceObject, :t}]
  end
end
