class Api::V2::Ftn::RplController < Api::V2Controller
  search_by :countries, :q, :type, :sources, :name_nm, 
  :address_one_desc, :address_two_desc, :address_three_desc,
            :passport, :start_date, :expiration_date, :effective_dt, 
            :fuzzy_name, :sort
end
