json.partial! 'api/v2/screening_lists/addresses',
              addresses: entry[:_source][:addresses]
json.call(entry[:_source],
          #:alt_names,
          :name,
          :contact_name,
          :country,
          :start_date,
          :end_date,
          :entity_number,
          :customs_area_cd,
          :source_list_name,
          :source_list_full_name,
          :source_country_name,
          :source_agency_name
         )
json.source entry[:_source][:source][:full_name]
json.call(entry[:_source],
          :source_list_url,
          :type,
         )
