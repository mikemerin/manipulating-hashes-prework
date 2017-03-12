def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts["Jon Snow"][:address] = "The Lord Commander's Rooms, The Wall, Westeros"
  contacts.each do |name, v|
    v.each do |a,b|
      b.delete("strawberry") if a == :favorite_icecream_flavors
    end
  end

=begin

# shorter but more direct way

  contacts["Freddy Mercury"][:favorite_icecream_flavors].delete("strawberry")

=end

  contacts
end
