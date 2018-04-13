defmodule Urban.ItineraryApi do
  @moduledoc """
  The Itinerarys context.
  """

  import Ecto.Query, warn: false
  alias Urban.Repo

  alias Urban.Itinerary

  @doc """
  Returns the list of itinerarys.

  ## Examples

      iex> list_itinerarys()
      [%Itinerary{}, ...]

  """
  def list_itinerarys do
    Repo.all(Itinerary)
  end

  @doc """
  Gets a single itinerary.

  Raises `Ecto.NoResultsError` if the Itinerary does not exist.

  ## Examples

      iex> get_itinerary!(123)
      %Itinerary{}

      iex> get_itinerary!(456)
      ** (Ecto.NoResultsError)

  """
  def get_itinerary!(id), do: Repo.get!(Itinerary, id)

  @doc """
  Creates a itinerary.

  ## Examples

      iex> create_itinerary(%{field: value})
      {:ok, %Itinerary{}}

      iex> create_itinerary(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_itinerary(attrs \\ %{}) do
    %Itinerary{}
    |> Itinerary.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a itinerary.

  ## Examples

      iex> update_itinerary(itinerary, %{field: new_value})
      {:ok, %Itinerary{}}

      iex> update_itinerary(itinerary, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_itinerary(%Itinerary{} = itinerary, attrs) do
    itinerary
    |> Itinerary.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Itinerary.

  ## Examples

      iex> delete_itinerary(itinerary)
      {:ok, %Itinerary{}}

      iex> delete_itinerary(itinerary)
      {:error, %Ecto.Changeset{}}

  """
  def delete_itinerary(%Itinerary{} = itinerary) do
    Repo.delete(itinerary)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking itinerary changes.

  ## Examples

      iex> change_itinerary(itinerary)
      %Ecto.Changeset{source: %Itinerary{}}

  """
  def change_itinerary(%Itinerary{} = itinerary) do
    Itinerary.changeset(itinerary, %{})
  end
end