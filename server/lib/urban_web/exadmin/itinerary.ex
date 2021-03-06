defmodule UrbanWeb.ExAdmin.Itinerary do
  use ExAdmin.Register

  alias Urban.Itinerary
  alias Urban.Attachment

  register_resource Itinerary do
    show _ do
      attributes_table do
        row(:title)
        row(:description)
        row(:booking_url)

        row(
          :image,
          [],
          &Attachment.url({&1.image, &1}, :thumb)
        )
      end
    end
  end
end
