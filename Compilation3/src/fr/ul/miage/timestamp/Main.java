/**
 * 
 */
package fr.ul.miage.timestamp;

import java.io.FileReader;
import fr.ul.miage.timestamp.generated.ParserCup;
import fr.ul.miage.timestamp.generated.Yylex;



/**
 * @author gharnati & keller
 *
 */
public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		if (args.length != 1){
			System.err.println("il manque un argument");
			System.exit(1);
		}
		try {
			ParserCup parser = new ParserCup(new Yylex(new FileReader(args[0])));
			parser.parse();
			System.out.println("Analyse terminé avec succès");
		} catch (Exception e) {
			System.err.println("Erreur de syntaxe");
		}
	}

}
