module Ftn
  class RplConsolidated
    include Searchable
    self.model_classes = [ Ftn::Rpl ]
  end
end