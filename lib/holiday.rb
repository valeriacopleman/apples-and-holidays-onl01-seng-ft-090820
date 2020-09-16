require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  #holiday_supplies=
  #{
  #   :winter => {
 #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |days, data|
        if days == :christmas || days == :new_years
          data << supply
        end
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
 
holiday_hash[season][holiday_name] = supply_array


end

def all_winter_holiday_supplies(holiday_hash)
  
  winter_supplies_array=[]
  winter_supplies_array << holiday_hash[:winter][:christmas]
  winter_supplies_array << holiday_hash[:winter][:new_years]
  winter_supplies_array.to_s 
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |seasons, holidays|

    holidays.each do |holidays, supplies|
      #puts "#{seasons.to_s.capitalize}:"
      holidays.split('_').map(&:capitalize).join(' ')
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_keys=[]
  holiday_hash.each do |season, holidays|
    holidays.collect do |holiday_name, supplies|
      if supplies.include?("BBQ")
        holiday_keys << holiday_name
      end 
    end 
  end
holiday_keys
end






