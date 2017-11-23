module Ftn
  class Rpl
    include Indexable
    include Ftn::Mappable
    self.source = {
      full_name: 'Restricted Party List (Non US RPL)',
      code:      'Non US RPL',
    }
  end
end