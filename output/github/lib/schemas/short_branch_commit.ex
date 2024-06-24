defmodule GitHub.ShortBranchCommit do
  @moduledoc """
  Provides struct and type for a ShortBranchCommit
  """
  use GitHub.Encoder

  @type t :: %__MODULE__{__info__: map, sha: String.t(), url: String.t()}

  defstruct [:__info__, :sha, :url]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [sha: {:string, :generic}, url: {:string, :uri}]
  end
end
