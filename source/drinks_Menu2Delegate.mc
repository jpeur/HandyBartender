import Toybox.WatchUi;
import Toybox.System;

class drinks_Menu2Delegate extends WatchUi.Menu2InputDelegate {
    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item as WatchUi.MenuItem) as Void {
        // Tequila-based drinks
        if (item.getId().equals("marg")) {
            System.println("Recipe: Margarita");
        } else if (item.getId().equals("palo")) {
            System.println("Recipe: Paloma");

        // Gin-based drinks
        } else if (item.getId().equals("giml")) {
            System.println("Recipe: Gimlet");
        } else if (item.getId().equals("ginf")) {
            System.println("Recipe: Gin Fizz");
        } else if (item.getId().equals("mart")) {
            System.println("Recipe: Martini");
        } else if (item.getId().equals("negr")) {
            System.println("Recipe: Negroni");
        } else if (item.getId().equals("tomc")) {
            System.println("Recipe: Tom Collins");

        // Rum-based drinks
        } else if (item.getId().equals("daiq")) {
            System.println("Recipe: Daiquiri");
        } else if (item.getId().equals("mait")) {
            System.println("Recipe: Mai Tai");
        } else if (item.getId().equals("moji")) {
            System.println("Recipe: Mojito");
        } else if (item.getId().equals("pina")) {
            System.println("Recipe: Pina Colada");

        // Vodka-based drinks
        } else if (item.getId().equals("blod")) {
            System.println("Recipe: Bloody Mary");
        } else if (item.getId().equals("cosm")) {
            System.println("Recipe: Cosmopolitan");
        } else if (item.getId().equals("mule")) {
            System.println("Recipe: Moscow Mule");
        } else if (item.getId().equals("scre")) {
            System.println("Recipe: Screwdriver");

        // Whiskey-based drinks
        } else if (item.getId().equals("boul")) {
            System.println("Recipe: Boulevardier");
        } else if (item.getId().equals("manh")) {
            System.println("Recipe: Manhattan");
        } else if (item.getId().equals("oldf")) {
            System.println("Recipe: Old Fashioned");
        } else if (item.getId().equals("whis")) {
            System.println("Recipe: Whiskey Sour");

        // Other liquors and miscellaneous
        } else if (item.getId().equals("aper")) {
            System.println("Recipe: Aperol Spritz");
        } else if (item.getId().equals("bell")) {
            System.println("Recipe: Bellini");
        } else if (item.getId().equals("espr")) {
            System.println("Recipe: Espresso Martini");
        } else if (item.getId().equals("iris")) {
            System.println("Recipe: Irish Coffee");
        } else if (item.getId().equals("mimo")) {
            System.println("Recipe: Mimosa");
        }
    }
}
