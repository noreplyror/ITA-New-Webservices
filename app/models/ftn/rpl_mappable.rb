module Ftn
  module RplMappable
    def self.included(klass)
      klass.import_rate = 'Hourly'
      klass.analyze_by :standard_asciifolding_nostop, :keyword_asciifolding_lowercase

      klass.settings.freeze

      klass.mappings = {
        klass.name.typeize => {
          properties: {
            _updated_at:                { type: 'date', format: 'strictDateOptionalTime' },
            # base names
            oid_nbr:                    { type: 'long' },
            version_id_nbr:             { type: 'long' },
            last_modification_tmstp:    { type: 'date' },
            name_nm:                    { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            contact_nm:                 { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            aka_name_nm:                { type: 'text', fields: { keyword: { type: 'keyword' }, }, },

            address_one_desc:           { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            address_two_desc:           { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            address_three_desc:         { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            city_nm:                    { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            state_province_nm:          { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            country_nm:                 { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            
            effective_dt:               { type: 'date' },
            expiration_dt:              { type: 'date' },

            source_url_nm:              { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            source_list_nm:             { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            source_agency_nm:           { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            source_country_nm:          { type: 'text', fields: { keyword: { type: 'keyword' }, }, },

            customs_area_cd:            { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            ignored_party_flag:         { type: 'text', fields: { keyword: { type: 'keyword' }, }, },
            
          },
        },
      }.merge(klass.metadata_mappings).freeze

      klass.class_eval do
        class << self
          attr_accessor :source
        end
      end
    end
  end
end