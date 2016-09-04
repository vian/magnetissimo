defmodule Magnetissimo.TorrentView do
  use Magnetissimo.Web, :view
  use Timex
  import Scrivener.HTML

  def seeders(seeders) do
    seeders || 0
  end

  def leechers(leechers) do
    leechers || 0
  end

  def uploaded_at(uploaded_at) do
    if uploaded_at do
      uploaded_at |> Timex.from_now
    else
      "N/A"
    end
  end
end
