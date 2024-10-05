import Toybox.WatchUi;
import Toybox.Lang;
import Toybox.System;

class drinks_Menu2Delegate extends WatchUi.Menu2InputDelegate {
    function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onSelect(item as WatchUi.MenuItem) {
        // Define all recipes in a dictionary
        var recipe_dict = {
            // Tequila-based drinks
            "marg" => ["2 oz tequila", "1 oz lime juice", "1 oz triple sec", "1 oz simple syrup", "lime wedge", "salt"],
            "palo" => ["2 oz tequila", "1 oz lime juice", "1 oz grapefruit juice", "1 oz simple syrup", "club soda", "grapefruit wedge"],
            // Gin-based drinks
            "giml" => ["2 oz gin", "1 oz lime juice", "1 oz simple syrup", "lime wedge"],
            "ginf" => ["2 oz gin", "1 oz lemon juice", "1 oz simple syrup", "club soda", "lemon twist"],
            "mart" => ["2 oz gin", "1 oz dry vermouth", "olive or lemon twist"],
            "negr" => ["1 oz gin", "1 oz sweet vermouth", "1 oz Campari", "orange twist"],
            "tomc" => ["2 oz gin", "1 oz lemon juice", "1 oz simple syrup", "club soda", "lemon wedge"],
            // Rum-based drinks
            "daiq" => ["2 oz rum", "1 oz lime juice", "1 oz simple syrup", "lime wedge"],
            "mait" => ["2 oz rum", "1 oz lime juice", "1 oz orange curacao", "1 oz orgeat syrup", "1 oz dark rum", "mint sprig"],
            "moji" => ["2 oz rum", "1 oz lime juice", "1 oz simple syrup", "club soda", "mint sprig"],
            "pina" => ["2 oz rum", "2 oz coconut cream", "4 oz pineapple juice", "pineapple wedge", "maraschino cherry"],
            // Vodka-based drinks
            "blod" => ["2 oz vodka", "4 oz tomato juice", "1 oz lemon juice", "1 tsp Worcestershire sauce", "1 tsp hot sauce", "celery stalk"],
            "cosm" => ["2 oz vodka", "1 oz triple sec", "1 oz cranberry juice", "1 oz lime juice", "lime twist"],
            "mule" => ["2 oz vodka", "1 oz lime juice", "4 oz ginger beer", "lime wedge"],
            "scre" => ["2 oz vodka", "4 oz orange juice", "orange slice"],
            "whit" => ["2 oz vodka", "1 oz coffee liqueur", "1 oz heavy cream"],
            // Whiskey-based drinks
            "boul" => ["1 oz bourbon", "1 oz sweet vermouth", "1 oz Campari", "orange twist"],
            "manh" => ["2 oz rye whiskey", "1 oz sweet vermouth", "2 dashes Angostura bitters", "cherry"],
            "oldf" => ["2 oz bourbon", "1 sugar cube", "2 dashes Angostura bitters", "orange twist", "cherry"],
            "whis" => ["2 oz bourbon", "1 oz lemon juice", "1 oz simple syrup", "cherry", "orange slice"],
            // Other liquors and miscellaneous
            "aper" => ["3 oz Prosecco", "2 oz Aperol", "1 oz soda water", "orange slice"],
            "bell" => ["2 oz Prosecco", "1 oz peach puree"],
            "espr" => ["2 oz vodka", "1 oz coffee liqueur", "1 oz espresso", "coffee beans"],
            "iris" => ["1.5 oz Irish whiskey", "1 oz simple syrup", "4 oz coffee", "whipped cream"],
            "mimo" => ["2 oz orange juice", "2 oz champagne", "orange slice"]
        };

        // Fetch the selected recipe from the dictionary
        var recipe_list = recipe_dict[item.getId()];

        var menu = new WatchUi.Menu2({:title => "Ingredients"});
        var delegate = new recipe_Menu2Delegate();

        // Add each ingredient as a menu item
        for (var i = 0; i < recipe_list.size(); i++) {
            // System.println(recipe_list[i]);
            menu.addItem(
                new MenuItem(
                    recipe_list[i],
                    null,
                    "ingr" + i,
                    {}
                )
            );
        }

        // Push the menu view
        WatchUi.pushView(menu, delegate, WatchUi.SLIDE_UP);
    }

    function onBack() as Void {
        System.exit();
    }
}
