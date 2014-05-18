class InquilinosController < PersonasController

  # GET /personas
  # GET /personas.json
  def index
    @personas = Persona.where(es_inquilino: true)
  end


end