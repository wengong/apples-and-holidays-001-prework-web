holiday_supplies =
    {
      :winter => {
        :christmas => ["Lights", "Wreath"],
        :new_years => ["Party Hats"]
      },
      :summer => {
        :fourth_of_july => ["Fireworks", "BBQ"]
      },
      :fall => {
        :thanksgiving => ["Turkey"]
      },
      :spring => {
        :memorial_day => ["BBQ"]
      }
    }



xyz=Array.new
holiday_supplies.each do |a,b|

  b.collect do |c,d|
    if d.include?("BBQ")
      xyz[xyz.size]=":#{c}"
    end
  end

end
print xyz
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do|a,b|
    puts "#{a.capitalize}:"
    b.each do |c,d|
      e=d.join(", ")
      #if c.include?("_")
      # string.gsub(/\S+/, &:capitalize)
      puts "  #{(c.to_s.sub("_"," ")).sub("_"," ").gsub(/\S+/, &:capitalize)}: #{e}"
    #a.each do |b,c|
      #if c.size>1
     # puts "#{b.to_s}: #{c}/n"
      #end
    #end
    end
  end
end

#all_supplies_in_holidays(holiday_supplies)













