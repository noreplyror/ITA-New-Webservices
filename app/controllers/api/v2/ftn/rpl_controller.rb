class Api::V2::Ftn::RplController < Api::V2Controller
  search_by :countries, :q, :type, :sources, :name, :address,
            :end_date, :start_date, :expiration_date, :issue_date, 
            :fuzzy_name, :sort
end