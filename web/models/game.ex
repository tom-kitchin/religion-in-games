defmodule ReligionInGames.Game do
  use ReligionInGames.Web, :model

  schema "games" do
    field :title, :string
    field :genre, :string
    field :year_published, :string
    field :platform, :string
    field :developer, :string
    field :country_of_origin, :string
    field :release_language, :string
    field :real_religion, :boolean, default: false
    field :adapted_religion, :boolean, default: false
    field :fictional_religion, :boolean, default: false
    field :openly_lgbtq_characters, :boolean, default: false
    field :customisable_character, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :genre, :year_published, :platform, :developer, :country_of_origin, :release_language, :real_religion, :adapted_religion, :fictional_religion, :openly_lgbtq_characters, :customisable_character])
    |> validate_required([:title, :genre, :year_published, :platform, :developer, :country_of_origin, :release_language, :real_religion, :adapted_religion, :fictional_religion, :openly_lgbtq_characters, :customisable_character])
  end
end
