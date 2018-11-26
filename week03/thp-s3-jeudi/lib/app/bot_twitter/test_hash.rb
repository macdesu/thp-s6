require ''
=begin
Un premier programme qui va repasser sur chaque élément du CSV/JSON et ajouter une colonne supplémentaire avec le handle twitter
une recherche avec mairie [NOM_COMMUNE] en prenant le premier résultat devrait faire l'affaire ;)
=end

class Handle
    attr_accessor :hash_base, :tab
    def initialize
        @hash_base =  {"ville1" => "email.com1", "ville2" => "email.com2", "ville3" => "email.com3"}
        @tab = get_handle
    end
    
    def get_handle
        @tab_ville = []
        @hash_base.each do |k, v|
            @tab_ville << "@#{k}"
        end
        return @tab_ville
    end

end