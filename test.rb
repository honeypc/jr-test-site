class Fruit
    attr_accessor :kind, :animal
    def wow
        puts "#{animal} eating #{kind}"
    end
end
f = Fruit.new
f.animal = "Rabbit"
f.kind = "carrot"
f.wow #>Rabbit eating carrot