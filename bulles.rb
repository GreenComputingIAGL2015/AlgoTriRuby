class TrieurBulles
	attr_accessor :tab;
	
	def initialize(tab)
		@tab = tab;
	end       
	
	def trier()
		i = @tab.length;
		echange = true;
		while ((i>0) && (echange)) do
			echange = false;
			for j in (0..(i-2)) do
				if (@tab[j] > @tab[j+1])
					tmp = @tab[j];
					@tab[j] = @tab[j+1];
					@tab[j+1] = tmp;
					echange = true;
				end
			end
			i = i-1;
		end
		@tab;
	end
end

puts "Tapez la taille du tableau que vous souhaitez ?";
n = gets.to_i;
tab = Array.new(n);
indiceMax = n-1;
for i in (0..indiceMax) do
	tab[i] = rand(n);
end
tc = TrieurBulles.new(tab);
tc.tab.display;
tc.trier.display;