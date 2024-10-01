import Toybox.WatchUi;
import Toybox.Lang;
import Toybox.System;

class drinks_Menu2Delegate extends WatchUi.Menu2InputDelegate {
    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item as WatchUi.MenuItem) {
        // Tequila-based drinks
        var recipe_list = [];
        if (item.getId().equals("marg")) {
            System.println("Recipe: Margarita");
            recipe_list = ["2 oz tequila", "1 oz lime juice", "1 oz triple sec", "1 oz simple syrup", "lime wedge", "salt"]; 
        } else if (item.getId().equals("palo")) {
            System.println("Recipe: Paloma");
            recipe_list = ["2 oz tequila", "1 oz lime juice", "1 oz grapefruit juice", "1 oz simple syrup", "club soda", "grapefruit wedge"];
        } else if (item.getId().equals("giml")) {
            System.println("Recipe: Gimlet");
            recipe_list = ["2 oz gin", "1 oz lime juice", "1 oz simple syrup", "lime wedge"];
        } else if (item.getId().equals("ginf")) {
            System.println("Recipe: Gin Fizz");
            recipe_list = ["2 oz gin", "1 oz lemon juice", "1 oz simple syrup", "club soda", "lemon twist"];
        } else if (item.getId().equals("mart")) {
            System.println("Recipe: Martini");
            recipe_list = ["2 oz gin", "1 oz dry vermouth", "olive or lemon twist"];
        } else if (item.getId().equals("negr")) {
            System.println("Recipe: Negroni");
            recipe_list = ["1 oz gin", "1 oz sweet vermouth", "1 oz Campari", "orange twist"];
        } else if (item.getId().equals("tomc")) {
            System.println("Recipe: Tom Collins");
            recipe_list = ["2 oz gin", "1 oz lemon juice", "1 oz simple syrup", "club soda", "lemon wedge"];
        // Rum-based drinks
        } else if (item.getId().equals("daiq")) {
            System.println("Recipe: Daiquiri");
            recipe_list = ["2 oz rum", "1 oz lime juice", "1 oz simple syrup", "lime wedge"];
        } else if (item.getId().equals("mait")) {
            System.println("Recipe: Mai Tai");
            recipe_list = ["2 oz rum", "1 oz lime juice", "1 oz orange curacao", "1 oz orgeat syrup", "1 oz dark rum", "mint sprig"];
        } else if (item.getId().equals("moji")) {
            System.println("Recipe: Mojito");
            recipe_list = ["2 oz rum", "1 oz lime juice", "1 oz simple syrup", "club soda", "mint sprig"];
        } else if (item.getId().equals("pina")) {
            System.println("Recipe: Pina Colada");
            recipe_list = ["2 oz rum", "2 oz coconut cream", "4 oz pineapple juice", "pineapple wedge", "maraschino cherry"];
        // Vodka-based drinks
        } else if (item.getId().equals("blod")) {
            System.println("Recipe: Bloody Mary");
            recipe_list = ["2 oz vodka", "4 oz tomato juice", "1 oz lemon juice", "1 tsp Worcestershire sauce", "1 tsp hot sauce", "celery stalk"];
        } else if (item.getId().equals("cosm")) {
            System.println("Recipe: Cosmopolitan");
            recipe_list = ["2 oz vodka", "1 oz triple sec", "1 oz cranberry juice", "1 oz lime juice", "lime twist"];
        } else if (item.getId().equals("mule")) {
            System.println("Recipe: Moscow Mule");
            recipe_list = ["2 oz vodka", "1 oz lime juice", "4 oz ginger beer", "lime wedge"];
        } else if (item.getId().equals("scre")) {
            System.println("Recipe: Screwdriver");
            recipe_list = ["2 oz vodka", "4 oz orange juice", "orange slice"];

        // Whiskey-based drinks
        } else if (item.getId().equals("boul")) {
            System.println("Recipe: Boulevardier");
            recipe_list = ["1 oz bourbon", "1 oz sweet vermouth", "1 oz Campari", "orange twist"];
        } else if (item.getId().equals("manh")) {
            System.println("Recipe: Manhattan");
            recipe_list = ["2 oz rye whiskey", "1 oz sweet vermouth", "2 dashes Angostura bitters", "cherry"];
        } else if (item.getId().equals("oldf")) {
            System.println("Recipe: Old Fashioned");
            recipe_list = ["2 oz bourbon", "1 sugar cube", "2 dashes Angostura bitters", "orange twist", "cherry"];
        } else if (item.getId().equals("whis")) {
            System.println("Recipe: Whiskey Sour");
            recipe_list = ["2 oz bourbon", "1 oz lemon juice", "1 oz simple syrup", "cherry", "orange slice"];
        // Other liquors and miscellaneous
        } else if (item.getId().equals("aper")) {
            System.println("Recipe: Aperol Spritz");
            recipe_list = ["3 oz Prosecco", "2 oz Aperol", "1 oz soda water", "orange slice"];
        } else if (item.getId().equals("bell")) {
            System.println("Recipe: Bellini");
            recipe_list = ["2 oz Prosecco", "1 oz peach puree"];
        } else if (item.getId().equals("espr")) {
            System.println("Recipe: Espresso Martini");
            recipe_list = ["2 oz vodka", "1 oz coffee liqueur", "1 oz espresso", "coffee beans"];
        } else if (item.getId().equals("iris")) {
            System.println("Recipe: Irish Coffee");
            recipe_list = ["1.5 oz Irish whiskey", "1 oz simple syrup", "4 oz coffee", "whipped cream"];
        } else if (item.getId().equals("mimo")) {
            System.println("Recipe: Mimosa");
            recipe_list = ["2 oz orange juice", "2 oz champagne", "orange slice"];
        }

        var menu = new WatchUi.CheckboxMenu({:title=>"Ingredients"});
        var delegate = new recipe_Menu2Delegate();

        for(var i = 0; i < recipe_list.size(); i++){
            System.println(recipe_list[i]);
            menu.addItem(
                new CheckboxMenuItem(
                    recipe_list[i],
                    null,
                    "ingr" + i,
                    false,
                    {}
                )
            );
        }

        WatchUi.pushView(menu, delegate, WatchUi.SLIDE_UP);
    }

    function onBack() as Void {
        System.exit();
    }
}
