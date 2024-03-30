defmodule ToyApp.Repo.Migrations.CreateMicroposts do
  use Ecto.Migration

  def change do
    create table(:microposts) do
      add :content, :text
      add :user_id, references(:users)

      timestamps(type: :utc_datetime)
    end
  end
end
