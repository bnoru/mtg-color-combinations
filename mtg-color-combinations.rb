color_combination = []
finished = false

while finished != true
    puts "Add color or press Enter:"
    color_add = gets.downcase
    case color_add
        when "w\n", "white\n"
            color_combination.push("w")
        when "u\n", "blue\n"
            color_combination.push("u")
        when "b\n", "black\n"
            color_combination.push("b")
        when "r\n", "red\n"
            color_combination.push("r")
        when "g\n", "green\n"
            color_combination.push("g")
        when "\n"
            finished = true
        else color_combination.push(color_add.chomp)
    end
end

combination_final = color_combination.to_s.split('').uniq.sort.join.delete("\"").delete("[").delete("]").delete(" ").delete(",")

case combination_final

    # One color

when "w"
    name = "White"
when "u"
    name = "Blue"
when "b"
    name = "Black"
when "r"
    name = "Red"
when "g"
    name = "Green"

    # Two colors

when "uw"
    name = "Azorius"
when "bu"
    name = "Dimir"
when "br"
    name = "Rakdos"
when "gr"
    name = "Gruul"
when "gw"
    name = "Selesnya"
when "bw"
    name = "Orzhov"
when "bg"
    name = "Golgari"
when "gu"
    name = "Simic"
when "ru"
    name = "Izzet"
when "rw"
    name = "Boros"

    # Three colors

when "bgr"
    name = "Jund"
when "grw"
    name = "Naya"
when "guw"
    name = "Bant"
when "buw"
    name = "Esper"
when "bru"
    name = "Grixis"
when "gru"
    name = "Temur"
when "ruw"
    name = "Jeskai"
when "brw"
    name = "Mardu"
when "bgw"
    name = "Abzan"
when "ubg"
    name = "Sultai"

    # Four colors

when "bgrw"
    name = "Dune"
when "gruw"
    name = "Ink"
when "bguw"
    name = "Witch"
when "burw"
    name = "Yore"
when "bgru"
    name = "Glint"
when "bgruw"
    name = "Five-color / Domain"

    # Else

else name = "Not recognized"
    
end
puts name