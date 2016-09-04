defmodule Magnetissimo.TorrentView do
  use Magnetissimo.Web, :view
  require Timex
  use Timex.DateFormat
  import Scrivener.HTML

  def seeders(seeders) do
    seeders || 0
  end

  def leechers(leechers) do
    leechers || 0
  end

  def uploaded_at(uploaded_at) do
    (uploaded_at |> DateFormat.format("%Y-%m-%d %H:%M:%S", :strftime)) || "N/A"
  end
end
