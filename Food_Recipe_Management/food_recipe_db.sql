-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 09:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_recipe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `tbl_category_id` int(11) NOT NULL,
  `category_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`tbl_category_id`, `category_name`) VALUES
(1, 'Breakfast'),
(2, 'Lunch'),
(3, 'Dinner'),
(4, 'Appetizer'),
(7, 'Dessert'),
(8, 'Fast Food');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recipe`
--

CREATE TABLE `tbl_recipe` (
  `tbl_recipe_id` int(11) NOT NULL,
  `tbl_category_id` int(11) NOT NULL,
  `recipe_image` text NOT NULL,
  `recipe_name` text NOT NULL,
  `recipe_ingredients` text NOT NULL,
  `recipe_procedure` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_recipe`
--

INSERT INTO `tbl_recipe` (`tbl_recipe_id`, `tbl_category_id`, `recipe_image`, `recipe_name`, `recipe_ingredients`, `recipe_procedure`) VALUES
(1, 1, 'frenchtoast.jpg', 'French Toast', '- 4 large eggs\r\n- 2/3 cup milk\r\n- 2 teaspoons cinnamon\r\n- Pinch nutmeg\r\n- 8 thick slices slightly stale Italian bread ¾ inch\r\n- 2 tablespoons melted butter or neutral oil\r\n- Maple syrup, butter, fruit, and confectioners’ sugar for serving', '1. Whisk together eggs, milk, cinnamon, and nutmeg in a medium bowl. Add in any other spices or seasonings at this time; you can add a pinch of ground cardamom or allspice if you like for an extra touch. Whisk egg mixture until well blended and pour into a wide shallow bowl or cake pan.\r\n\r\n2. Place each slice of bread into egg mixture, immersing bread and allowing it to soak for 1 minute.\r\n\r\n3. Melt butter in a large skillet over medium-high. Lift bread from egg mixture, letting excess egg drip off before placing bread in skillet. Fry French toast until browned on one side, about 2 minutes. Flip and brown on other side, about 2 minutes. Repeat with remaining bread. Serve French toast hot with butter, maple syrup, and/or fresh berries or other fruit. Dust with confectioners’ sugar if desired.'),
(5, 1, 'Croque Madame.jpg', 'Croque Madame', '- 4 (1/2-inch-thick) good-quality firm white sandwich bread slices\r\n- 3 tablespoons unsalted butter, softened, divided\r\n- 1 tablespoon all-purpose flour\r\n- ¾ cup whole milk\r\n- 4 ounces Gruyère cheese, grated on small holes of box grater (about 1 cup), divided\r\n- ½ teaspoon kosher salt\r\n- ¼ teaspoon black pepper, plus more for garnish\r\n- ¼ teaspoon ground nutmeg\r\n- 4 slices cooked unsmoked ham (3 ounces total; such as Jamon de Paris)\r\n- 1 tablespoon Dijon mustard\r\n- 2 large eggs\r\n- Chopped fresh chives\r\n- Flaky sea salt', '1. Preheat oven to broil with rack about 8 inches from heat source. Heat a large nonstick skillet over medium-high. Spread 1 side of bread slices evenly with 1 tablespoon of the butter. Place bread slices, buttered side down, in skillet; cook until toasted and golden, 2 to 4 minutes. Transfer bread to a work surface. Wipe skillet clean.\r\n2. Melt 1 tablespoon of the butter in a small saucepan over medium until foamy. Whisk in flour; cook, whisking constantly, until light golden, about 1 minute, 30 seconds. Gradually whisk in milk; bring to a simmer over medium, whisking constantly. Reduce heat to low; cook, whisking often, until thickened, about 3 minutes. Remove from heat. Add 1/4 cup of the grated Gruyère and whisk until melted. Stir salt, pepper, and nutmeg into the Mornay sauce. (If not using immediately, cover surface of sauce directly with plastic wrap for up to 1 hour.)\r\n3. Arrange 2 of the bread slices on a work surface, toasted side down. On each slice, spread 2 tablespoons Mornay sauce to evenly to cover the surface. Sprinkle with 1/4 cup grated Gruyère, and top with 2 ham slices. Spread mustard evenly on untoasted sides of remaining 2 bread slices; place, mustard side down, on top of ham-topped slices. Spread remaining Mornay sauce evenly on top of sandwiches, then top with remaining 1/4 cup grated Gruyère.\r\n4. Transfer sandwiches to a rimmed baking sheet, and broil in preheated oven until cheese has melted and top is bubbly and browning in spots, 5 to 7 minutes.\r\n5. Meanwhile, melt remaining 1 tablespoon butter in cleaned nonstick skillet over medium-high. Crack eggs into skillet; cook, undisturbed, until whites are set but yolks are runny, about 3 minutes.\r\n6. Top each sandwich with a fried egg; garnish with chives, flaky sea salt, and additional pepper.'),
(6, 1, 'Egg Bhurji.jpg', 'Egg Bhurji', '- 2 tablespoons ghee or butter\r\n- ½ cup chopped onion\r\n- 2 teaspoons 1finely chopped green chile\r\n- 1 teaspoon grated peeled fresh ginger\r\n- 1 teaspoon finely chopped garlic\r\n- ½ cup chopped tomatoes\r\n- 1 teaspoon ground coriander\r\n- ½ teaspoon ground turmeric powder\r\n- ½ teaspoon garam masala\r\n- ½ teaspoon kashmiri chile powder or other red chile powder\r\n- Kosher salt to taste\r\n- 4 large eggs, lightly beaten\r\n- 1 teaspoon fresh lemon juice\r\n- 2 tablespoons chopped fresh cilantro, for serving', '1. In a medium skillet, heat the ghee over medium. Add the onion, chile, ginger, and garlic and cook, stirring often, until the onions are translucent, about 4 minutes. Add the tomatoes and spices and cook, stirring often, until the spices are toasted and the tomatoes soften, 2 to 3 minutes.\r\n2. Add the eggs. Stir until the eggs are softly scrambled, about 2 minutes. Stir in the lemon juice and serve right away, garnished with the chopped cilantro.'),
(7, 1, 'Eggs Benedict Toast.jpg', 'Eggs Benedict Toast', '- 3 large egg yolks\r\n- 1 tablespoon cold water\r\n- 1 teaspoon cornstarch\r\n- 1 teaspoon Dijon mustard\r\n- 1 ½ tablespoons fresh lemon juice, divided\r\n- 1 teaspoon kosher salt, divided\r\n- 12 tablespoons unsalted butter (6 ounces), melted, plus 2 tablespoons cold unsalted butter, divided\r\n- ⅛ teaspoon cayenne pepper\r\n- Warm water, as needed\r\n- 4 cold large eggs\r\n- 4 (1/2-inch-thick) sourdough bread slices, toasted\r\n- 8 thin prosciutto or speck slices (about 4 ounces)\r\n- 2 tablespoons roughly chopped fresh soft herbs (such as tarragon and chives)\r\n- Freshly ground black pepper (optional)', '1. Whisk egg yolks in a small saucepan until smooth, about 1 minute. Add 1 tablespoon cold water, cornstarch, Dijon, 1 tablespoon lemon juice, and 1/2 teaspoon salt; whisk until thoroughly combined. Prepare a bowl of ice water large enough to dip bottom of saucepan into; set aside.\r\n2. Add 1 tablespoon cold butter to egg yolk mixture; place over very low heat. Cook, whisking constantly, until thickened and bubbles have disappeared, 1 to 2 minutes, being careful not to curdle egg mixture. (If egg mixture looks anything but perfectly smooth, remove from heat, and briefly plunge saucepan into ice water, whisking constantly.) When butter is completely incorporated and mixture has thickened, immediately add remaining 1 tablespoon cold butter; remove from heat, and whisk until smooth.\r\n3. While whisking egg yolk mixture constantly, slowly add 2 tablespoons melted butter, 1/4 teaspoon at a time, until mixture begins to thicken, about 1 minute. Whisking constantly, add remaining 10 tablespoons melted butter, 1 tablespoon at a time, until sauce is smooth, about 2 minutes. Whisk in cayenne, remaining 1/2 tablespoons lemon juice, and remaining 1/2 teaspoon salt. Add warm water, 1 teaspoon at a time, as needed until sauce is thin enough to spread out on its own a bit but still thick and billowy. Cover pan, and move to back of stove, or set over another pan with hot water in it, to keep sauce warm. Add more warm water to thin if needed after resting.\r\n4. Set a steamer basket in a medium saucepan, and fill pan with 1 inch of water. Bring to a simmer over medium; add cold eggs. Cover and cook eggs 7 minutes for runny yolks, increasing time by 30-second increments up to 8 minutes and 30 seconds for less runny yolks. Transfer eggs to ice bath; let stand 1 to 2 minutes. Carefully peel eggs.\r\n5. To assemble, drape each piece of sourdough toast with 2 prosciutto slices. Cut peeled eggs carefully in half lengthwise, and top each toast with 2 egg halves. Spoon 1/4 cup hollandaise over each toast; sprinkle with herbs and, if desired, black pepper.'),
(8, 1, 'Cinnamon Pancake.jpg', 'Cinnamon Pancakes', '- 1 1/4 cups all-purpose flour\r\n- 3/4 cup cornmeal\r\n- 1 tablespoon sugar\r\n- 1 teaspoon cinnamon\r\n- 1 teaspoon baking powder\r\n- 1/2 teaspoon baking soda\r\n- Pinch of salt\r\n- 1 cup low-fat buttermilk\r\n- 2 large eggs, beaten\r\n- 1/4 cup olive oil\r\n- 1/4 cup water', '1. In a bowl, whisk the flour with the cornmeal, sugar, cinnamon, baking powder, baking soda and salt. In a bowl, whisk the buttermilk with the eggs, olive oil and water. Whisk the liquid ingredients into the dry ingredients, leaving small lumps.\r\n2. Set a griddle or skillet over moderate high heat and spray it with vegetable oil spray. When the pan is hot, spoon in 1/4-cup mounds of batter and spread to form 4-inch rounds. Cook the pancakes until the bottoms are browned and bubbles appear on the surface, 2 minutes. Flip and cook until browned on the bottom, 1 to 2 minutes longer. Serve the pancakes warm.'),
(9, 2, 'lunch1.jpg', 'Katsu Sando', '- 6 CDO Crispy burger patties\r\n- 3 slices tasty bread cut in half\r\n- 1 cup cabbage shredded\r\n- 1/4 cup katsu sauce\r\n- 3 tablespoons butter\r\n- 2 tablespoons cooking oil\r\n- 3 tablespoons mayonnaise', '1. Heat the cooking oil in a pan. Fry both sides of the CDO Crispy burger patties using medium heat until crispy. Set aside\r\n2. Grab 2 slices of bread. Spread butter on one side of the first slice of bread and mayonnaise on one side of the second bread slice.\r\n3. Lay down the bread slice with butter on a flat surface (butter side up). Top with shredded cabbage and tonkatsu sauce.\r\n4. Arrange 2 CDO Crispy Burgers over it and then top with more shredded cabbage and tonkatsu sauce. Finish by topping with the other bread slice (mayo side facing down).\r\n5. Arrange Crispy Burger Sando on a serving plate. Serve. Share and enjoy!'),
(10, 2, 'Igado.jpg', 'Igado', '- 1/2 lbs. pork tenderloin sliced into 2-inch strips\r\n- 1/2 lb. pork liver sliced into 2-inch strips\r\n- 1/2 lb. pork kidney\r\n- 1 Knorr Pork Cube\r\n- 1 red bell pepper cut into strips\r\n- 1/2 cup green peas\r\n- 1 carrot julienne\r\n- 3 laurel leaves\r\n- 1 onion minced\r\n- 5 cloves garlic minced\r\n- 6 tablespoons soy sauce\r\n- 5 tablespoons white vinegar\r\n- 1 1/4 cup water\r\n- 4 tablespoons cooking oil\r\n- Salt and pepper to taste', '1. Boil the kidney with 4 thumbs of ginger for at least 30 minutes. Let it cool down and slice into 2-inch strips. Set aside.\r\n2. Heat 2 tablespoons of cooking oil in a pan. Sauté the pork liver for 2 minutes. Remove from the pan and set aside.\r\n3.Pour the remaining oil in the pan. Once hot, sauté garlic and onion until the latter softens.\r\n4. Add the pork kidney. Cook for 1 minute.\r\n5. Add the pork tenderloin. Sauté until the outer layer turns light brown.\r\n6. Pour the soy sauce and vinegar into the pan. Let the liquid boil. Stir.\r\n7. Add the laurel leaves and pour water. Let boil. Reduce the heat between low to medium setting. Continue cooking for 40 minutes.\r\n8. Add Knorr Pork Cube. Cook for 8 minutes.\r\n9. Add the liver back into the pan. Stir and continue cooking for 3 minutes.\r\n10. Put the bell pepper, carrot, and green peas.\r\n11. Season with salt and ground black pepper. Cook for 2 minutes.Transfer to a serving bowl. Serve hot with rice.\r\n12. Share and enjoy!'),
(12, 2, 'Chicken Curry.jpg', 'Chicken Curry', '- 2 lbs. chicken cut into serving pieces\r\n- 1 tablespoon curry powder\r\n- 1 piece potato cubed\r\n- 4 cloves garlic minced\r\n- 2 stalks celery sliced\r\n- 1 piece red bell pepper sliced\r\n- 2 pieces long green pepper\r\n- 1 piece onion chopped\r\n- 2 thumbs ginger cut into strips\r\n- 2 cups coconut milk\r\n- 1/2 cup all-purpose cream optional\r\n- 1 cup water\r\n- fish sauce and ground black pepper to taste', '1. Heat oil in a pan. Fry potato for 1 minute per side. Remove from the pan. Set aside.\r\n2. Using the remaining oil, saute garlic, onion, celery, and ginger until onion softens.\r\n3. Add the chicken pieces. Saute until the outer part of the chicken turns light brown.\r\n4. Add 1 tablespoon fish sauce. Continue sautéing for 1 minute.\r\n5. Pour-in coconut milk and water. Let boil.\r\n6. Add curry powder. Stir until the powder is completely diluted. Cover the pot and continue cooking between low to medium heat until the liquid reduces to half.\r\n7. Add the red bell pepper and pan fried-potato. Cook for 5 minutes.\r\n8. Season with fish sauce and ground black pepper as needed. You can also add all-purpose cream if desired.\r\n9. Transfer to a serving bowl. Serve and enjoy!'),
(13, 2, 'Bulalo.jpg', 'Bulalo', '- 2 lbs beef shank\r\n- ½ cabbage whole leaf individually detached\r\n- 1 bundle bok choy\r\n- 2 cobs corn each cut into 3 parts\r\n- 2 Tablespoons whole peppercorn\r\n- 1/2 cup green onions cut unto 1 1/2 inch pieces\r\n- 1 onion\r\n- 3/4 ounces water\r\n- fish sauce to taste optional', '1. In a big cooking pot, pour in water and bring to a boil\r\n2. Put-in the beef shank followed by the onion and whole pepper corn then simmer for 1.5 hours (30 mins if using a pressure cooker) or until meat is tender.\r\n3. Add the corn and simmer for another 10 minutes\r\n4. Add the fish sauce,cabbage, pechay, and green onion (onion leeks)\r\n5. Serve hot. Share and Enjoy!'),
(14, 3, 'Chicken and Broccoli Alfredo.jpg', 'Chicken Alfredo', '- 8 ounces fettuccine, uncooked\r\n- 2 cups fresh broccoli florets\r\n- ¼ cup Kraft Zesty Italian Dressing\r\n- 1 pound boneless skinless chicken breasts, cut into bite-sized pieces\r\n- 1 ⅔ cups milk\r\n- 4 ounces Philadelphia Cream Cheese, cubed\r\n- ¼ cup Kraft Grated Parmesan Cheese\r\n- ½ teaspoon dried basil leaves', '1. Cook pasta as directed on package, adding broccoli to the boiling water for the last 2 minutes of the pasta cooking time. Drain pasta mixture.\r\n2. Meanwhile, heat dressing in large nonstick skillet on medium-high heat. Add chicken and cook until no longer pink in the center, stirring occasionally, about 5 to 7 minutes.\r\n3. Stir in milk, cream cheese, Parmesan cheese, and basil. Bring to a boil, stirring constantly. Cook until sauce is well blended and heated through, about 1 to 2 minutes.\r\n4. Add chicken mixture to pasta mixture; mix lightly.'),
(15, 3, 'Chicken Bhuna.jpg', 'Chicken Bhuna', '- 2 tablespoons vegetable oil\r\n- 3 medium onions, finely chopped\r\n- 1 teaspoon salt\r\n- 4 cloves garlic, crushed\r\n- 1 tablespoon minced fresh ginger\r\n- 1/4 cup hot water\r\n- 1 teaspoon chili powder\r\n- 1 teaspoon ground coriander\r\n- 1 teaspoon ground cumin\r\n- 1/2 teaspoon ground turmeric\r\n- 2 medium tomatoes, chopped\r\n- 2 green chiles, halved lengthways (Optional)\r\n- 2 skinless, boneless chicken breast halves, cubed\r\n- 1 teaspoon curry paste, such as Patak\'s\r\n- 1/4 cup fresh cilantro leaves, chopped', '1. Heat oil in a nonstick pan over high heat. Add onion and salt; cook and stir until onion has softened, about 5 minutes.\r\n2. Reduce heat to low; stir in garlic and ginger until fragrant. Add hot water; cover, and cook, stirring occasionally, until water has evaporated, about 5 minutes.\r\n3. Add chili powder, ground coriander, cumin, and turmeric; cook and stir over high heat until spices are toasted, about 5 minutes. Stir in tomatoes and green chiles; cover and cook over low heat for 5 minutes.\r\n4. Add chicken; cook and stir over high heat until browned, 5 to 7 minutes. Stir in curry paste; reduce heat to low, cover and cook until chicken is cooked through, adding a little water if necessary, about 5 minutes. Check seasoning and sprinkle with freshly chopped cilantro.'),
(16, 3, 'Corned Beef.jpeg', 'Corned Beef', '- 1 (5 1/2 pound) corned beef brisket with spice packet\r\n- 7 small potatoes, peeled and diced\r\n- 4 medium carrots, peeled and diced\r\n- 1 medium onion, diced\r\n- 3 cloves garlic, chopped', '1. Preheat the oven to 300 degrees F (150 degrees C).\r\n2. Place corned beef brisket in the center of a roasting pan. Arrange potatoes and carrots around the sides, then scatter onion and garlic over top. Sprinkle seasoning packet over beef, then pour in water until potatoes are almost covered. Cover with a lid or heavy aluminum foil.\r\n3. Roast in the preheated oven until corned beef is so tender it can be flaked apart with a fork, about 5 to 6 hours.'),
(17, 4, 'Frito Pie.jpeg', 'Frito Pie', '- 1/2 pound ground beef\r\n- 1/4 cup water\r\n- 1 tablespoon tomato paste\r\n- 1 tablespoon chili powder, or to taste\r\n- 1/2 teaspoon ground cumin\r\n- 1/4 teaspoon onion powder\r\n- 1/4 teaspoon garlic powder\r\n- 1/4 cup chili beans', '1. Heat a large skillet over medium-high heat. Cook and stir ground beef in the hot skillet until browned and crumbly, 5 to 7 minutes. Drain and discard grease. Stir in water, tomato paste, chili powder, cumin, onion powder, and garlic powder. Stir in beans; cook until heated through, about 3 minutes.\r\n2. Divide corn chips into 4 bowls, top with the chili mix, then sprinkle with diced onions, jalapeño slices, and Cheddar cheese. Serve immediately.'),
(18, 4, 'Meatball Crackers.jpg', 'Meatball Crackers', '- 1/2 lb ground sirloin\r\n- 2 tablespoons minced onion\r\n- 1 clove garlic, minced\r\n- 3 tablespoons milk or half and half\r\n- 1 teaspoon kosher salt\r\n- 1/2 teaspoon freshly ground black pepper\r\n- 1 teaspoon dried basil\r\n- 1/2 teaspoon dried oregano\r\n- 1 large egg, lightly beaten', '1. Preheat the oven to 325 degrees F (165 degrees C).\r\n2. Combine sirloin, oinon, garlic, milk, salt, pepper, basil, oregano, and egg in a bowl and mix. Stir in breadcrumbs until well combined. Spread meat\r\nmixture in a thin layer evenly on top of 24 crackers. Top with a slice of mozzarella cheese and 2nd cracker.\r\n3. Place crackers on a baking sheet and brush the tops evenly with olive oil.\r\nBake in the preheated oven until meat is golden brown around the edges and cooked through and cheese is melted, 10 to 12 minutes.\r\n4. Serve with warm marinara sauce for dipping.'),
(19, 7, 'French Apple Cake.jpg', 'French Apple Cake', '- 3 large baking apples (such as Honeycrisp®), cubed (about 4 cups)\r\n- 2 teaspoons apple cider vinegar\r\n- 1 cup all purpose flour\r\n- 1 teaspoon baking powder\r\n- 1 teaspoon kosher salt\r\n- 1 stick unsalted butter, at room temperature\r\n- 1/2 cup white sugar\r\n- 2 tablespoons light brown sugar\r\n- 2 large eggs', '1. Preheat the oven to 350 degrees F (175 degrees C). Grease a 9-inch round cake pan with butter and line the bottom with parchment paper.\r\n2. Peel and core apples, and cut into cubes between 1/4 and 3/8-inch in size. A little smaller is okay, but if your cubes are any larger, they won’t get tender enough when baked.  Add to a large bowl and toss with apple cider vinegar.\r\n3. Mix together flour, baking powder, and salt in a small bowl.\r\n4. In another bowl, beat butter, 1/2 cup white sugar, and brown sugar with an electric mixer until light and fluffy. Beat in 1 egg on high speed until it is fully incorporated and the mixture is smooth. Add the second egg and repeat. Mix in rum, vanilla extract, and 1/2 of the flour mixture.  When the flour disappears add the rest, and fold in with a spatula.'),
(20, 8, 'mcdo banner.jpg', 'McDonald\'s Fries', '- 8 potatoes, peeled and cut into 1/4-inch thick fries\r\n- ¼ cup white sugar\r\n- 2 tablespoons corn syrup\r\n- 1 quart canola oil, or as needed\r\n- sea salt to taste', '1. Place potatoes in a bowl and cover with water; let sit for 5 minutes. Drain and pat dry.\r\n2. Place potatoes in a bowl and cover with boiling water; add sugar and corn syrup and mix well. Place bowl in the refrigerator and let sit for 5 minutes. Drain and pat dry.\r\n3. Spread potatoes out in a baking dish, cover the dish with plastic wrap, and freeze for 30 minutes.\r\n4. Heat oil in a deep-fryer or large saucepan to 350 degrees F (175 degrees C).\r\n5. Working in batches, fry potatoes in hot oil for 2 minutes. Transfer to a paper towel-lined plate to dry and let cool for 15 minutes.\r\n6. Working in batches again, fry potatoes in hot oil until browned and crispy, 5 to 7 minutes. Season fries with sea salt.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`tbl_category_id`);

--
-- Indexes for table `tbl_recipe`
--
ALTER TABLE `tbl_recipe`
  ADD PRIMARY KEY (`tbl_recipe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `tbl_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_recipe`
--
ALTER TABLE `tbl_recipe`
  MODIFY `tbl_recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
