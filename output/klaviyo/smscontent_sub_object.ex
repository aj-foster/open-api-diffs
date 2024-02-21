defmodule SmscontentSubObject do
  @moduledoc """
  Provides struct and type for a SmscontentSubObject
  """

  @type t :: %__MODULE__{body: String.t() | nil, media_url: String.t() | nil}

  defstruct [:body, :media_url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [body: {:string, :generic}, media_url: {:string, :generic}]
  end
end
