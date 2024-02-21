defmodule Smschannel do
  @moduledoc """
  Provides struct and type for a Smschannel
  """

  @type t :: %__MODULE__{marketing: Smsmarketing.t() | nil}

  defstruct [:marketing]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [marketing: {Smsmarketing, :t}]
  end
end
