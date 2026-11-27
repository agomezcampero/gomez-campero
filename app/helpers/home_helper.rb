module HomeHelper
  Logo = Data.define(:name, :image, :url)

  def clients
    [
      Logo.new("ET Brands", "logos/et-brands.webp", "https://etbrands.cl"),
      Logo.new("Nauta", "logos/nauta.png", "https://www.nauta.pro"),
      Logo.new("Candelaria Apoya", "logos/candelaria-apoya.webp", "https://www.candelariaapoya.org"),
      Logo.new("Atando Cabos", "logos/atando-cabos.png", "https://atandocabos.cl"),
      Logo.new("Animales Financieros", "logos/animales-financieros.png", "https://www.animalesfinancieros.com"),
      Logo.new("NSS", "logos/nss.png", "https://www.nss.cl"),
      Logo.new("DVA Capital", "logos/dva.svg", "https://www.dvacapital.com"),
      Logo.new("Befinan", "logos/befinan.svg", nil)
    ]
  end

  def previous_companies
    [
      Logo.new("Fanatiz", "logos/fanatiz.webp", "https://www.fanatiz.com"),
      Logo.new("Platanus", "logos/platanus.svg", "https://www.platan.us"),
      Logo.new("Cleary", "logos/cleary.svg", "https://www.gocleary.com")
    ]
  end

  def platanus_startups
    [
      Logo.new("Buda", "logos/buda.svg", "https://www.buda.com"),
      Logo.new("Reversso", "logos/reversso.svg", "https://www.reversso.com"),
      Logo.new("Comunidad Feliz", "logos/comunidad-feliz.svg", "https://www.comunidadfeliz.cl")
    ]
  end

  def logo_tag(logo)
    image = image_tag(logo.image, alt: logo.name, class: "logo__image")

    if logo.url
      link_to image, logo.url, class: "logo", target: "_blank", rel: "noopener", title: logo.name
    else
      tag.span image, class: "logo", title: logo.name
    end
  end
end
