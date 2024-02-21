defmodule CouponCodeCreateJobCreateQueryResourceObject do
  @moduledoc """
  Provides struct and type for a CouponCodeCreateJobCreateQueryResourceObject
  """

  @type t :: %__MODULE__{attributes: map, type: String.t()}

  defstruct [:attributes, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [attributes: :map, type: {:const, "coupon-code-bulk-create-job"}]
  end
end
