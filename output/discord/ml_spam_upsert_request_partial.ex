defmodule MLSpamUpsertRequestPartial do
  @moduledoc """
  Provides struct and type for a MLSpamUpsertRequestPartial
  """

  @type t :: %__MODULE__{
          actions: [map] | nil,
          enabled: boolean | nil,
          event_type: integer | nil,
          exempt_channels: [String.t()] | nil,
          exempt_roles: [String.t()] | nil,
          name: String.t() | nil,
          trigger_metadata: map | nil,
          trigger_type: 3 | nil
        }

  defstruct [
    :actions,
    :enabled,
    :event_type,
    :exempt_channels,
    :exempt_roles,
    :name,
    :trigger_metadata,
    :trigger_type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      actions: {:union, [[:map], :null]},
      enabled: {:union, [:boolean, :null]},
      event_type: :integer,
      exempt_channels: {:union, [[string: :generic], :null]},
      exempt_roles: {:union, [[string: :generic], :null]},
      name: {:string, :generic},
      trigger_metadata: {:union, [:map, :null]},
      trigger_type: {:const, 3}
    ]
  end
end
