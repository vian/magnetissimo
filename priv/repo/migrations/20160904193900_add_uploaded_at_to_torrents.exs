defmodule Magnetissimo.Repo.Migrations.AddUploadedAtToTorrents do
  use Ecto.Migration

  def change do
    alter table(:torrents) do
      add :uploaded_at, :datetime
    end  
  end
end
