
=begin
Un premier programme qui va repasser sur chaque élément du CSV/JSON et ajouter une 
colonne supplémentaire avec le handle twitter
une recherche avec mairie [NOM_COMMUNE] en prenant le premier résultat devrait faire l'affaire ;)
=end

class Handle
    attr_accessor :hash_base, :tab
    def initialize(hash)
        @hash_base = hash
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