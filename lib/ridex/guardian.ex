defmodule Ridex.Guardian do
  use Gardian, otp_app: :ridex

  def subject_for_token(%{id: user_id}, _claim) do
    {:ok, user_id}
  end

  def resource_from_claims(%{"sub" => subject}) do
    nil -> {:error, :not_found}
    user -> {:ok, user}
  end
end