package metier;

public class MetierJeu {
	
	private int nombreSecret;
	private boolean fin;
	
	public MetierJeu() {
		
	}
	
	public void genererSecret() {
		this.nombreSecret = (int) (Math.random()*1000);
	}
	
	public String jouer(int nb) {
		if (fin == false) {
			if (nb > nombreSecret) {
				return "Votre nombre est plus grand";
			}else if(nb < nombreSecret) {
				return "Votre nombre est plus petit";
			}else {
				return "Bravo vous avez gagné";
			}
		}else {
			return "Le jeu est terminé, le nombre recherché est " + nombreSecret;
		}
	}

	public int getNombreSecret() {
		return nombreSecret;
	}

	public void setNombreSecret(int nombreSecret) {
		this.nombreSecret = nombreSecret;
	}

	public boolean isFin() {
		return fin;
	}

	public void setFin(boolean fin) {
		this.fin = fin;
	}
	
}
