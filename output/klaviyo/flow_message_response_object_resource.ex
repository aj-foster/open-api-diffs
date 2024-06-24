defmodule FlowMessageResponseObjectResource do
  @moduledoc """
  Provides struct and type for a FlowMessageResponseObjectResource
  """

  @type t :: %__MODULE__{
          attributes: map,
          id: String.t(),
          links: ObjectLinks.t(),
          type: String.t()
        }

  defstruct [:attributes, :id, :links, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      attributes: :map,
      id: {:string, :generic},
      links: {ObjectLinks, :t},
      type: {:const, "flow-message"}
    ]
  end
end
