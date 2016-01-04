class TrieurComptage
	attr_accessor :tab;
	
	def initialize(tab)
		@tab = tab;
	end
	
	def trier(borneSuperieure = @tab.max)
		
		tabComptage = Array.new(borneSuperieure+1);
		tailleTab = @tab.size-1;
		x = 0;
		
		for i in (0..borneSuperieure) do
			tabComptage[i] = 0;
		end
		
		for i in (0..tailleTab) do
			tabComptage[@tab[i].to_i] = tabComptage[@tab[i].to_i].to_i + 1;
		end
		
		for i in (0..borneSuperieure) do
			for j in (1..tabComptage[i].to_i) do
				@tab[x] = i;
				x = x +1;
			end
		end
		@tab
	end
end

puts "Tapez la taille du tableau que vous souhaitez ?";
n = gets.to_i;
tab = Array.new(n);
indiceMax = n-1;
for i in (0..indiceMax) do
	tab[i] = rand(n);
end
tc = TrieurComptage.new(tab);
puts tc.tab.to_s
puts tc.trier.to_s