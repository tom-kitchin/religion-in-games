defmodule ReligionInGames.GameTest do
  use ReligionInGames.ModelCase

  alias ReligionInGames.Game

  @valid_attrs %{adapted_religion: true, country_of_origin: "some content", customisable_character: true, developer: "some content", fictional_religion: true, genre: "some content", openly_lgbtq_characters: true, platform: "some content", real_religion: true, release_language: "some content", title: "some content", year_published: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Game.changeset(%Game{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Game.changeset(%Game{}, @invalid_attrs)
    refute changeset.valid?
  end
end
