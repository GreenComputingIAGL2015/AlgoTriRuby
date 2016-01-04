class TrieurFusion
	attr_accessor :tab;
	
	def initialize(tab)
		@tab = tab;
	end
	
	def trier(tab = @tab)
		n = tab.length;
		indiceMax = n-1;
		if (n > 1)
			u = trier(tab[0,n/2]);
			v = trier(tab[n/2,n]);
			a = 0;
			b = 0;
			for i in (0..indiceMax) do
				if ((a < u.length) && (b >= v.length || u[a] <= v[b]))
					tab[i] = u[a];
					a = a+1;
				else
					tab[i] = v[b];
					b = b+1;
				end
			end
		end
		tab;
		end
	end
end

puts "Tapez la taille du tableau que vous souhaitez ?";
n = gets.to_i;
tab = Array.new(n);
indiceMax = n-1;
for i in (0..indiceMax) do
	tab[i] = rand(n);
end
tc = TrieurFusion.new(tab);
tc.tab.display;
tc.trier.display;