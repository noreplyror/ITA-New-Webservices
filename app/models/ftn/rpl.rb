module Ftn
  class Rpl
    include Indexable
    include Ftn::RplMappable
    self.source = {
      full_name: 'Restricted Party List (Non US RPL)',
      code:      'Non US RPL'
    }
  end
end