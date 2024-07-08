defmodule GitHub.Actions.Variable do
  @moduledoc """
  Provides struct and type for a Actions.Variable
  """
  use GitHub.Encoder

  @type t :: %__MODULE__{
          __info__: map,
          created_at: DateTime.t(),
          name: String.t(),
          updated_at: DateTime.t(),
          value: String.t()
        }

  defstruct [:__info__, :created_at, :name, :updated_at, :value]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      created_at: {:string, :date_time},
      name: {:string, :generic},
      updated_at: {:string, :date_time},
      value: {:string, :generic}
    ]
  end
end
