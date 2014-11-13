require 'pry'

people_csv = [
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Ben,Cochrane,info@ben.com,456 Real Street,Real Town",
  "Paul,Gibby,info@gibby.com,789 Some Street,Some Town",
  "Steve,Stenson,info@stenson.com,435 Jade Street,Jade Town",
  "John,Maxwell,info@john.com,869 Jenny Street,Jenny Town",
  "Peter,Watson-Hamblin,info@fluffyjack.com,123 Drake Street,Drake Town",
  "Mike,Watson-Hamblin,info@fluffyjack.com,123 Shady Street,Sydney Town",
  "Julie,Watson-Hamblin,info@fluffyjack.com,123 Miller Street,Miller Town",
  "Stephie,Watson-Hamblin,info@fluffyjack.com,123 Goove Street,Groove Town",
  "Brenda,Jennings,info@jennings.com,212 Zac Street,Zac Town",
]


people_hashes = [
  {
    first_name: "Jack",
    last_name: "Watson-Hamblin",
    email: "info@fluffyjack.com",
    street_address: "123 Fake Street",
    suburb: "Fake Town"
  }
]

binding.pry

result = people_csv.map do |csv_string|
  string_parts = csv_string.split(",")

  {
    first_name: string_parts[0],
    last_name: string_parts[1],
    email: string_parts[2],
    street_address: string_parts[3],
    suburb: string_parts[4]
  }
end

p result
