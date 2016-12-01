defmodule ReligionInGames.Repo.Migrations.CreateGame do
  use Ecto.Migration

  def change do
    create table(:games) do
      add :title, :string
      add :genre, :string
      add :year_published, :string
      add :platform, :string
      add :developer, :string
      add :country_of_origin, :string
      add :release_language, :string
      add :real_religion, :boolean, default: false, null: false
      add :adapted_religion, :boolean, default: false, null: false
      add :fictional_religion, :boolean, default: false, null: false
      add :openly_lgbtq_characters, :boolean, default: false, null: false
      add :customisable_character, :boolean, default: false, null: false

      timestamps()
    end

  end
end
