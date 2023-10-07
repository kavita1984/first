-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 06:55 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perniaspopupshop140423`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `customer_care_hours` text NOT NULL,
  `email_contact` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address`, `customer_care_hours`, `email_contact`, `created_at`, `updated_at`) VALUES
(1, '<p>We&rsquo;re located in Sydney, Australia</p>', '<p>Sun - Thurs | 3pm - 11pm PST</p>', '<p>info@sirthelabel.com<br />\r\n+61 2 9191 0245</p>', '2022-03-17 16:26:13', '2022-03-17 16:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `api_user_carts`
--

CREATE TABLE `api_user_carts` (
  `id` int(11) NOT NULL,
  `device_tokens` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_user_carts`
--

INSERT INTO `api_user_carts` (`id`, `device_tokens`, `product_id`, `quantity`, `state_id`, `created_at`, `updated_at`) VALUES
(1, '3', 16, 2, NULL, '2021-11-01 19:26:16', '2021-11-01 19:26:16'),
(5, '1234567890', 16, 2, NULL, '2021-11-02 18:18:12', '2021-11-02 18:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `media_name` varchar(255) DEFAULT NULL,
  `title` tinytext NOT NULL,
  `short_description` tinytext DEFAULT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `user_id`, `media_name`, `title`, `short_description`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1632473349.png', '7 BEST COCKTAILS TO MAKE WITH BOURBON', 'Discover the most delicious Bourbon cocktails made using some of the top-rated whiskeys on ReserveBar.', '<p>Smooth and spicy, rich and oaky, charred and full-bodied: the taste buds&rsquo; adventure never ends when it comes to crafting Bourbon cocktails. Purists might insist on serving this classic American spirit neat or on the rocks, but there&rsquo;s a whole world to be discovered when you branch out your whiskey drinking with your favourite Bourbons. Read on for the most delicious Bourbon cocktails made using some of the top-rated whiskeys on ReserveBar.</p>\r\n\r\n<h2>AN OLD FASHIONED</h2>\r\n\r\n<p>Think of Bourbon cocktails and the first one that comes to mind is likely an Old Fashioned. A classic recipe in the world of whiskey drinking, the best Old Fashioned cocktail is made with a premium Bourbon like&nbsp;<strong>Angel&#39;s Envy</strong>. Combine 1/2 teaspoon sugar, three dashes Angostura bitters and one teaspoon water in a whiskey glass before pouring over 60ml of Bourbon and garnishing with an orange peel for a suave and simplistic cocktail that&#39;s simultaneously timeless and modern.</p>\r\n\r\n<h2>A BOURBON SOUR</h2>\r\n\r\n<p>The Bourbon sour promises to enliven your taste buds in a matter of seconds, combining zesty lemon with Bourbon&#39;s characteristic depth and egg white to pull it all together. You&#39;ll want a flavourful and balanced base for this cocktail, like&nbsp;<strong>Buffalo Trace Kentucky Straight Bourbon</strong>. To prepare this cocktail, combine 60ml Bourbon with one large egg white, 25ml freshly squeezed lemon juice and 25 ounce simple syrup and shake vigorously. Pour into a cocktail glass, top with bitters, and serve.</p>\r\n\r\n<h2>A BOURBON LEMONADE</h2>\r\n\r\n<p>Step your childhood favourite drink up a notch with the addition of a healthy swig of Bourbon. A Bourbon Lemonade is a perfect summer drink and is effortless to make.&nbsp;<strong>Bulleit Bourbon</strong>&nbsp;is a great choice here for a drink that&#39;s bold and spicy with a distinctively smooth finish. Combine 45ml Bulleit Bourbon with 120ml lemonade and serve on the rocks with a lemon slice for an unbeatably refreshing cocktail.</p>\r\n\r\n<h2>A HOT TODDY</h2>\r\n\r\n<p>The wise grandfather of the cocktail world, a Hot Toddy is warming and comforting from the first sip to the final drop.&nbsp;<strong>Wild Turkey 101</strong>&nbsp;is our Bourbon of choice here. Ranked as one of the&nbsp;<strong>best bourbon brands in the world</strong>&nbsp;by Luxe Digital, Wild Turkey delivers deeply charred notes and endless depth. To make it, stir two teaspoons of honey into a mug of boiling water and add 45ml Bourbon and two or three teaspoons of lemon juice. Garnish with a lemon round and cinnamon stick, if you&#39;re feeling fancy.</p>\r\n\r\n<h2>A MINT JULEP</h2>\r\n\r\n<p>The Mint Julep is the traditional drink of the Kentucky Derby and has retained its status as an iconic American cocktail throughout the years. The one crucial element to this drink&#39;s success is crushed ice. For the best Mint Julep, We recommend a Bourbon like&nbsp;<strong>Maker&#39;s Mark Cask Strength</strong>, which uses oak, vanilla, caramel and spice to complement the mint notes from the cocktail. Combine four mint leaves and 15ml simple syrup into a Julep cup, muddle well and add 75ml Bourbon. Garnish with a mint sprig before serving.</p>\r\n\r\n<h2>A MANHATTAN</h2>\r\n\r\n<p>One drink that&#39;s never left the craft cocktail renaissance for too long is the world famous Manhattan. Classy and mellow with a touch of sweetness, this cocktail brings together 60ml Bourbon with 30ml sweet Vermouth, two dashes Angostura bitters and one dash orange bitters in a seamless drink that&#39;s effortless to create. We make ours using&nbsp;<strong>Woodford Reserve Double Oaked Bourbon</strong>&nbsp;for a cocktail that&#39;s smooth and full-bodied from start to finish. Strain all ingredients into a Coupe glass and garnish with a brandied cherry.</p>\r\n\r\n<h2>A BOULEVARDIER</h2>\r\n\r\n<p>Negroni lovers will definitely enjoy a Boulevardier; a rich and powerful cocktail that promises to take centre stage. Combine 35ml&nbsp;<strong>Four Roses Bourbon</strong>, appreciated here for its long and soft finish, with 30ml Campari and 30ml Vermouth in a cocktail shaker with ice and shake until well-chilled. Strain into a rocks glass over fresh ice and garnish with a lemon twist.<br />\r\n<br />\r\nIf you haven&rsquo;t sampled some of the Bourbons mentioned above yet, now&rsquo;s your chance to do so with a range of fail-safe recipes that you&rsquo;re sure to enjoy. Or, if you&rsquo;re already somewhat of a Bourbon connoisseur, try mixing your bottle of choice into one of these classic recipes for a new twist on an old favourite. When you&rsquo;ve sampled all of the above, you can find more enjoyable Bourbons to try at ReserveBar.</p>', 1, '2021-09-23 18:23:03', '2021-09-24 16:00:51'),
(2, 1, 3, '1632474210.jpg', 'Fall Wine Pairing Ideas', 'Pairing food with wine doesn’t have to be complicated, but a few fall wines are worth pointing out.', '<p>I hope this finds you warmed by the summer sun, rested and ready for the marching on of the seasons, marking the passage of time that oddly hasn&rsquo;t stopped despite the events of the past year and a half. Pandemic or not, time moves forward. Here we go onward to chilly evenings and crunchy leaves! This year feels a little more normal than last, and I am soaking in all the &ldquo;usuals&rdquo; and not taking them for granted. I&rsquo;m sitting here drinking my pumpkin latte (I fully embrace the cliche), filling my Instacart basket with items like pumpkin, cinnamon, rump roast, and fresh sage. And I am shifting my wine purchases as well to accommodate the changes in flavors and season.<br />\r\n<br />\r\nAs a wine expert, my famous line whenever I&rsquo;m suggesting varietals to someone is &ldquo;drink what you like!&rdquo; Some wines are always associated with&nbsp;specific seasons, such as Ros&eacute; for summer or a big Bordeaux for winter, but you&rsquo;ll always find me switching seasons if I have a hankering for one or the other. That said, some wines just seem to belong in their seasonal category alongside the food of the epochal time frame. Pairing food with wine doesn&rsquo;t have to be complicated, but a few fall wines are worth pointing out because they match up perfectly with fall dishes like lasagna, chili, roasted dishes, and of course, pumpkin! While there are a few rules to stick to, you don&rsquo;t need a Ph.D. to savor the season.<br />\r\n<br />\r\nFirst, let&rsquo;s remember a few basic tips for pairing, no matter the season:<br />\r\n1. Match weight of food with wine (Salad + Sauvignon Blanc)<br />\r\n2. High acid wine cuts the heat in spicy dishes (Riesling, Chablis, Albari&ntilde;o )<br />\r\n3. Big, high alcohol wines (Cabernet Sauvignon) pairs well with bold meats and isn&rsquo;t suited for spicy foods<br />\r\n4. Match the wine to the sauce (red sauce=red wine)<br />\r\n5. My favorite rule: What grows together goes together (think Albari&ntilde;o + Shellfish)</p>\r\n\r\n<h2>CHARDONNAY</h2>\r\n\r\n<p>Chardonnay is so popular because it can be simple or complex, delicate to bold with a variety of styles, including mouthwatering mineral-driven styles (Chablis) to rich, oak-driven examples. Chardonnay is a perfect fall wine for white wine lovers, and let&rsquo;s not forget that Chardonnay is responsible for those gorgeous Champagne bubbles! Champagne pairs perfectly with fried chicken because the acid cuts through the fried flavor. Butternut squash ravioli (or pumpkin) with a sage butter sauce pair perfectly with a Chardonnay (either from Italy or France). The ravioli has a delicate, rich flavor with a slight sweetness because of the roasted squash, making this wine pairing perfect. You can thank me later for this&nbsp;pumpkin ravioli recipe, which will be on my table very soon, served alongside&nbsp;Louis Latour Pouilly-Fuiss&eacute;.<br />\r\n<br />\r\nChoose a heartier or oaky Chardonnay wine to pair with heavier dishes such as Halibut, lobster or grilled chicken with mushrooms, such as&nbsp;Far Niente Chardonnay.</p>\r\n\r\n<h2>PINOT NOIR</h2>\r\n\r\n<p>Pinot Noir is just like a blind date. When it&rsquo;s good, give me more of THAT! When it&rsquo;s bad, get me out of there ASAP. But pinot noir works because it is one of the most food-friendly wines, and to me, it just feels like fall. Pinot can run the spectrum on flavor profiles from aromatic and ripe red fruit to aged, earthy wine. Overripe examples can taste like cough syrup, and underripe examples can taste like licking dirt. A good pinot noir will lure you into its spell of aromatics and perfection. And, just like chicken, everyone usually enjoys a glass of (good) pinot noir because of its soft tannins and fruit flavor profile.<br />\r\n<br />\r\nPinot Noir pairs well with oily fishes such as salmon without creating a metallic taste (which can happen with a more tannic wine). It also pairs well with roasted chicken or pasta dishes and my personal favorite: beef Bourgogne. The traditional match for this dish is red burgundy. In the early fall, a&nbsp;Domaine Faiveley Nuits-St-Georges&nbsp;pairs with this&nbsp;Beef Bourgogne recipe&nbsp;and is the perfect kick-off to welcome the season.&nbsp;Flowers Sonoma Coast Pinot Noir&nbsp;is also the perfect match for pork and lamb; just try to avoid spicy dishes or overly bold sauces.</p>\r\n\r\n<h2>SANGIOVESE</h2>\r\n\r\n<p>Sangiovese is the perfect wine to reach for as the weather turns colder, especially when your Sunday dinner consists of a helping of spaghetti and meatballs. The grape, Sangiovese, is the dominant grape for red wines in Central Italy. Chianti is a region rather than a grape and is often a blend, with some moving toward a higher proportion of Sangiovese (occasionally 100%). Sangiovese is often compared to Pinot Noir because of the thinner skins and fickleness of growing conditions which means this wine can be made in a variety of styles.<br />\r\n<br />\r\nWhether you reach for a young Chianti known for its tart cherry flavor or a more complex, earth-scented flavor in a nuanced wine of Montepulciano- this grape is an excellent match for a variety of dishes. This grape, much like Chardonnay, is a wine that can come in various styles but is mainly cherished for its moderate alcohol, sharp backbone of acidity and balanced tannins that can stand up to many dishes, especially tomato-based pasta and pizza. You can reach for a younger, simpler wine such as Rosso di Montepulciano, Chianti or Morellino di Sccansario. Everyone at my house can be pleased with these&nbsp;spaghetti &amp; meatballs, and it pairs perfectly with&nbsp;Argiano Rosso di Montalcino DOC. When moving on to a heavier dish such as lamb or a hearty meat dish, reach for Chianti Rufina, Chianti Classico and Brunello di Montepulciano which will typically be aged longer and offer a little more depth on the palate than a younger, more straightforward wine. Let&rsquo;s pause for a moment and talk about &ldquo;super-Tuscans.&rdquo; Antinori created a trend when he started to blend Sangiovese with Bordeaux varietals (Cabernet Sauvignon, Merlot), and the first wine was labeled Tignanello. If you have a craving for a bigger wine--this is it! Grab a big juicy steak to eat along with it.</p>\r\n\r\n<h2>GRENACHE</h2>\r\n\r\n<p>Grenache doesn&#39;t exactly roll off the tongue, but it is a grape that deserves some attention, especially as the weather turns colder. Grenache doesn&#39;t typically stand alone. Do you fancy a Chateauneuf-du-pape or a cote-du-Rhone or maybe a Rioja? Well, guess what? Those wines all have one thing in common- grenache (Rioja tends to be more Tempranillo dominant for the wine geeks, but Grenache adds some deliciousness here.). Most red wines do not pair well with spicy or hot foods, but here is a wine/grape that I would pair with a peppery steak or your game day chili.<br />\r\n<br />\r\nSo, let&#39;s talk about pairing. If you have a single varietal grenache wine, such as&nbsp;Department 66 Grenache, pair it with a chicken or turkey and even seafood paella. If you are looking for the perfect wine to pair with your game day chili (besides a nice IPA), I would reach for a Cotes du Rhone.&nbsp;Ch&acirc;teau Mont-Redon C&ocirc;tes du Rh&ocirc;ne&nbsp;fits the bill. If you fancy a Spanish adventure look for Bodegas Muga Torre Rioja.</p>\r\n\r\n<h2>WHISKEY</h2>\r\n\r\n<p>I know this is a wine article, but I can&#39;t resist! Whiskey is a perfect welcome to chilly days and changing seasons, so let&rsquo;s talk about it. The key to pairing whiskey with food is to match the aromatics, flavor, and body as not to overpower the food. Whiskey can be both delicate and bold. Bourbon is full-bodied and sweet so think of something that can match it, like bbq ribs. A roast chicken will fit perfectly with a light Japanese whisky. Rye is known for its spice, so don&rsquo;t pair it with something hot or spicy because it will clash; think more of goat cheese or shrimp here. A bold peated whisky will pair up nicely with sausage and chorizo.<br />\r\n<br />\r\nMatch this&nbsp;roast chicken recipe&nbsp;with Scotch or bourbon for a treat or take it to another level and serve it with a classic old fashioned made with&nbsp;George Dickel&nbsp;or&nbsp;The Macallan.<br />\r\n<br />\r\nAnd with that, I release you to enjoy this beautiful fall and all its bountiful flavors and senses. No matter what you choose, savor the season and toast to life, as wacky and unusual as it may be! Now, get out there and host a BBQ, hike, or outdoor movie night. Your friends won&rsquo;t even know that you did a little research, wink wink.</p>', 1, '2021-09-24 16:03:30', '2021-09-24 16:06:29'),
(3, 2, 3, '1632474820.jpg', 'Gentleman Jack: Double Mellowed for Exceptional Smoothness', 'We all know and love Jack Daniel\'s - but what makes Gentleman Jack so smooth? It\'s all in the mellow.', '<p>Tennessee Whiskey; it&#39;s in so many memorable songs, on the back bar of your favorite joint, you may even have a t-shirt or two with &#39;Tennessee Whiskey&#39; written on the iconic label we&#39;ve all come to know and love. But what makes it so distinguishable?</p>\r\n\r\n<h2>CREATING THE MELLOW</h2>\r\n\r\n<p>Let&#39;s talk about the Lincoln County Process; you may have heard that phrase around before. It&#39;s the official name describing the process that makes our whiskey different from all the other whiskey in the world: charcoal mellowing. Locals call the process &ldquo;The Extra Blessing,&rdquo; and it&rsquo;s a process that goes all the way back to when Jasper Newton &ldquo;Jack&rdquo; Daniel started his distillery in the late 1800s. At the Jack Daniel Distillery, we have complete control over all production aspects of the whiskey-making process, from cultivating our yeast cultures to being the only major distillery to craft our own barrels. Similarly, we control how our charcoal is made, and having that control over this process allows us to experiment.</p>\r\n\r\n<p><img alt=\"undefined image\" src=\"https://images.ctfassets.net/hl3shjo07dh9/4N3K4ftSXClVrgQ2wRtiTT/a897148eb8059ea170d318c49d11bfdd/Gentleman_Jack_Charcoal.jpg\" /></p>\r\n\r\n<p>For over 25 years, the same two men have had the privilege of making our sugar-maple charcoal in Lynchburg, TN: Darren and Tracey. They start by setting up &#39;ricks&#39; of our sugar-maple wood to &#39;season&#39; outside. Once the ricks are ready, they&#39;re placed under a massive hood, two at a time, and ignited by our 140 proof un-aged whiskey. We don&#39;t use any other fire-starter because we don&#39;t want to impart any off-flavors onto the charcoal, so we just stick with 100% whiskey.<br />\r\n<br />\r\nAfter about two hours, the blaze reaches a temperature of about 1,800 degrees Fahrenheit. The fire is then extinguished at precisely the right time. If the fire is extinguished too soon, you&#39;re simply left with burnt wood. Too late, and you&#39;re looking at just another pile of ash. The point at which the sugar-maple becomes charcoal is an art that Darren and Tracey have cultivated over their tenure at the Jack Daniel Distillery.</p>\r\n\r\n<p><img alt=\"undefined image\" src=\"https://images.ctfassets.net/hl3shjo07dh9/94Kg5zRvnC8A71bNWxcNR/7a55de94f5039140847f1e3ff37dd5bb/R_Lynchburg_MenLiftingVatLid__1_.jpg\" /></p>\r\n\r\n<p>The charcoal is then heaped into large piles where it waits to be used in our charcoal mellowing vats, where every single drop of Jack Daniel&#39;s Tennessee Whiskey will be filtered through in the coming days. The whole filtering process can take anywhere from three days to a week.<br />\r\n<br />\r\nAn important thing to note is that the charcoal mellowing process is subtractive, not additive. Certain compounds are filtered out of the whiskey to highlight the natural characteristics we want out of the distillate. We want the best whiskey to go into our barrels. Every single drop of our Tennessee Whiskey goes through this mellowing process before it enters the barrel.</p>\r\n\r\n<h2>DOUBLING THE MELLOW</h2>\r\n\r\n<p><img alt=\"undefined image\" src=\"https://images.ctfassets.net/hl3shjo07dh9/754nxfwgUogltJTohD8HQk/900b4735c5edd5f8b9e47a4244a28cd6/JD_Q2Social_GJ_JoyOfMissingOut_4x5_SUB.jpg\" /></p>\r\n\r\n<p>We love what charcoal mellowing does for our whiskey before it enters the barrel, so what would happen if we took that whiskey and filtered it through 3 feet more of charcoal when it&rsquo;s done maturing? We answered that question with a double-mellowed Tennessee Whiskey with an exceptionally smooth finish; Gentleman Jack.<br />\r\n<br />\r\nThe extra filtration creates an exceptionally smooth whiskey at 80 proof, leaving behind softer hints of caramel, vanilla, and butterscotch, perfect for an occasion on the rocks, neat, or a perfectly balanced whiskey cocktail.</p>\r\n\r\n<p>We take a lot of pride in the craftsmanship that goes into making a bottle of Gentleman Jack, and we hope you enjoy sipping it as much as we do making it.<br />\r\n<br />\r\nPlease drink responsibly.<br />\r\nTennessee Whiskey, 40% alc. by vol. (80 proof). Distilled and bottled by Jack Daniel Distillery, Lynchburg, Tennessee.<br />\r\n<br />\r\nJack Daniel&rsquo;s and Old No. 7 are registered trademarks of Jack Daniel&rsquo;s Properties, Inc. &copy; 2021.</p>', 1, '2021-09-24 16:13:40', '2021-09-24 16:13:40'),
(4, 2, 1, '1632475022.jpg', 'How Old Forester Ushered in the First Bourbon Boom', 'Discover how Old Forester\'s innovative legacy helps them stay at the forefront of the Bourbon Boom.', '<p>If you know anything about bourbon, you likely know that Old Forester is the only bourbon company that continually sold whisky&nbsp;before, during, and after Prohibition. And they don&rsquo;t just rest on these laurels. Part of what makes their legacy great is the innovation that comes from blending their history and fresh new ideas. &ldquo;Whether we&#39;re discussing the birth of America&rsquo;s First Bottled Bourbon&trade;, purchasing our first distillery, finding a way to turn a bottling line fire into an innovation, or surviving the Prohibition era, this is a brand that always finds a way to get back up and continue fighting,&rdquo; says Old Forester&rsquo;s Brand Ambassador, James Joseph. It&rsquo;s that enduring heritage that makes Old Forester the forefront of whisky history.</p>\r\n\r\n<h2>BEFORE THE BOOM</h2>\r\n\r\n<p>It is no surprise that Old Forester played a significant role in the first &ldquo;Bourbon Boom.&rdquo; If you are not familiar with the phrase, the Bourbon Boom refers to bourbon&rsquo;s popularity and economic transcendence in the markets. Prior to the early 2000s, many liquor stores could not sell their stock of bourbon. Old Forester&rsquo;s first Birthday Bourbon release remained on shelves for years; now, it sells out on the first day with lines stretching down Whiskey Row.</p>\r\n\r\n<p><img alt=\"undefined image\" src=\"https://images.ctfassets.net/hl3shjo07dh9/6HLp8QX18WHkGbzE2ZRR1G/4a0e9fd3cc31b9fc95f869e3e285b4a0/How_Old_Forester_Bourbon_Ushered_in_the_First_Bourbon_Boom_-_Bourbon_Sales_Chart.png\" /></p>\r\n\r\n<p>The boom is best visualized by this chart provided by the Distilled Spirits Council of the US (DISCUS). Here, you can see the stratospheric gains in whisky production. Since the early 2000s, bourbon&rsquo;s prominence on the market has led to increased &ldquo;bourbon hunting.&rdquo; People around the world travel to Kentucky searching for rare and unique whiskies that can&rsquo;t be found anywhere else. The reason for this fervor for bourbon is hotly contested: was it the introduction of single barrels? The &ldquo;Mad Men&rdquo; effect? Or was it the rise of cocktail culture and the introduction of the Bourbon Trail by Kentucky Tourism?</p>\r\n\r\n<p>Whatever the case, it&rsquo;s clear that one bourbon brand stands out as a key player in the Bourbon Boom: Old Forester.</p>\r\n\r\n<h2>A LEGACY OF FIRSTS</h2>\r\n\r\n<p>The history of Old Forester is the history of bourbon. Way back in the 1800s, bourbon was considered medicinal and sold in barrels. These barrels were unregulated and, since the buyer couldn&rsquo;t see through the wood, sometimes filled with unappetizing and even dangerous substances.<br />\r\n<br />\r\nThat changed when George Garvin Brown sealed his bourbon in glass bottles with a promise: &ldquo;This whisky is bottled by us only, and we are responsible for its purity and fine quality. Its elegant flavor is solely due to original fineness developed by age. There is nothing better in the market.&rdquo;<br />\r\n<br />\r\nThe bottled bourbon changed everything. Once released, Brown inadvertently also created the first batched bourbon, meaning he sourced from three distilleries to maintain consistency. Old Forester Bourbon became a mainstay for both medicinal and recreational consumption.<br />\r\n<br />\r\nWith the passage of the Bottled-in-Bond Act of 1897, a new standard of quality was created for bourbon. &ldquo;Old Forester had been bottling a standard bourbon,&rdquo; says James Joseph, &ldquo;but consumers were beginning to show their desire for Bottled-in-Bond products. We went out and bought our first distillery to ensure we were delivering the best product possible.&rdquo;<br />\r\n<br />\r\nDespite Prohibition closing most distilleries, Old Forester obtained one of six permits to continue selling bourbon for medicinal purposes. While many people may hold on to that tentpole and stop innovating, the team at Old Forester used their expertise to drive the market forward in new and exciting ways.<br />\r\n<br />\r\nOld Forester became the&nbsp;brand of firsts. The first distillery to convert their production to high-grade alcohol to help war production in WWII. The first bourbon to create a decanter, just in time for the 1951 holiday season. And, with the introduction of President&rsquo;s Choice in 1964, they became the first single barrel bourbon in the industry. With a legacy like this, it&rsquo;s not hard to believe that Old Forester would be at the forefront of the biggest whisky boom in history.</p>\r\n\r\n<h2>OLD FORESTER USHERS IN THE BOURBON BOOM</h2>\r\n\r\n<p>In 2002, bourbon was enjoying a steady revenue stream propelled by enthusiasts and the recent resurgence of cocktail culture. With the 156th birthday of George Garvin Brown approaching, it felt right for Old Forester to share something unique and one-of-a-kind. Thus, an annual tradition was born: Old Forester&rsquo;s Birthday Bourbon.<br />\r\n<br />\r\nThese exceptional bourbons are from the same vintage, or day, of barrelling. Before Birthday Bourbon, no other whisky company had released a vintage-dated bourbon. &ldquo;This is one single day&#39;s distillation,&rdquo; says James Joseph, &ldquo;making it a very special and rare treat for our annual release.&rdquo; By allotting a vintage, enthusiasts can taste how time, weather, and even specific warehouses can change the taste and body of bourbon. The mash bill and distillation process remain the same, yet the Birthday Bourbon continues to delight and surprise collectors and casual fans alike year after year.<br />\r\n<br />\r\nDespite what the release of Birthday Bourbon would become, in 2002, it was released to little fanfare. Yet, whispers of this extraordinary whisky started to spread. &ldquo;Yes, it&#39;s true that upon its introduction there wasn&#39;t the same hype as we see today, says James Joseph, &ldquo;but as time went on more and more consumers began to see what makes this expression so special.&rdquo; Within a handful of years, a line commenced at the Old Forester distillery days before the September 2nd release. Old Forester&rsquo;s creation of a vintage bourbon had started something unprecedented in the industry: a boom.<br />\r\n<br />\r\nThe distillers and tasters decided to take the excitement of the boom to the next level by launching the Whiskey Row series in 2014. For new and longstanding enthusiasts alike, this series offered a way to taste their way through history. Each expression represents a specific moment in Old Forester&rsquo;s 150-year-old history: 1870 Original Batch Whisky, 1897 Bottled in Bond, 1910 Old Fine Whisky, and 1920 Style Prohibition Whisky. These releases, unsurprisingly, helped spur a new trend: whisky flights.<br />\r\n<br />\r\nAs you could probably guess by the DISCUS chart previously mentioned, the Bourbon Boom is far from over. The thirst for unique bourbons has only skyrocketed sales and allocations, with distributors, retailers and distillers alike seeing professional line holders on release days and a robust resellers market. While trends like waxed mustaches in cocktail bars may have moved on in this boom era, Old Forester&rsquo;s storied legacy continues to inspire and innovate new ways of drinking whisky.<br />\r\n<br />\r\n&ldquo;We strive to continue offering new, innovative products that meet our loyal patrons standards,&rdquo; says James Joseph. &ldquo;The bourbon boom continues to grow and we&#39;re going to stay right there with it.&rdquo;<br />\r\n<br />\r\nPlease Drink Responsibly. It Never Gets Old.<br />\r\nOld Forester is a registered trademark. &copy;2021 Brown-Forman Distillery, Inc.<br />\r\nStraight Bourbon Whisky, 43% ABV., Old Forester Distilling Company, Louisville, KY.</p>', 1, '2021-09-24 16:17:02', '2021-09-24 16:17:59'),
(5, 3, 1, '1632475350.png', 'How To Incorporate Egg Whites Into Your Cocktails', 'Discover how to properly incorporate eggs into some classic cocktails to add texture.', '<p>When you think of your favorite cocktails and what ingredients they may consist of, I am sure that lemon juice, lime juice, simple syrup, agave, honey and bitters may come to mind. But what about egg whites?</p>\r\n\r\n<h2>WHEN SHOULD EGG WHITES BE USED IN COCKTAILS?</h2>\r\n\r\n<p>Now&hellip; I know egg whites may sound a bit more appetizing to some for breakfast scrambled on a plate next to some crispy bacon and toast, but let&rsquo;s explore this idea for a second. Have you ever enjoyed a proper Whiskey Sour, Pisco Sour or a Ramos Gin Fizz? Well, if you have, you enjoyed a cocktail that is enhanced by the use of egg whites. The experience can be quite magical when executed correctly.<br />\r\n<br />\r\nFor centuries, egg whites have added a unique richness to cocktails without adding ingredients that pack on the pounds like Coconut Cream, Heavy Cream or Pineapple Juice. As early as the 17th Century, egg whites were introduced by the British Royal Navy into punches for nutritional value. Fast forward to 1862, when arguably the most iconic cocktail made with egg whites made its first appearance: the Whiskey Sour.</p>\r\n\r\n<h2>TEXTURE WITHOUT AN &ldquo;EGGY&rdquo; FLAVOR</h2>\r\n\r\n<p>The Whiskey Sour is comprised of only four ingredients: lemon juice, simple syrup, whiskey, and last but certainly not least&hellip;an egg white. But why does the use of egg whites work as one of the ingredients in a cocktail?<br />\r\n<br />\r\nThe concept is similar to making a merengue. Egg whites (a.k.a. albumen) hold tight proteins found in an egg that when combined with citrus, sugar and the proper aeration create a velvety texture and a foam cap at the top of your cocktail. The beauty of using egg whites in a cocktail is that they really don&rsquo;t impart any &ldquo;eggy&rdquo; flavor at all. They are used strictly to add texture to your drink.</p>\r\n\r\n<h2>EXTRACTING YOUR EGG WHITES</h2>\r\n\r\n<p>Now that we know when and why egg whites appeared in classic cocktails, let&rsquo;s discuss how to use them. First things first, make sure that the egg you are going to use, and your hands, are completely clean to avoid an opportunity of mixing unwanted remnants into your soon to be frothy masterpiece.<br />\r\n<br />\r\nWhen cracking the egg, you want to use the edge of the small side of your cocktail tin and be sure to separate the egg yolk from the white using the egg shell. Be sure to get a clean break down the middle of the egg to avoid any egg shell pieces slip into your tin. The goal is to allow the egg white to ooze into the shaker tin and then discard the shell and egg yolk.<br />\r\n<br />\r\nNow it&rsquo;s time to shake your cocktail but when shaking egg white cocktails you need to use a technique called a &ldquo;dry shake&rdquo; or &ldquo;reverse dry shake&rdquo; to emulsify your egg to create the perfect texture for your cocktail.</p>\r\n\r\n<h2>TWO WAYS TO SHAKE</h2>\r\n\r\n<p>The technique you&rsquo;re about to explore is called&nbsp;<strong>&ldquo;The Dry Shake&quot;</strong>. You will add all of your ingredients (including the egg white) into your shaker without ice, making sure it&rsquo;s securely sealed. Then shake it as vigorously as possible to properly incorporate the egg white and whip it into a frothy masterpiece. Next, you add ice to bring your cocktail to the proper temperature and introduce dilution&hellip; then voila! Your drink is ready to go.<br />\r\n<br />\r\nThere are some bartenders who prefer to use the&nbsp;<strong>&ldquo;Reverse Dry Shake&quot;</strong>. With this technique, you will shake all the ingredients with ice first and then strain your cocktail. You will then return the drink to your shaker and shake it again without ice. This process is thought to impart less dilution for a small difference in flavor.<br />\r\n<br />\r\nHowever you decide to shake this drink, be sure to do it with all the power you can muster to create that beautiful foamy head for your cocktail. You can create your own work of art by creating a design with bitters or float a beautiful garnish, but we&rsquo;ll save that lesson for another time.</p>\r\n\r\n<h2>IT&rsquo;S TIME TO GET STARTED</h2>\r\n\r\n<p>Now, it is time to flex your new-found bartending muscles with this Whiskey Sour below:<br />\r\n<br />\r\n<strong><em>&ldquo;Whiskey Sour&rdquo;</em></strong><br />\r\n2oz. Your Favorite Bourbon or Rye Whiskey<br />\r\n1oz. Fresh Lemon Juice<br />\r\n3/4oz. Simple Syrup<br />\r\n1 egg white from a small to medium egg<br />\r\nIce<br />\r\n<br />\r\n<strong>Preparation:</strong><br />\r\nAdd all of your ingredients into a cocktail shaker and seal the shaker without ice. Shake vigorously for 15-20 seconds to aerate the egg white and incorporate all of your ingredients thoroughly. Open your sealed cocktail shaker and add ice. Shake again vigorously for 10-15 seconds. Strain your cocktail into a chilled coupe glass and enjoy.</p>', 1, '2021-09-24 16:22:31', '2021-09-24 16:22:31'),
(6, 3, 3, '1632475540.jpg', 'The Simplicity of Simple Syrup', 'Let us show you how to make this sweet foundation of some of your favorite cocktails.', '<p>Simple syrup is the straightforward component of countless incredible cocktails. Staple cocktails like the French 75, Old Fashioned, Tom Collins, and Whiskey Sour all utilize the sweetness of simple syrup to complete their flavor profile. Initially developed in the 1800s&nbsp;around the same time that the term &ldquo;cock-tail&rdquo; was coined, simple syrup has since earned its place in the four essential cocktail elements; liquor, water, bitters, and simple syrup.</p>\r\n\r\n<p><img alt=\"\" src=\"https://appnosoft.com/wine-shop-dev/public/images/blogs/Gentleman_Jack_Charcoal.jpeg\" /></p>\r\n\r\n<p>Also known as &ldquo;sugar syrup,&rdquo; simple syrup is the liquified form of sugar used to sweeten your favorite cocktails, iced coffee, iced tea, and other beverages. Unlike your typical packets of sugar that sink to the bottom of your drink, this liquid sweetener disperses sweetness evenly throughout beverages of any temperature. And the ease of the recipe is astounding; you dissolve sugar in water. If you can boil water, you can make simple syrup!</p>\r\n\r\n<h2>HOW TO MAKE SIMPLE SYRUP</h2>\r\n\r\n<p><img alt=\"\" src=\"https://appnosoft.com/wine-shop-dev/public/images/blogs/R_Lyn.jpeg\" /></p>\r\n\r\n<p>Excuse the obvious statement, but making simple syrup is very simple. Traditional simple syrup is made from one part sugar and one part water (1:1). You can also make a richer variation by combining two parts sugar and one part water (2:1). The process to make it is identical.</p>\r\n\r\n<h2>INGREDIENTS</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>1 cup</th>\r\n			<td>Water (Filtered, preferably)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>1 cup</th>\r\n			<td>Granulated Sugar</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>TOOLS OF THE TRADE</h2>\r\n\r\n<ul>\r\n	<li>Medium Saucepan</li>\r\n	<li>Measuring Cups (Liquid and Dry)</li>\r\n	<li>Glass Jar or Bottle (Storage)</li>\r\n</ul>\r\n\r\n<h2>RECIPE</h2>\r\n\r\n<ol>\r\n	<li><strong>Heat:</strong>&nbsp;Heat the water in a medium saucepan until hot, but do not bring it to a boil.</li>\r\n	<li><strong>Stir:</strong>&nbsp;Stir the sugar in the water frequently until it has fully dissolved and created a syrup-like consistency.</li>\r\n	<li><strong>Cool:</strong>&nbsp;Cool the simple syrup to room temperature before storing in a glass jar. Simple syrup can be stored for up to 2-3 weeks in a refrigerator.</li>\r\n</ol>\r\n\r\n<h2>EXPERIMENTING WITH SIMPLE SYRUP VARIATIONS</h2>\r\n\r\n<p>Once you have mastered the art of making simple syrup at home, you may want to start exploring other flavor options. For instance, you can infuse herbs and spices or substitute the sugar with another sweetener. Some popular simple syrup variations include Lavender Syrup which pairs nicely with lemonade cocktails; Honey Syrup that gives a sultry sweetness to gin cocktails; and Agave Syrup that attenuates nectar into your favorite margarita. If you plan to whip up the simple syrup in bulk, stick with the 1:1 sugar and water ratio for best results.<br />\r\n<br />\r\nIn the cocktail world, simple syrup is the most common sweetener used. It helps to balance the acidity and bitterness of a cocktail, which aids the booze for a more well-rounded flavor profile. So, with all the rewards and the only risk being your measuring skills, we hope you&rsquo;re rushing to make your own simple syrup tonight!</p>\r\n\r\n<h2>TRY MAKING SIMPLE SYRUPS FOR THESE COCKTAILS</h2>\r\n\r\n<p>Now that you are well versed in the construction of simple syrup, let&rsquo;s put that rich sweetener to use for cocktail creation at home. Here are a few cocktails that are featured in the Cocktail Lounge that will help you try making a variety of syrups:<br />\r\n<br />\r\n<strong>Simple Syrup:</strong>&nbsp;Just like the syrup, the Koval Gin Gimlet is simple. Combine gin, lime juice, and simple syrup, and you&rsquo;re on the way to a refreshingly crisp cocktail. Start practices by making the basic 1:1 simple syrup with sugar and water using the instructions above. Try making the&nbsp;<strong>Koval Gin Gimlet</strong>.<br />\r\n<br />\r\n<strong>Honey Syrup:</strong>&nbsp;Are you interested in time travel? Head back to the 1920s with this Prohibition-era cocktail, The Barr Hill Gin Bee&rsquo;s Knees. Featuring gin, lemon juice, and honey, this cocktail is the cat&rsquo;s meow. The homemade honey syrup accentuates the unique flavor profile of the gin.&nbsp;<strong>Click Here</strong>&nbsp;for the full Barr Hill Gin Bees Knees recipe.<br />\r\n<br />\r\n<strong>Thyme Syrup:</strong>&nbsp;In cooking, thyme is viewed as a mild herb that adds a fresh flavor. In cocktails, thyme is a subtle, herbaceous addition to your refreshment. The Saint Liberty Mary&#39;s Berry Smash utilizes sweet, sour, and herb to create a complex cocktail using a thyme-infused simple syrup. Check out the&nbsp;<strong>Saint Liberty Mary&#39;s Berry Smash</strong>.<br />\r\n<br />\r\n<strong>Demerara Syrup:</strong>&nbsp;Simple syrup uses granulated sugar. Demerara syrup uses demerara sugar, which is less processed raw cane sugar with light brown crystals. While made identically, their flavors are far from similar. Give it a go with the Ten to One &mdash; a Rum Old-Fashioned that highlights the warm, molasses flavor of the demerara syrup. To get the recipe&nbsp;<strong>click here</strong>.<br />\r\n<br />\r\n<strong>Mint Syrup:</strong>&nbsp;If you have 1 cup of water, 1 cup of granulated sugar, and 1 cup of fresh mint leaves, you are less than five minutes from mint simple syrup. Once you have that mint syrup made, it&rsquo;s time for mojitos! Check our recipe for a Mount Gay Frojito, a classic with a frappe twist, by&nbsp;<strong>clicking here</strong>.<br />\r\n<br />\r\nWe hope that you have fully recognized the undeniable allure of simple syrup. It is rich, sweet, and effortless to create. Now you have learned how to make it and have five simple syrup cocktails variations to try at home, our work here is done.</p>', 1, '2021-09-24 16:25:40', '2021-09-28 19:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `user_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1, '2021-09-24 18:27:18', '2021-09-24 18:27:18'),
(2, 5, 3, 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2021-09-24 19:11:25', '2021-09-24 19:11:25'),
(3, 6, 3, 'Demerara syrup uses demerara sugar, which is less processed raw cane sugar with light brown crystals. While made identically, their flavors are far from similar.', 1, '2021-09-24 19:46:19', '2021-09-24 19:46:19'),
(4, 3, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', 1, '2021-09-25 12:41:30', '2021-09-25 12:41:30'),
(5, 3, 3, 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2021-09-25 12:45:51', '2021-09-25 12:45:51'),
(6, 6, 3, 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2021-10-30 14:02:15', '2021-10-30 14:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `brand_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `category_id`, `sub_category_id`, `brand_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'Johnnie Walker', 1, '2021-08-11 06:46:54', '2021-08-12 13:58:58'),
(2, 4, 1, 'The Glenlivet', 1, '2021-08-11 07:35:18', '2021-08-11 13:07:45'),
(3, 4, 1, 'The Macallan', 1, '2021-08-11 07:35:36', '2021-08-11 13:07:27'),
(4, 4, 1, 'The Glenrothes', 1, '2021-08-11 07:35:45', '2021-08-11 13:08:06'),
(5, 4, 1, 'Lagavulin', 1, '2021-08-11 07:35:53', '2021-08-11 13:08:15'),
(6, 4, 1, 'The Glendronach', 1, '2021-08-11 07:36:02', '2021-08-11 13:08:27'),
(7, 4, 1, 'Bruichladdich', 1, '2021-08-11 07:36:12', '2021-08-11 13:08:37'),
(8, 4, 1, 'Highland Park', 1, '2021-08-11 07:36:20', '2021-08-11 13:08:47'),
(9, 4, 1, 'Chivas Regal', 1, '2021-08-11 07:36:29', '2021-08-11 13:08:56'),
(10, 4, 1, 'Talisker', 1, '2021-08-11 07:39:05', '2021-08-11 07:39:05'),
(11, 4, 1, 'All Scotch', 1, '2021-08-11 07:39:19', '2021-08-11 21:27:24'),
(12, 4, 2, 'WOODFORD RESERVE', 1, '2021-08-12 12:00:47', '2021-08-12 12:00:47'),
(13, 4, 2, 'JEFFERSON’S', 1, '2021-08-12 12:01:05', '2021-08-12 12:01:05'),
(14, 4, 2, 'MAKER’S MARK', 1, '2021-08-12 12:01:19', '2021-08-12 12:01:19'),
(15, 4, 2, 'BULLEIT', 1, '2021-08-12 12:01:38', '2021-08-12 12:01:38'),
(16, 4, 2, 'Knob Creek', 1, '2021-08-12 12:01:50', '2021-09-13 13:58:51'),
(17, 4, 2, 'BASIL HAYDEN’S', 1, '2021-08-12 12:02:07', '2021-08-12 13:39:33'),
(18, 4, 2, 'ANGEL’S ENVY', 1, '2021-08-12 12:32:49', '2021-08-12 12:32:49'),
(19, 4, 2, 'OLD FORESTER', 1, '2021-08-12 12:33:03', '2021-08-12 12:33:03'),
(20, 4, 2, 'HEAVEN’S DOOR', 1, '2021-08-12 12:33:18', '2021-08-12 12:33:18'),
(21, 4, 2, 'George Dickel', 1, '2021-08-12 12:33:36', '2021-09-13 13:59:53'),
(22, 4, 2, 'ALL BOURBON', 1, '2021-08-12 12:33:51', '2021-08-12 12:33:51'),
(23, 4, 3, 'BROTHER\'S BOND', 1, '2021-08-12 12:34:06', '2021-08-12 12:34:06'),
(24, 4, 3, 'SAGAMORE SPIRIT', 1, '2021-08-12 12:34:21', '2021-08-12 12:34:21'),
(25, 4, 3, 'JAMESON', 1, '2021-08-12 12:34:38', '2021-08-12 12:34:38'),
(26, 4, 3, 'STRANAHAN’S', 1, '2021-08-12 12:34:51', '2021-08-12 12:34:51'),
(27, 4, 3, 'CROWN ROYAL', 1, '2021-08-12 12:35:06', '2021-08-12 21:01:48'),
(28, 4, 3, 'Bulleit', 1, '2021-09-13 13:55:10', '2021-09-13 14:02:28'),
(29, 4, 3, 'House of Suntory', 1, '2021-09-13 14:03:00', '2021-09-13 14:03:00'),
(30, 4, 3, 'Templeton Rye', 1, '2021-09-13 14:03:20', '2021-09-13 14:03:20'),
(31, 4, 3, 'Jack Daniel’s', 1, '2021-09-13 14:03:36', '2021-09-13 14:03:36'),
(32, 4, 3, 'SKREWBALL', 1, '2021-09-13 14:04:24', '2021-09-13 14:04:24'),
(33, 4, 3, 'All WHISKEY & RYE', 1, '2021-09-13 14:04:52', '2021-09-13 14:04:52'),
(34, 4, 4, '1800® Tequila', 1, '2021-09-13 14:08:27', '2021-09-13 14:08:27'),
(35, 4, 4, 'PATRÓN', 1, '2021-09-13 14:08:48', '2021-09-13 14:08:48'),
(36, 4, 4, 'DON JULIO', 1, '2021-09-13 14:09:26', '2021-09-13 14:09:26'),
(37, 4, 4, 'CASA DRAGONES', 1, '2021-09-13 14:09:45', '2021-09-13 14:09:45'),
(38, 4, 4, 'Lobos 1707', 1, '2021-09-13 14:10:00', '2021-09-13 14:10:00'),
(39, 4, 4, 'Casamigos', 1, '2021-09-13 14:10:13', '2021-09-13 14:10:13'),
(40, 4, 4, 'Hornitos', 1, '2021-09-13 14:10:30', '2021-09-13 14:10:30'),
(41, 4, 4, 'Cutwater', 1, '2021-09-13 14:11:19', '2021-09-13 14:11:19'),
(42, 4, 4, 'JOSE CUERVO', 1, '2021-09-13 14:11:45', '2021-09-13 14:11:45'),
(43, 4, 4, 'Codigo 1530', 1, '2021-09-13 14:12:22', '2021-09-13 14:12:22'),
(44, 4, 4, '818 Tequila', 1, '2021-09-13 14:12:37', '2021-09-13 14:12:37'),
(45, 4, 4, 'All Tequila', 1, '2021-09-13 14:13:04', '2021-09-13 14:13:04'),
(46, 4, 5, 'Dos Hombres', 1, '2021-09-13 14:15:22', '2021-09-13 14:15:22'),
(47, 4, 5, 'Casamigos', 1, '2021-09-13 14:15:45', '2021-09-13 14:15:45'),
(48, 4, 5, 'Lobos 1707', 1, '2021-09-13 14:16:06', '2021-09-13 14:16:06'),
(49, 4, 5, 'Convite Mezcal', 1, '2021-09-13 14:16:20', '2021-09-13 14:16:20'),
(50, 4, 5, 'OAX Original', 1, '2021-09-13 14:16:45', '2021-09-13 14:16:45'),
(51, 4, 5, 'Rosaluna', 1, '2021-09-13 14:17:08', '2021-09-13 14:17:08'),
(52, 4, 5, 'Gem & Bolt', 1, '2021-09-13 14:19:29', '2021-09-13 14:19:29'),
(53, 4, 5, 'Ilegal Mezcal', 1, '2021-09-13 14:19:43', '2021-09-13 14:19:43'),
(54, 4, 5, 'Revel Avila', 1, '2021-09-13 14:19:57', '2021-09-13 14:19:57'),
(55, 4, 5, '400 Conejos', 1, '2021-09-13 14:20:13', '2021-09-13 14:20:13'),
(56, 4, 5, 'El Tinieblo', 1, '2021-09-13 14:20:35', '2021-09-13 14:20:35'),
(57, 4, 5, 'All Mezcal', 1, '2021-09-13 14:20:49', '2021-09-13 14:20:49'),
(58, 4, 6, 'LOUIS XIII', 1, '2021-09-13 14:22:36', '2021-09-13 14:22:36'),
(59, 4, 6, 'Hennessy', 1, '2021-09-13 14:22:57', '2021-09-13 14:22:57'),
(60, 4, 6, 'Remy Martin', 1, '2021-09-13 14:23:16', '2021-09-13 14:23:16'),
(61, 4, 6, 'Martell', 1, '2021-09-13 14:23:31', '2021-09-13 14:23:31'),
(62, 4, 6, 'Hardy Cognac', 1, '2021-09-13 14:23:55', '2021-09-13 14:23:55'),
(63, 4, 6, 'Branson Cognac', 1, '2021-09-13 14:24:39', '2021-09-13 14:24:39'),
(64, 4, 6, 'Courvoisier', 1, '2021-09-13 14:25:50', '2021-09-13 14:25:50'),
(65, 4, 6, 'Bertoux', 1, '2021-09-13 14:26:28', '2021-09-13 14:26:28'),
(66, 4, 6, 'Torres', 1, '2021-09-13 14:26:47', '2021-09-13 14:26:47'),
(67, 4, 6, 'All Cognac', 1, '2021-09-13 14:27:02', '2021-09-13 14:27:02'),
(68, 4, 7, 'Absolut Elyx', 1, '2021-09-13 14:31:56', '2021-09-13 14:31:56'),
(69, 4, 7, 'CIROC', 1, '2021-09-13 14:32:13', '2021-09-13 14:32:13'),
(70, 4, 7, 'Ketel One', 1, '2021-09-13 14:32:30', '2021-09-13 14:32:30'),
(71, 4, 7, 'GREY GOOSE', 1, '2021-09-13 14:32:44', '2021-09-13 14:32:44'),
(72, 4, 7, 'THE COMMUNITY SPIRIT', 1, '2021-09-13 14:32:59', '2021-09-13 14:32:59'),
(73, 4, 7, 'Belvedere', 1, '2021-09-13 14:33:13', '2021-09-13 14:33:13'),
(74, 4, 7, 'Absolut', 1, '2021-09-13 14:33:30', '2021-09-13 14:33:30'),
(75, 4, 7, 'Hangar 1 Vodka', 1, '2021-09-13 14:33:43', '2021-09-13 14:33:43'),
(76, 4, 7, 'Tito’s', 1, '2021-09-13 14:33:57', '2021-09-13 14:33:57'),
(77, 4, 7, 'E11EVEN Vodka', 1, '2021-09-13 14:34:08', '2021-09-13 14:34:08'),
(78, 4, 7, 'All Vodka', 1, '2021-09-13 14:34:21', '2021-09-13 14:34:21'),
(79, 5, 14, 'Perrier-jouet', 1, '2021-09-15 13:16:19', '2021-09-16 08:29:17'),
(80, 5, 14, 'Cristal', 1, '2021-09-15 13:20:28', '2021-09-16 08:29:17'),
(81, 5, 14, 'Dom Perignon', 1, '2021-09-15 13:20:38', '2021-09-16 08:29:17'),
(82, 6, 15, 'Sandeman', 1, '2021-09-15 13:22:11', '2021-09-16 08:29:17'),
(83, 6, 15, 'Capensis', 1, '2021-09-15 13:22:21', '2021-09-16 08:29:17'),
(84, 6, 15, 'Marchesi Di Barolo', 1, '2021-09-15 13:22:31', '2021-09-16 08:29:17'),
(85, 5, 14, 'Veuve Clicquot', 1, '2021-09-15 14:20:29', '2021-09-16 08:29:17'),
(86, 5, 14, 'Moet & Chandon', 1, '2021-09-15 14:20:39', '2021-09-16 08:29:17'),
(87, 5, 14, 'Mod Sélection', 1, '2021-09-15 14:20:47', '2021-09-16 08:29:17'),
(88, 5, 14, 'G.h.mumm', 1, '2021-09-15 14:20:56', '2021-09-16 08:29:17'),
(89, 5, 14, 'Armand De Brignac', 1, '2021-09-15 14:21:05', '2021-09-16 08:29:17'),
(90, 5, 14, 'Le Chemin Du Roi', 1, '2021-09-15 14:21:16', '2021-09-16 08:29:17'),
(91, 5, 14, 'Ruinart', 1, '2021-09-15 14:21:26', '2021-09-16 08:29:17'),
(92, 5, 14, 'All Champagne', 1, '2021-09-15 14:21:35', '2021-09-16 08:29:17'),
(93, 6, 15, 'Newton Vineyards', 1, '2021-09-15 14:22:41', '2021-09-16 08:29:17'),
(94, 6, 15, 'Nino Negri', 1, '2021-09-15 14:22:53', '2021-09-16 08:29:17'),
(95, 6, 15, 'Ondule', 1, '2021-09-15 14:23:03', '2021-09-16 08:29:17'),
(96, 6, 15, 'Opus One', 1, '2021-09-15 14:23:19', '2021-09-16 08:29:17'),
(97, 6, 15, 'Penner-ash', 1, '2021-09-15 14:23:29', '2021-09-16 08:29:17'),
(98, 6, 15, 'Santi', 1, '2021-09-15 14:23:38', '2021-09-16 08:29:17'),
(99, 6, 15, 'Vineyard Direct', 1, '2021-09-15 14:23:48', '2021-09-16 08:29:17'),
(100, 6, 15, 'All Wine', 1, '2021-09-15 14:23:56', '2021-09-16 08:29:17'),
(101, 4, 8, 'Sipsmith Gin', 1, '2021-09-30 17:54:13', '2021-09-30 17:54:13'),
(102, 4, 8, 'The Botanist', 1, '2021-09-30 17:54:41', '2021-09-30 17:54:41'),
(103, 4, 8, 'Monkey 47', 1, '2021-09-30 17:54:57', '2021-09-30 17:54:57'),
(104, 4, 8, 'Malfy Gin', 1, '2021-09-30 17:55:11', '2021-09-30 17:55:11'),
(105, 4, 8, 'Tanqueray', 1, '2021-09-30 17:55:24', '2021-09-30 17:55:24'),
(106, 4, 8, 'Aviation Gin', 1, '2021-09-30 17:55:38', '2021-09-30 17:55:38'),
(107, 4, 8, 'Bluecoat Gin', 1, '2021-09-30 17:55:53', '2021-09-30 17:55:53'),
(108, 4, 8, 'Nolet\'s', 1, '2021-09-30 17:56:05', '2021-09-30 17:56:05'),
(109, 4, 8, 'Beefeater', 1, '2021-09-30 17:56:20', '2021-09-30 17:56:20'),
(110, 4, 8, 'Hendrick\'s', 1, '2021-09-30 17:56:34', '2021-09-30 17:56:34'),
(111, 4, 8, 'All Gin', 1, '2021-09-30 17:57:05', '2021-09-30 17:57:05'),
(112, 4, 9, 'Mount Gay', 1, '2021-09-30 18:02:34', '2021-09-30 18:02:34'),
(113, 4, 9, 'Appleton Estate', 1, '2021-09-30 18:02:49', '2021-09-30 18:02:49'),
(114, 4, 9, 'Zacapa', 1, '2021-09-30 18:03:01', '2021-09-30 18:03:01'),
(115, 4, 9, 'Facundo', 1, '2021-09-30 18:03:32', '2021-09-30 18:03:32'),
(116, 4, 9, 'Bacardi', 1, '2021-09-30 18:03:47', '2021-09-30 18:03:47'),
(117, 4, 9, 'Zaya', 1, '2021-09-30 18:04:13', '2021-09-30 18:04:13'),
(118, 4, 9, 'Diplomatico', 1, '2021-09-30 18:04:26', '2021-09-30 18:04:26'),
(119, 4, 9, 'Dictador', 1, '2021-09-30 18:04:37', '2021-09-30 18:04:37'),
(120, 4, 9, 'Santa Teresa', 1, '2021-09-30 18:04:49', '2021-09-30 18:04:49'),
(121, 4, 9, 'Akal Chai Rum', 1, '2021-09-30 18:05:02', '2021-09-30 18:05:02'),
(122, 4, 9, 'All Rum', 1, '2021-09-30 18:05:18', '2021-09-30 18:05:18'),
(123, 4, 10, 'Grand Marnier', 1, '2021-09-30 18:14:02', '2021-09-30 18:14:02'),
(124, 4, 10, 'Baileys', 1, '2021-09-30 18:14:19', '2021-09-30 18:14:19'),
(125, 4, 10, 'Cointreau', 1, '2021-09-30 18:14:32', '2021-09-30 18:14:32'),
(126, 4, 10, 'Select Aperitivo', 1, '2021-09-30 18:14:55', '2021-09-30 18:14:55'),
(127, 4, 10, 'Ricard', 1, '2021-09-30 18:15:50', '2021-09-30 18:15:50'),
(128, 4, 10, 'Chambord', 1, '2021-09-30 18:16:55', '2021-09-30 18:16:55'),
(129, 4, 10, 'Campari', 1, '2021-09-30 18:17:17', '2021-09-30 18:17:17'),
(130, 4, 10, 'Patrón Citrónge Pineapple', 1, '2021-09-30 18:17:46', '2021-09-30 18:17:46'),
(131, 4, 10, 'St-germain', 1, '2021-09-30 18:18:00', '2021-09-30 18:18:00'),
(132, 4, 10, 'Agavero', 1, '2021-09-30 18:18:19', '2021-09-30 18:18:19'),
(133, 4, 10, 'All Liqueur', 1, '2021-09-30 18:18:38', '2021-09-30 18:18:38'),
(134, 4, 11, 'Cutwater', 1, '2021-09-30 18:39:59', '2021-09-30 18:39:59'),
(135, 4, 11, 'Volley', 1, '2021-09-30 18:40:18', '2021-09-30 18:40:18'),
(136, 4, 11, 'Miami Cocktail Co.', 1, '2021-09-30 18:41:09', '2021-09-30 18:41:09'),
(137, 4, 11, 'On The Rocks Cocktails', 1, '2021-09-30 18:41:25', '2021-09-30 18:41:25'),
(138, 4, 11, 'Barrelsmith', 1, '2021-09-30 18:41:49', '2021-09-30 18:41:49'),
(139, 4, 11, 'Savoy Cocktails', 1, '2021-09-30 18:42:04', '2021-09-30 18:42:04'),
(140, 4, 11, 'Babe', 1, '2021-09-30 18:42:16', '2021-09-30 18:42:16'),
(141, 4, 11, 'Two Chicks Cocktails', 1, '2021-09-30 18:43:29', '2021-09-30 18:43:29'),
(142, 4, 11, 'Mule 2.0', 1, '2021-09-30 18:44:02', '2021-09-30 18:44:02'),
(143, 4, 11, 'Courage+stone', 1, '2021-09-30 18:44:26', '2021-09-30 18:44:26'),
(144, 4, 11, 'All Ready To Drink', 1, '2021-09-30 18:45:01', '2021-09-30 18:45:01'),
(145, 4, 12, 'Ole Smoky', 1, '2021-09-30 18:47:34', '2021-09-30 18:47:34'),
(146, 4, 12, 'Sugarlands', 1, '2021-09-30 18:47:55', '2021-09-30 18:47:55'),
(147, 4, 12, 'All Moonshine', 1, '2021-09-30 18:50:25', '2021-09-30 18:50:25'),
(148, 4, 13, 'Fever-tree', 1, '2021-09-30 18:51:56', '2021-09-30 18:51:56'),
(149, 4, 13, 'Hella Cocktail Co.', 1, '2021-09-30 18:52:34', '2021-09-30 18:52:34'),
(150, 4, 13, 'Llanllyr Source', 1, '2021-09-30 18:53:05', '2021-09-30 18:53:05'),
(151, 4, 13, 'Barmalade', 1, '2021-09-30 18:53:20', '2021-09-30 18:53:20'),
(152, 4, 13, 'All Cocktail Mixers', 1, '2021-09-30 18:53:43', '2021-09-30 18:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `career` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `career`, `image`, `created_at`, `updated_at`) VALUES
(1, '<h1>JOIN THE SIR TEAM</h1>\r\n\r\n<p>At SIR we continually push our visionary boundaries through our campaigns and beautiful products. Our approach to our working environment is to bring positive energy and honesty to everything we do. We look for people who are responsible, innovative and passionate to join our family on our journey.</p>', '1648302489_unspecified-65_1200x_35f836df-d4af-4e03-a22e-3df2263ae726_1200x.webp', '2022-03-23 15:15:53', '2022-03-28 16:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_slug` varchar(175) DEFAULT NULL,
  `media_name` varchar(255) NOT NULL,
  `home` int(11) NOT NULL DEFAULT 0,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `title_tag` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `media_name`, `home`, `discount`, `title_tag`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'jewellery', 'jewellery', '1674224635.jpg', 1, '50.00', 'jewellery', 'this is best jewellery', 1, '2022-12-19 08:07:00', '2023-04-01 03:57:32'),
(4, 'western', 'western', '1674224631.jpg', 1, '50.00', 'western', 'this is best western suits', 1, '2022-12-28 21:31:01', '2023-01-20 21:23:51'),
(5, 'sharara', 'sharara', '1674224622.jpg', 1, '40.00', 'sharara', 'this is best sharara suits', 1, '2022-12-28 21:31:58', '2023-01-20 21:23:42'),
(6, 'kurta sets', 'kurta-sets', '1674224617.jpg', 1, '40.00', 'kurta sets', 'this is best kurta sets', 1, '2022-12-28 21:32:37', '2023-01-20 21:23:37'),
(7, 'anarkali', 'anarkali', '1674224611.jpg', 1, '50.00', 'anarkali', 'this is best anarkali suits', 1, '2022-12-28 21:32:58', '2023-01-20 21:23:31'),
(8, 'saree', 'saree-studio', '1674224606.jpg', 1, '40.00', 'saree', 'this is best saree', 1, '2022-12-28 21:33:26', '2023-01-20 21:23:26'),
(9, 'lehenga', 'lehenga', '1674224587.jpg', 1, '30.00', 'lehenga', 'this is best lehenga', 1, '2022-12-28 21:33:47', '2023-01-23 13:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `id` int(11) NOT NULL,
  `colour` varchar(255) NOT NULL,
  `colour_name` varchar(50) DEFAULT NULL,
  `colour_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `colour`, `colour_name`, `colour_image`, `created_at`, `updated_at`) VALUES
(1, 'White', 'whitecolor', 'black.jpg', '2021-11-29 13:58:06', '2023-01-03 07:31:18'),
(2, 'Red', 'redcolor', 'ivory.jpg', '2021-11-29 13:58:06', '2023-01-03 07:30:30'),
(3, 'Blush Pink', 'blush-pinkcolor', 'marguerite-print.jpg', '2021-11-30 09:58:32', '2023-01-03 07:34:28'),
(4, 'Yellow', 'yellowcolor', 'chalk-white.jpg', '2021-11-30 09:58:32', '2023-01-03 07:30:43'),
(5, 'Green', 'greencolor', NULL, '2021-12-03 08:40:49', '2023-01-03 07:31:34'),
(6, 'Black', 'blackcolor', 'red.jpg', '2021-12-03 08:40:49', '2023-01-03 07:30:50'),
(7, 'Powder Blue', 'powder-bluecolor', 'white.jpg', '2021-12-03 08:41:26', '2023-01-03 07:32:44'),
(8, 'Pink', 'blush-pinkcolor', NULL, '2021-12-03 08:41:26', '2023-01-03 07:34:36'),
(9, 'Cobalt Blue', 'cobalt-bluecolor', NULL, '2021-12-03 08:42:38', '2023-01-03 07:35:44'),
(10, 'Purple', 'purplecolor', NULL, '2021-12-03 08:42:38', '2023-01-03 07:36:12'),
(11, 'Fuchsia', 'fuchsiacolor', NULL, '2021-12-03 08:42:38', '2023-01-03 07:36:36'),
(12, 'Peach', 'peachcolor', 'grey.jpg', '2021-12-03 08:43:39', '2023-01-03 08:07:07'),
(13, 'Beige', 'beigecolor', 'bone.jpg', '2021-12-03 08:44:07', '2023-01-03 08:07:11'),
(14, 'Multi', 'multicolor', 'camel.jpg', '2021-12-03 08:44:56', '2023-01-03 08:07:16'),
(15, 'Mint', 'mintcolor', 'black-polka-dot.jpg', '2021-12-03 08:48:27', '2023-01-03 08:07:25'),
(16, 'Grey', 'greycolor', 'lemon.jpg', '2021-12-03 08:48:27', '2023-01-03 08:07:39'),
(17, 'Midnight Blue', 'midnight-bluecolor', NULL, '2021-12-03 09:14:09', '2023-01-03 08:07:50'),
(18, 'Mustard', 'mustardcolor', 'light-blue.jpg', '2021-12-18 08:36:55', '2023-01-03 08:08:03'),
(19, 'Orange', 'orangecolor', NULL, '2021-12-18 21:06:44', '2023-01-03 08:08:08'),
(20, 'Maroon', 'marooncolor', NULL, '2021-12-18 21:06:44', '2023-01-03 08:08:16'),
(21, 'Brown', 'browncolor', NULL, '2022-12-30 10:57:22', '2023-01-03 08:08:22'),
(22, 'Mauve', 'mauvecolor', NULL, '2022-12-30 10:57:22', '2023-01-03 08:08:33'),
(23, 'Turquoise', 'turquoisecolor', NULL, '2022-12-30 10:57:22', '2023-01-03 08:28:10'),
(24, 'Gold', 'goldcolor', NULL, '2022-12-30 10:57:22', '2023-01-03 08:28:17'),
(25, 'Olive Green', 'olive-greencolor', NULL, '2022-12-30 10:57:22', '2023-01-03 08:28:26'),
(26, 'Wine', 'winecolor', NULL, '2022-12-30 10:57:22', '2023-01-03 08:32:00'),
(27, 'Lime', 'limecolor', NULL, '2022-12-30 10:59:08', '2023-01-03 08:32:07'),
(28, 'Nude', 'nudecolor', NULL, '2022-12-30 10:59:08', '2023-01-03 08:32:12'),
(29, 'Coral', 'coralcolor', NULL, '2022-12-30 10:59:08', '2023-01-03 08:32:18'),
(30, 'Silver', 'silvercolor', NULL, '2022-12-30 10:59:08', '2023-01-03 08:32:25'),
(31, 'Violet', 'violetcolor', NULL, '2022-12-30 10:59:08', '2023-01-03 08:32:30'),
(32, 'Rose Gold', 'rose-goldcolor', NULL, '2022-12-30 10:59:08', '2023-01-03 08:32:35'),
(33, 'Copper', 'coppercolor', NULL, '2022-12-30 11:03:38', '2023-01-03 08:32:40'),
(34, 'Bronze', 'bronzecolor', NULL, '2022-12-30 11:03:38', '2023-01-03 08:32:46'),
(35, 'Blue', 'bluecolor', NULL, '2022-12-30 11:03:38', '2023-01-03 08:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact_uses`
--

CREATE TABLE `contact_uses` (
  `id` int(11) NOT NULL,
  `customer_care` longtext NOT NULL,
  `wholesale_press_enquiries` longtext NOT NULL,
  `boutiques` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_uses`
--

INSERT INTO `contact_uses` (`id`, `customer_care`, `wholesale_press_enquiries`, `boutiques`, `created_at`, `updated_at`) VALUES
(1, '<p><ins>Australia</ins><br />\r\n+61 29191 0245<br />\r\nMon - Fri | 8am - 5pm AEST</p>\r\n<p><ins>USA</ins><br />\r\n+61 29191 0245<br />\r\nSun - Thurs | 3pm - 11pm PST</p>', '<p><ins>Australian Sales Enquiries</ins><br />\r\nKatja Schwarz |&nbsp;<a href=\"mailto:katja@sirthelabel.com\">katja@sirthelabel.com</a></p>\r\n<p><ins>International Sales Enquiries</ins><br />\r\nAshley Saunders |&nbsp;<a href=\"mailto:ash@sirthelabel.com\">ash@sirthelabel.com</a></p>\r\n<p><ins>Press&nbsp;Enquiries</ins><br />\r\nAlexandra Neville |&nbsp;<a href=\"mailto:alexandra@sirthelabel.com\">alexandra@sirthelabel.com</a><br />\r\nBill Welner (USA) |&nbsp;<a href=\"mailto:bill@dlx.co\">bill@dlx.co</a></p>', '<p><ins>Bondi Flagship Store</ins><br />\r\n+61 280008781<br />\r\nMon - Sun | 10:00am - 5:00pm AEDT</p>\r\n<p><ins>Manly Boutique</ins><br />\r\n+61 2 9977 5670<br />\r\nMon - Sat | 10:00am - 5:00pm AEDT<br />\r\nSun | 10:00am - 4:00pm AEDT</p>\r\n<p><ins>Perth Pop-up</ins><br />\r\nMon - Wed | 9:30am - 5:00pm AWST<br />\r\nThurs | 9:30am - 5:00pm AWST<br />\r\nFri - Sat | 9:30am - 5:00pm AWST<br />\r\nSun | 11:00am - 4:00pm AWST</p>', '2022-03-28 13:59:25', '2022-03-29 12:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric_code` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso2` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tld` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subregion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `emoji` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emojiU` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag` tinyint(1) NOT NULL DEFAULT 1,
  `wikiDataId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(1, 'Afghanistan', 'AFG', '004', 'AF', '93', 'Kabul', 'AFN', 'Afghan afghani', '؋', '.af', 'افغانستان', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kabul\",\"gmtOffset\":16200,\"gmtOffsetName\":\"UTC+04:30\",\"abbreviation\":\"AFT\",\"tzName\":\"Afghanistan Time\"}]', '{\"kr\":\"아프가니스탄\",\"br\":\"Afeganistão\",\"pt\":\"Afeganistão\",\"nl\":\"Afghanistan\",\"hr\":\"Afganistan\",\"fa\":\"افغانستان\",\"de\":\"Afghanistan\",\"es\":\"Afganistán\",\"fr\":\"Afghanistan\",\"ja\":\"アフガニスタン\",\"it\":\"Afghanistan\",\"cn\":\"阿富汗\"}', '33.00000000', '65.00000000', '🇦🇫', 'U+1F1E6 U+1F1EB', '2018-07-20 14:41:03', '2021-12-11 07:19:42', 1, 'Q889'),
(2, 'Aland Islands', 'ALA', '248', 'AX', '+358-18', 'Mariehamn', 'EUR', 'Euro', '€', '.ax', 'Åland', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Mariehamn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"올란드 제도\",\"br\":\"Ilhas de Aland\",\"pt\":\"Ilhas de Aland\",\"nl\":\"Ålandeilanden\",\"hr\":\"Ålandski otoci\",\"fa\":\"جزایر الند\",\"de\":\"Åland\",\"es\":\"Alandia\",\"fr\":\"Åland\",\"ja\":\"オーランド諸島\",\"it\":\"Isole Aland\",\"cn\":\"奥兰群岛\"}', '60.11666700', '19.90000000', '🇦🇽', 'U+1F1E6 U+1F1FD', '2018-07-20 14:41:03', '2021-12-11 07:26:03', 1, NULL),
(3, 'Albania', 'ALB', '008', 'AL', '355', 'Tirana', 'ALL', 'Albanian lek', 'Lek', '.al', 'Shqipëria', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Tirane\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"알바니아\",\"br\":\"Albânia\",\"pt\":\"Albânia\",\"nl\":\"Albanië\",\"hr\":\"Albanija\",\"fa\":\"آلبانی\",\"de\":\"Albanien\",\"es\":\"Albania\",\"fr\":\"Albanie\",\"ja\":\"アルバニア\",\"it\":\"Albania\",\"cn\":\"阿尔巴尼亚\"}', '41.00000000', '20.00000000', '🇦🇱', 'U+1F1E6 U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 07:20:01', 1, 'Q222'),
(4, 'Algeria', 'DZA', '012', 'DZ', '213', 'Algiers', 'DZD', 'Algerian dinar', 'دج', '.dz', 'الجزائر', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Algiers\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"알제리\",\"br\":\"Argélia\",\"pt\":\"Argélia\",\"nl\":\"Algerije\",\"hr\":\"Alžir\",\"fa\":\"الجزایر\",\"de\":\"Algerien\",\"es\":\"Argelia\",\"fr\":\"Algérie\",\"ja\":\"アルジェリア\",\"it\":\"Algeria\",\"cn\":\"阿尔及利亚\"}', '28.00000000', '3.00000000', '🇩🇿', 'U+1F1E9 U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 07:20:10', 1, 'Q262'),
(5, 'American Samoa', 'ASM', '016', 'AS', '+1-684', 'Pago Pago', 'USD', 'US Dollar', '$', '.as', 'American Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Pago_Pago\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"}]', '{\"kr\":\"아메리칸사모아\",\"br\":\"Samoa Americana\",\"pt\":\"Samoa Americana\",\"nl\":\"Amerikaans Samoa\",\"hr\":\"Američka Samoa\",\"fa\":\"ساموآی آمریکا\",\"de\":\"Amerikanisch-Samoa\",\"es\":\"Samoa Americana\",\"fr\":\"Samoa américaines\",\"ja\":\"アメリカ領サモア\",\"it\":\"Samoa Americane\",\"cn\":\"美属萨摩亚\"}', '-14.33333333', '-170.00000000', '🇦🇸', 'U+1F1E6 U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 07:25:50', 1, NULL),
(6, 'Andorra', 'AND', '020', 'AD', '376', 'Andorra la Vella', 'EUR', 'Euro', '€', '.ad', 'Andorra', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Andorra\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"안도라\",\"br\":\"Andorra\",\"pt\":\"Andorra\",\"nl\":\"Andorra\",\"hr\":\"Andora\",\"fa\":\"آندورا\",\"de\":\"Andorra\",\"es\":\"Andorra\",\"fr\":\"Andorre\",\"ja\":\"アンドラ\",\"it\":\"Andorra\",\"cn\":\"安道尔\"}', '42.50000000', '1.50000000', '🇦🇩', 'U+1F1E6 U+1F1E9', '2018-07-20 14:41:03', '2021-12-11 07:20:22', 1, 'Q228'),
(7, 'Angola', 'AGO', '024', 'AO', '244', 'Luanda', 'AOA', 'Angolan kwanza', 'Kz', '.ao', 'Angola', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Luanda\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"앙골라\",\"br\":\"Angola\",\"pt\":\"Angola\",\"nl\":\"Angola\",\"hr\":\"Angola\",\"fa\":\"آنگولا\",\"de\":\"Angola\",\"es\":\"Angola\",\"fr\":\"Angola\",\"ja\":\"アンゴラ\",\"it\":\"Angola\",\"cn\":\"安哥拉\"}', '-12.50000000', '18.50000000', '🇦🇴', 'U+1F1E6 U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 07:20:31', 1, 'Q916'),
(8, 'Anguilla', 'AIA', '660', 'AI', '+1-264', 'The Valley', 'XCD', 'East Caribbean dollar', '$', '.ai', 'Anguilla', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"앵귈라\",\"br\":\"Anguila\",\"pt\":\"Anguila\",\"nl\":\"Anguilla\",\"hr\":\"Angvila\",\"fa\":\"آنگویلا\",\"de\":\"Anguilla\",\"es\":\"Anguilla\",\"fr\":\"Anguilla\",\"ja\":\"アンギラ\",\"it\":\"Anguilla\",\"cn\":\"安圭拉\"}', '18.25000000', '-63.16666666', '🇦🇮', 'U+1F1E6 U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 07:20:46', 1, NULL),
(9, 'Antarctica', 'ATA', '010', 'AQ', '672', '', 'AAD', 'Antarctican dollar', '$', '.aq', 'Antarctica', 'Polar', '', '[{\"zoneName\":\"Antarctica/Casey\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Antarctica/Davis\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"DAVT\",\"tzName\":\"Davis Time\"},{\"zoneName\":\"Antarctica/DumontDUrville\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"DDUT\",\"tzName\":\"Dumont d\'Urville Time\"},{\"zoneName\":\"Antarctica/Mawson\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MAWT\",\"tzName\":\"Mawson Station Time\"},{\"zoneName\":\"Antarctica/McMurdo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Antarctica/Palmer\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Antarctica/Rothera\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ROTT\",\"tzName\":\"Rothera Research Station Time\"},{\"zoneName\":\"Antarctica/Syowa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"SYOT\",\"tzName\":\"Showa Station Time\"},{\"zoneName\":\"Antarctica/Troll\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"Antarctica/Vostok\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"VOST\",\"tzName\":\"Vostok Station Time\"}]', '{\"kr\":\"남극\",\"br\":\"Antártida\",\"pt\":\"Antárctida\",\"nl\":\"Antarctica\",\"hr\":\"Antarktika\",\"fa\":\"جنوبگان\",\"de\":\"Antarktika\",\"es\":\"Antártida\",\"fr\":\"Antarctique\",\"ja\":\"南極大陸\",\"it\":\"Antartide\",\"cn\":\"南极洲\"}', '-74.65000000', '4.48000000', '🇦🇶', 'U+1F1E6 U+1F1F6', '2018-07-20 14:41:03', '2021-12-11 08:19:17', 1, NULL),
(10, 'Antigua And Barbuda', 'ATG', '028', 'AG', '+1-268', 'St. John\'s', 'XCD', 'Eastern Caribbean dollar', '$', '.ag', 'Antigua and Barbuda', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Antigua\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"앤티가 바부다\",\"br\":\"Antígua e Barbuda\",\"pt\":\"Antígua e Barbuda\",\"nl\":\"Antigua en Barbuda\",\"hr\":\"Antigva i Barbuda\",\"fa\":\"آنتیگوا و باربودا\",\"de\":\"Antigua und Barbuda\",\"es\":\"Antigua y Barbuda\",\"fr\":\"Antigua-et-Barbuda\",\"ja\":\"アンティグア・バーブーダ\",\"it\":\"Antigua e Barbuda\",\"cn\":\"安提瓜和巴布达\"}', '17.05000000', '-61.80000000', '🇦🇬', 'U+1F1E6 U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 07:26:34', 1, 'Q781'),
(11, 'Argentina', 'ARG', '032', 'AR', '54', 'Buenos Aires', 'ARS', 'Argentine peso', '$', '.ar', 'Argentina', 'Americas', 'South America', '[{\"zoneName\":\"America/Argentina/Buenos_Aires\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Catamarca\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Cordoba\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Jujuy\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/La_Rioja\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Mendoza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Rio_Gallegos\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Salta\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/San_Juan\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/San_Luis\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Tucuman\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Ushuaia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"}]', '{\"kr\":\"아르헨티나\",\"br\":\"Argentina\",\"pt\":\"Argentina\",\"nl\":\"Argentinië\",\"hr\":\"Argentina\",\"fa\":\"آرژانتین\",\"de\":\"Argentinien\",\"es\":\"Argentina\",\"fr\":\"Argentine\",\"ja\":\"アルゼンチン\",\"it\":\"Argentina\",\"cn\":\"阿根廷\"}', '-34.00000000', '-64.00000000', '🇦🇷', 'U+1F1E6 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 07:21:01', 1, 'Q414'),
(12, 'Armenia', 'ARM', '051', 'AM', '374', 'Yerevan', 'AMD', 'Armenian dram', '֏', '.am', 'Հայաստան', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Yerevan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Armenia Time\"}]', '{\"kr\":\"아르메니아\",\"br\":\"Armênia\",\"pt\":\"Arménia\",\"nl\":\"Armenië\",\"hr\":\"Armenija\",\"fa\":\"ارمنستان\",\"de\":\"Armenien\",\"es\":\"Armenia\",\"fr\":\"Arménie\",\"ja\":\"アルメニア\",\"it\":\"Armenia\",\"cn\":\"亚美尼亚\"}', '40.00000000', '45.00000000', '🇦🇲', 'U+1F1E6 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 07:21:06', 1, 'Q399'),
(13, 'Aruba', 'ABW', '533', 'AW', '297', 'Oranjestad', 'AWG', 'Aruban florin', 'ƒ', '.aw', 'Aruba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Aruba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"아루바\",\"br\":\"Aruba\",\"pt\":\"Aruba\",\"nl\":\"Aruba\",\"hr\":\"Aruba\",\"fa\":\"آروبا\",\"de\":\"Aruba\",\"es\":\"Aruba\",\"fr\":\"Aruba\",\"ja\":\"アルバ\",\"it\":\"Aruba\",\"cn\":\"阿鲁巴\"}', '12.50000000', '-69.96666666', '🇦🇼', 'U+1F1E6 U+1F1FC', '2018-07-20 14:41:03', '2021-12-11 07:26:47', 1, NULL),
(14, 'Australia', 'AUS', '036', 'AU', '61', 'Canberra', 'AUD', 'Australian dollar', '$', '.au', 'Australia', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Antarctica/Macquarie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MIST\",\"tzName\":\"Macquarie Island Station Time\"},{\"zoneName\":\"Australia/Adelaide\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia/Brisbane\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia/Broken_Hill\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia/Currie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Darwin\",\"gmtOffset\":34200,\"gmtOffsetName\":\"UTC+09:30\",\"abbreviation\":\"ACST\",\"tzName\":\"Australian Central Standard Time\"},{\"zoneName\":\"Australia/Eucla\",\"gmtOffset\":31500,\"gmtOffsetName\":\"UTC+08:45\",\"abbreviation\":\"ACWST\",\"tzName\":\"Australian Central Western Standard Time (Unofficial)\"},{\"zoneName\":\"Australia/Hobart\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Lindeman\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia/Lord_Howe\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"LHST\",\"tzName\":\"Lord Howe Summer Time\"},{\"zoneName\":\"Australia/Melbourne\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Perth\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Australia/Sydney\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"}]', '{\"kr\":\"호주\",\"br\":\"Austrália\",\"pt\":\"Austrália\",\"nl\":\"Australië\",\"hr\":\"Australija\",\"fa\":\"استرالیا\",\"de\":\"Australien\",\"es\":\"Australia\",\"fr\":\"Australie\",\"ja\":\"オーストラリア\",\"it\":\"Australia\",\"cn\":\"澳大利亚\"}', '-27.00000000', '133.00000000', '🇦🇺', 'U+1F1E6 U+1F1FA', '2018-07-20 14:41:03', '2021-12-11 07:21:23', 1, 'Q408'),
(15, 'Austria', 'AUT', '040', 'AT', '43', 'Vienna', 'EUR', 'Euro', '€', '.at', 'Österreich', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Vienna\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"오스트리아\",\"br\":\"áustria\",\"pt\":\"áustria\",\"nl\":\"Oostenrijk\",\"hr\":\"Austrija\",\"fa\":\"اتریش\",\"de\":\"Österreich\",\"es\":\"Austria\",\"fr\":\"Autriche\",\"ja\":\"オーストリア\",\"it\":\"Austria\",\"cn\":\"奥地利\"}', '47.33333333', '13.33333333', '🇦🇹', 'U+1F1E6 U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 07:21:35', 1, 'Q40'),
(16, 'Azerbaijan', 'AZE', '031', 'AZ', '994', 'Baku', 'AZN', 'Azerbaijani manat', 'm', '.az', 'Azərbaycan', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Baku\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AZT\",\"tzName\":\"Azerbaijan Time\"}]', '{\"kr\":\"아제르바이잔\",\"br\":\"Azerbaijão\",\"pt\":\"Azerbaijão\",\"nl\":\"Azerbeidzjan\",\"hr\":\"Azerbajdžan\",\"fa\":\"آذربایجان\",\"de\":\"Aserbaidschan\",\"es\":\"Azerbaiyán\",\"fr\":\"Azerbaïdjan\",\"ja\":\"アゼルバイジャン\",\"it\":\"Azerbaijan\",\"cn\":\"阿塞拜疆\"}', '40.50000000', '47.50000000', '🇦🇿', 'U+1F1E6 U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 07:21:43', 1, 'Q227'),
(17, 'Bahamas The', 'BHS', '044', 'BS', '+1-242', 'Nassau', 'BSD', 'Bahamian dollar', 'B$', '.bs', 'Bahamas', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Nassau\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"}]', '{\"kr\":\"바하마\",\"br\":\"Bahamas\",\"pt\":\"Baamas\",\"nl\":\"Bahama’s\",\"hr\":\"Bahami\",\"fa\":\"باهاما\",\"de\":\"Bahamas\",\"es\":\"Bahamas\",\"fr\":\"Bahamas\",\"ja\":\"バハマ\",\"it\":\"Bahamas\",\"cn\":\"巴哈马\"}', '24.25000000', '-76.00000000', '🇧🇸', 'U+1F1E7 U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 07:21:50', 1, 'Q778'),
(18, 'Bahrain', 'BHR', '048', 'BH', '973', 'Manama', 'BHD', 'Bahraini dinar', '.د.ب', '.bh', '‏البحرين', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Bahrain\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"바레인\",\"br\":\"Bahrein\",\"pt\":\"Barém\",\"nl\":\"Bahrein\",\"hr\":\"Bahrein\",\"fa\":\"بحرین\",\"de\":\"Bahrain\",\"es\":\"Bahrein\",\"fr\":\"Bahreïn\",\"ja\":\"バーレーン\",\"it\":\"Bahrein\",\"cn\":\"巴林\"}', '26.00000000', '50.55000000', '🇧🇭', 'U+1F1E7 U+1F1ED', '2018-07-20 14:41:03', '2021-12-11 07:21:58', 1, 'Q398'),
(19, 'Bangladesh', 'BGD', '050', 'BD', '880', 'Dhaka', 'BDT', 'Bangladeshi taka', '৳', '.bd', 'Bangladesh', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Dhaka\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BDT\",\"tzName\":\"Bangladesh Standard Time\"}]', '{\"kr\":\"방글라데시\",\"br\":\"Bangladesh\",\"pt\":\"Bangladeche\",\"nl\":\"Bangladesh\",\"hr\":\"Bangladeš\",\"fa\":\"بنگلادش\",\"de\":\"Bangladesch\",\"es\":\"Bangladesh\",\"fr\":\"Bangladesh\",\"ja\":\"バングラデシュ\",\"it\":\"Bangladesh\",\"cn\":\"孟加拉\"}', '24.00000000', '90.00000000', '🇧🇩', 'U+1F1E7 U+1F1E9', '2018-07-20 14:41:03', '2021-12-11 07:22:04', 1, 'Q902'),
(20, 'Barbados', 'BRB', '052', 'BB', '+1-246', 'Bridgetown', 'BBD', 'Barbadian dollar', 'Bds$', '.bb', 'Barbados', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Barbados\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"바베이도스\",\"br\":\"Barbados\",\"pt\":\"Barbados\",\"nl\":\"Barbados\",\"hr\":\"Barbados\",\"fa\":\"باربادوس\",\"de\":\"Barbados\",\"es\":\"Barbados\",\"fr\":\"Barbade\",\"ja\":\"バルバドス\",\"it\":\"Barbados\",\"cn\":\"巴巴多斯\"}', '13.16666666', '-59.53333333', '🇧🇧', 'U+1F1E7 U+1F1E7', '2018-07-20 14:41:03', '2021-12-11 07:27:03', 1, 'Q244'),
(21, 'Belarus', 'BLR', '112', 'BY', '375', 'Minsk', 'BYN', 'Belarusian ruble', 'Br', '.by', 'Белару́сь', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Minsk\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"}]', '{\"kr\":\"벨라루스\",\"br\":\"Bielorrússia\",\"pt\":\"Bielorrússia\",\"nl\":\"Wit-Rusland\",\"hr\":\"Bjelorusija\",\"fa\":\"بلاروس\",\"de\":\"Weißrussland\",\"es\":\"Bielorrusia\",\"fr\":\"Biélorussie\",\"ja\":\"ベラルーシ\",\"it\":\"Bielorussia\",\"cn\":\"白俄罗斯\"}', '53.00000000', '28.00000000', '🇧🇾', 'U+1F1E7 U+1F1FE', '2018-07-20 14:41:03', '2021-12-11 07:27:09', 1, 'Q184'),
(22, 'Belgium', 'BEL', '056', 'BE', '32', 'Brussels', 'EUR', 'Euro', '€', '.be', 'België', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Brussels\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"벨기에\",\"br\":\"Bélgica\",\"pt\":\"Bélgica\",\"nl\":\"België\",\"hr\":\"Belgija\",\"fa\":\"بلژیک\",\"de\":\"Belgien\",\"es\":\"Bélgica\",\"fr\":\"Belgique\",\"ja\":\"ベルギー\",\"it\":\"Belgio\",\"cn\":\"比利时\"}', '50.83333333', '4.00000000', '🇧🇪', 'U+1F1E7 U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 07:27:15', 1, 'Q31'),
(23, 'Belize', 'BLZ', '084', 'BZ', '501', 'Belmopan', 'BZD', 'Belize dollar', '$', '.bz', 'Belize', 'Americas', 'Central America', '[{\"zoneName\":\"America/Belize\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America)\"}]', '{\"kr\":\"벨리즈\",\"br\":\"Belize\",\"pt\":\"Belize\",\"nl\":\"Belize\",\"hr\":\"Belize\",\"fa\":\"بلیز\",\"de\":\"Belize\",\"es\":\"Belice\",\"fr\":\"Belize\",\"ja\":\"ベリーズ\",\"it\":\"Belize\",\"cn\":\"伯利兹\"}', '17.25000000', '-88.75000000', '🇧🇿', 'U+1F1E7 U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 07:27:21', 1, 'Q242'),
(24, 'Benin', 'BEN', '204', 'BJ', '229', 'Porto-Novo', 'XOF', 'West African CFA franc', 'CFA', '.bj', 'Bénin', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Porto-Novo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"베냉\",\"br\":\"Benin\",\"pt\":\"Benim\",\"nl\":\"Benin\",\"hr\":\"Benin\",\"fa\":\"بنین\",\"de\":\"Benin\",\"es\":\"Benín\",\"fr\":\"Bénin\",\"ja\":\"ベナン\",\"it\":\"Benin\",\"cn\":\"贝宁\"}', '9.50000000', '2.25000000', '🇧🇯', 'U+1F1E7 U+1F1EF', '2018-07-20 14:41:03', '2021-12-11 07:27:27', 1, 'Q962'),
(25, 'Bermuda', 'BMU', '060', 'BM', '+1-441', 'Hamilton', 'BMD', 'Bermudian dollar', '$', '.bm', 'Bermuda', 'Americas', 'Northern America', '[{\"zoneName\":\"Atlantic/Bermuda\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"버뮤다\",\"br\":\"Bermudas\",\"pt\":\"Bermudas\",\"nl\":\"Bermuda\",\"hr\":\"Bermudi\",\"fa\":\"برمودا\",\"de\":\"Bermuda\",\"es\":\"Bermudas\",\"fr\":\"Bermudes\",\"ja\":\"バミューダ\",\"it\":\"Bermuda\",\"cn\":\"百慕大\"}', '32.33333333', '-64.75000000', '🇧🇲', 'U+1F1E7 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 07:27:32', 1, NULL),
(26, 'Bhutan', 'BTN', '064', 'BT', '975', 'Thimphu', 'BTN', 'Bhutanese ngultrum', 'Nu.', '.bt', 'ʼbrug-yul', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Thimphu\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BTT\",\"tzName\":\"Bhutan Time\"}]', '{\"kr\":\"부탄\",\"br\":\"Butão\",\"pt\":\"Butão\",\"nl\":\"Bhutan\",\"hr\":\"Butan\",\"fa\":\"بوتان\",\"de\":\"Bhutan\",\"es\":\"Bután\",\"fr\":\"Bhoutan\",\"ja\":\"ブータン\",\"it\":\"Bhutan\",\"cn\":\"不丹\"}', '27.50000000', '90.50000000', '🇧🇹', 'U+1F1E7 U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 07:27:38', 1, 'Q917'),
(27, 'Bolivia', 'BOL', '068', 'BO', '591', 'Sucre', 'BOB', 'Bolivian boliviano', 'Bs.', '.bo', 'Bolivia', 'Americas', 'South America', '[{\"zoneName\":\"America/La_Paz\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BOT\",\"tzName\":\"Bolivia Time\"}]', '{\"kr\":\"볼리비아\",\"br\":\"Bolívia\",\"pt\":\"Bolívia\",\"nl\":\"Bolivia\",\"hr\":\"Bolivija\",\"fa\":\"بولیوی\",\"de\":\"Bolivien\",\"es\":\"Bolivia\",\"fr\":\"Bolivie\",\"ja\":\"ボリビア多民族国\",\"it\":\"Bolivia\",\"cn\":\"玻利维亚\"}', '-17.00000000', '-65.00000000', '🇧🇴', 'U+1F1E7 U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 07:27:50', 1, 'Q750'),
(28, 'Bosnia and Herzegovina', 'BIH', '070', 'BA', '387', 'Sarajevo', 'BAM', 'Bosnia and Herzegovina convertible mark', 'KM', '.ba', 'Bosna i Hercegovina', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Sarajevo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"보스니아 헤르체고비나\",\"br\":\"Bósnia e Herzegovina\",\"pt\":\"Bósnia e Herzegovina\",\"nl\":\"Bosnië en Herzegovina\",\"hr\":\"Bosna i Hercegovina\",\"fa\":\"بوسنی و هرزگوین\",\"de\":\"Bosnien und Herzegowina\",\"es\":\"Bosnia y Herzegovina\",\"fr\":\"Bosnie-Herzégovine\",\"ja\":\"ボスニア・ヘルツェゴビナ\",\"it\":\"Bosnia ed Erzegovina\",\"cn\":\"波斯尼亚和黑塞哥维那\"}', '44.00000000', '18.00000000', '🇧🇦', 'U+1F1E7 U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 07:28:10', 1, 'Q225'),
(29, 'Botswana', 'BWA', '072', 'BW', '267', 'Gaborone', 'BWP', 'Botswana pula', 'P', '.bw', 'Botswana', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Gaborone\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"보츠와나\",\"br\":\"Botsuana\",\"pt\":\"Botsuana\",\"nl\":\"Botswana\",\"hr\":\"Bocvana\",\"fa\":\"بوتسوانا\",\"de\":\"Botswana\",\"es\":\"Botswana\",\"fr\":\"Botswana\",\"ja\":\"ボツワナ\",\"it\":\"Botswana\",\"cn\":\"博茨瓦纳\"}', '-22.00000000', '24.00000000', '🇧🇼', 'U+1F1E7 U+1F1FC', '2018-07-20 14:41:03', '2021-12-11 07:28:22', 1, 'Q963'),
(30, 'Bouvet Island', 'BVT', '074', 'BV', '0055', '', 'NOK', 'Norwegian Krone', 'kr', '.bv', 'Bouvetøya', '', '', '[{\"zoneName\":\"Europe/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"부벳 섬\",\"br\":\"Ilha Bouvet\",\"pt\":\"Ilha Bouvet\",\"nl\":\"Bouveteiland\",\"hr\":\"Otok Bouvet\",\"fa\":\"جزیره بووه\",\"de\":\"Bouvetinsel\",\"es\":\"Isla Bouvet\",\"fr\":\"Île Bouvet\",\"ja\":\"ブーベ島\",\"it\":\"Isola Bouvet\",\"cn\":\"布维岛\"}', '-54.43333333', '3.40000000', '🇧🇻', 'U+1F1E7 U+1F1FB', '2018-07-20 14:41:03', '2021-12-11 08:17:50', 1, NULL),
(31, 'Brazil', 'BRA', '076', 'BR', '55', 'Brasilia', 'BRL', 'Brazilian real', 'R$', '.br', 'Brasil', 'Americas', 'South America', '[{\"zoneName\":\"America/Araguaina\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Bahia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Belem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Boa_Vista\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Campo_Grande\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Cuiaba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasilia Time\"},{\"zoneName\":\"America/Eirunepe\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America/Fortaleza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Maceio\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Manaus\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)\"},{\"zoneName\":\"America/Noronha\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"FNT\",\"tzName\":\"Fernando de Noronha Time\"},{\"zoneName\":\"America/Porto_Velho\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Recife\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Rio_Branco\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America/Santarem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Sao_Paulo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"}]', '{\"kr\":\"브라질\",\"br\":\"Brasil\",\"pt\":\"Brasil\",\"nl\":\"Brazilië\",\"hr\":\"Brazil\",\"fa\":\"برزیل\",\"de\":\"Brasilien\",\"es\":\"Brasil\",\"fr\":\"Brésil\",\"ja\":\"ブラジル\",\"it\":\"Brasile\",\"cn\":\"巴西\"}', '-10.00000000', '-55.00000000', '🇧🇷', 'U+1F1E7 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 07:28:56', 1, 'Q155'),
(32, 'British Indian Ocean Territory', 'IOT', '086', 'IO', '246', 'Diego Garcia', 'USD', 'United States dollar', '$', '.io', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Chagos\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"IOT\",\"tzName\":\"Indian Ocean Time\"}]', '{\"kr\":\"영국령 인도양 지역\",\"br\":\"Território Britânico do Oceano íÍdico\",\"pt\":\"Território Britânico do Oceano Índico\",\"nl\":\"Britse Gebieden in de Indische Oceaan\",\"hr\":\"Britanski Indijskooceanski teritorij\",\"fa\":\"قلمرو بریتانیا در اقیانوس هند\",\"de\":\"Britisches Territorium im Indischen Ozean\",\"es\":\"Territorio Británico del Océano Índico\",\"fr\":\"Territoire britannique de l\'océan Indien\",\"ja\":\"イギリス領インド洋地域\",\"it\":\"Territorio britannico dell\'oceano indiano\",\"cn\":\"英属印度洋领地\"}', '-6.00000000', '71.50000000', '🇮🇴', 'U+1F1EE U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 07:29:10', 1, NULL),
(33, 'Brunei', 'BRN', '096', 'BN', '673', 'Bandar Seri Begawan', 'BND', 'Brunei dollar', 'B$', '.bn', 'Negara Brunei Darussalam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Brunei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"BNT\",\"tzName\":\"Brunei Darussalam Time\"}]', '{\"kr\":\"브루나이\",\"br\":\"Brunei\",\"pt\":\"Brunei\",\"nl\":\"Brunei\",\"hr\":\"Brunej\",\"fa\":\"برونئی\",\"de\":\"Brunei\",\"es\":\"Brunei\",\"fr\":\"Brunei\",\"ja\":\"ブルネイ・ダルサラーム\",\"it\":\"Brunei\",\"cn\":\"文莱\"}', '4.50000000', '114.66666666', '🇧🇳', 'U+1F1E7 U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 07:29:19', 1, 'Q921'),
(34, 'Bulgaria', 'BGR', '100', 'BG', '359', 'Sofia', 'BGN', 'Bulgarian lev', 'Лв.', '.bg', 'България', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Sofia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"불가리아\",\"br\":\"Bulgária\",\"pt\":\"Bulgária\",\"nl\":\"Bulgarije\",\"hr\":\"Bugarska\",\"fa\":\"بلغارستان\",\"de\":\"Bulgarien\",\"es\":\"Bulgaria\",\"fr\":\"Bulgarie\",\"ja\":\"ブルガリア\",\"it\":\"Bulgaria\",\"cn\":\"保加利亚\"}', '43.00000000', '25.00000000', '🇧🇬', 'U+1F1E7 U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 07:29:26', 1, 'Q219'),
(35, 'Burkina Faso', 'BFA', '854', 'BF', '226', 'Ouagadougou', 'XOF', 'West African CFA franc', 'CFA', '.bf', 'Burkina Faso', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Ouagadougou\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"부르키나 파소\",\"br\":\"Burkina Faso\",\"pt\":\"Burquina Faso\",\"nl\":\"Burkina Faso\",\"hr\":\"Burkina Faso\",\"fa\":\"بورکینافاسو\",\"de\":\"Burkina Faso\",\"es\":\"Burkina Faso\",\"fr\":\"Burkina Faso\",\"ja\":\"ブルキナファソ\",\"it\":\"Burkina Faso\",\"cn\":\"布基纳法索\"}', '13.00000000', '-2.00000000', '🇧🇫', 'U+1F1E7 U+1F1EB', '2018-07-20 14:41:03', '2021-12-11 07:29:35', 1, 'Q965'),
(36, 'Burundi', 'BDI', '108', 'BI', '257', 'Bujumbura', 'BIF', 'Burundian franc', 'FBu', '.bi', 'Burundi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Bujumbura\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"부룬디\",\"br\":\"Burundi\",\"pt\":\"Burúndi\",\"nl\":\"Burundi\",\"hr\":\"Burundi\",\"fa\":\"بوروندی\",\"de\":\"Burundi\",\"es\":\"Burundi\",\"fr\":\"Burundi\",\"ja\":\"ブルンジ\",\"it\":\"Burundi\",\"cn\":\"布隆迪\"}', '-3.50000000', '30.00000000', '🇧🇮', 'U+1F1E7 U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 07:29:42', 1, 'Q967'),
(37, 'Cambodia', 'KHM', '116', 'KH', '855', 'Phnom Penh', 'KHR', 'Cambodian riel', 'KHR', '.kh', 'Kâmpŭchéa', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Phnom_Penh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"캄보디아\",\"br\":\"Camboja\",\"pt\":\"Camboja\",\"nl\":\"Cambodja\",\"hr\":\"Kambodža\",\"fa\":\"کامبوج\",\"de\":\"Kambodscha\",\"es\":\"Camboya\",\"fr\":\"Cambodge\",\"ja\":\"カンボジア\",\"it\":\"Cambogia\",\"cn\":\"柬埔寨\"}', '13.00000000', '105.00000000', '🇰🇭', 'U+1F1F0 U+1F1ED', '2018-07-20 14:41:03', '2021-12-11 07:29:47', 1, 'Q424'),
(38, 'Cameroon', 'CMR', '120', 'CM', '237', 'Yaounde', 'XAF', 'Central African CFA franc', 'FCFA', '.cm', 'Cameroon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Douala\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"카메룬\",\"br\":\"Camarões\",\"pt\":\"Camarões\",\"nl\":\"Kameroen\",\"hr\":\"Kamerun\",\"fa\":\"کامرون\",\"de\":\"Kamerun\",\"es\":\"Camerún\",\"fr\":\"Cameroun\",\"ja\":\"カメルーン\",\"it\":\"Camerun\",\"cn\":\"喀麦隆\"}', '6.00000000', '12.00000000', '🇨🇲', 'U+1F1E8 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 07:29:54', 1, 'Q1009'),
(39, 'Canada', 'CAN', '124', 'CA', '1', 'Ottawa', 'CAD', 'Canadian dollar', '$', '.ca', 'Canada', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Atikokan\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"},{\"zoneName\":\"America/Blanc-Sablon\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Cambridge_Bay\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Creston\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Dawson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Dawson_Creek\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Edmonton\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Fort_Nelson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Glace_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Goose_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Halifax\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Inuvik\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Iqaluit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Moncton\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Nipigon\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Pangnirtung\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Rainy_River\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Rankin_Inlet\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Regina\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Resolute\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/St_Johns\",\"gmtOffset\":-12600,\"gmtOffsetName\":\"UTC-03:30\",\"abbreviation\":\"NST\",\"tzName\":\"Newfoundland Standard Time\"},{\"zoneName\":\"America/Swift_Current\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Thunder_Bay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Toronto\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Vancouver\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America/Whitehorse\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Winnipeg\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Yellowknife\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"}]', '{\"kr\":\"캐나다\",\"br\":\"Canadá\",\"pt\":\"Canadá\",\"nl\":\"Canada\",\"hr\":\"Kanada\",\"fa\":\"کانادا\",\"de\":\"Kanada\",\"es\":\"Canadá\",\"fr\":\"Canada\",\"ja\":\"カナダ\",\"it\":\"Canada\",\"cn\":\"加拿大\"}', '60.00000000', '-95.00000000', '🇨🇦', 'U+1F1E8 U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 07:29:58', 1, 'Q16'),
(40, 'Cape Verde', 'CPV', '132', 'CV', '238', 'Praia', 'CVE', 'Cape Verdean escudo', '$', '.cv', 'Cabo Verde', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic/Cape_Verde\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"CVT\",\"tzName\":\"Cape Verde Time\"}]', '{\"kr\":\"카보베르데\",\"br\":\"Cabo Verde\",\"pt\":\"Cabo Verde\",\"nl\":\"Kaapverdië\",\"hr\":\"Zelenortska Republika\",\"fa\":\"کیپ ورد\",\"de\":\"Kap Verde\",\"es\":\"Cabo Verde\",\"fr\":\"Cap Vert\",\"ja\":\"カーボベルデ\",\"it\":\"Capo Verde\",\"cn\":\"佛得角\"}', '16.00000000', '-24.00000000', '🇨🇻', 'U+1F1E8 U+1F1FB', '2018-07-20 14:41:03', '2021-12-11 07:30:03', 1, 'Q1011'),
(41, 'Cayman Islands', 'CYM', '136', 'KY', '+1-345', 'George Town', 'KYD', 'Cayman Islands dollar', '$', '.ky', 'Cayman Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Cayman\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"케이먼 제도\",\"br\":\"Ilhas Cayman\",\"pt\":\"Ilhas Caimão\",\"nl\":\"Caymaneilanden\",\"hr\":\"Kajmanski otoci\",\"fa\":\"جزایر کیمن\",\"de\":\"Kaimaninseln\",\"es\":\"Islas Caimán\",\"fr\":\"Îles Caïmans\",\"ja\":\"ケイマン諸島\",\"it\":\"Isole Cayman\",\"cn\":\"开曼群岛\"}', '19.50000000', '-80.50000000', '🇰🇾', 'U+1F1F0 U+1F1FE', '2018-07-20 14:41:03', '2021-12-11 07:30:09', 1, NULL),
(42, 'Central African Republic', 'CAF', '140', 'CF', '236', 'Bangui', 'XAF', 'Central African CFA franc', 'FCFA', '.cf', 'Ködörösêse tî Bêafrîka', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Bangui\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"중앙아프리카 공화국\",\"br\":\"República Centro-Africana\",\"pt\":\"República Centro-Africana\",\"nl\":\"Centraal-Afrikaanse Republiek\",\"hr\":\"Srednjoafrička Republika\",\"fa\":\"جمهوری آفریقای مرکزی\",\"de\":\"Zentralafrikanische Republik\",\"es\":\"República Centroafricana\",\"fr\":\"République centrafricaine\",\"ja\":\"中央アフリカ共和国\",\"it\":\"Repubblica Centrafricana\",\"cn\":\"中非\"}', '7.00000000', '21.00000000', '🇨🇫', 'U+1F1E8 U+1F1EB', '2018-07-20 14:41:03', '2021-12-11 07:30:14', 1, 'Q929'),
(43, 'Chad', 'TCD', '148', 'TD', '235', 'N\'Djamena', 'XAF', 'Central African CFA franc', 'FCFA', '.td', 'Tchad', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Ndjamena\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"차드\",\"br\":\"Chade\",\"pt\":\"Chade\",\"nl\":\"Tsjaad\",\"hr\":\"Čad\",\"fa\":\"چاد\",\"de\":\"Tschad\",\"es\":\"Chad\",\"fr\":\"Tchad\",\"ja\":\"チャド\",\"it\":\"Ciad\",\"cn\":\"乍得\"}', '15.00000000', '19.00000000', '🇹🇩', 'U+1F1F9 U+1F1E9', '2018-07-20 14:41:03', '2021-12-11 07:30:21', 1, 'Q657'),
(44, 'Chile', 'CHL', '152', 'CL', '56', 'Santiago', 'CLP', 'Chilean peso', '$', '.cl', 'Chile', 'Americas', 'South America', '[{\"zoneName\":\"America/Punta_Arenas\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"America/Santiago\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Pacific/Easter\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EASST\",\"tzName\":\"Easter Island Summer Time\"}]', '{\"kr\":\"칠리\",\"br\":\"Chile\",\"pt\":\"Chile\",\"nl\":\"Chili\",\"hr\":\"Čile\",\"fa\":\"شیلی\",\"de\":\"Chile\",\"es\":\"Chile\",\"fr\":\"Chili\",\"ja\":\"チリ\",\"it\":\"Cile\",\"cn\":\"智利\"}', '-30.00000000', '-71.00000000', '🇨🇱', 'U+1F1E8 U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 07:30:28', 1, 'Q298'),
(45, 'China', 'CHN', '156', 'CN', '86', 'Beijing', 'CNY', 'Chinese yuan', '¥', '.cn', '中国', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Shanghai\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"},{\"zoneName\":\"Asia/Urumqi\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"XJT\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"중국\",\"br\":\"China\",\"pt\":\"China\",\"nl\":\"China\",\"hr\":\"Kina\",\"fa\":\"چین\",\"de\":\"China\",\"es\":\"China\",\"fr\":\"Chine\",\"ja\":\"中国\",\"it\":\"Cina\",\"cn\":\"中国\"}', '35.00000000', '105.00000000', '🇨🇳', 'U+1F1E8 U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 07:30:33', 1, 'Q148'),
(46, 'Christmas Island', 'CXR', '162', 'CX', '61', 'Flying Fish Cove', 'AUD', 'Australian dollar', '$', '.cx', 'Christmas Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian/Christmas\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"CXT\",\"tzName\":\"Christmas Island Time\"}]', '{\"kr\":\"크리스마스 섬\",\"br\":\"Ilha Christmas\",\"pt\":\"Ilha do Natal\",\"nl\":\"Christmaseiland\",\"hr\":\"Božićni otok\",\"fa\":\"جزیره کریسمس\",\"de\":\"Weihnachtsinsel\",\"es\":\"Isla de Navidad\",\"fr\":\"Île Christmas\",\"ja\":\"クリスマス島\",\"it\":\"Isola di Natale\",\"cn\":\"圣诞岛\"}', '-10.50000000', '105.66666666', '🇨🇽', 'U+1F1E8 U+1F1FD', '2018-07-20 14:41:03', '2021-12-11 08:18:01', 1, NULL),
(47, 'Cocos (Keeling) Islands', 'CCK', '166', 'CC', '61', 'West Island', 'AUD', 'Australian dollar', '$', '.cc', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian/Cocos\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"CCT\",\"tzName\":\"Cocos Islands Time\"}]', '{\"kr\":\"코코스 제도\",\"br\":\"Ilhas Cocos\",\"pt\":\"Ilhas dos Cocos\",\"nl\":\"Cocoseilanden\",\"hr\":\"Kokosovi Otoci\",\"fa\":\"جزایر کوکوس\",\"de\":\"Kokosinseln\",\"es\":\"Islas Cocos o Islas Keeling\",\"fr\":\"Îles Cocos\",\"ja\":\"ココス（キーリング）諸島\",\"it\":\"Isole Cocos e Keeling\",\"cn\":\"科科斯（基林）群岛\"}', '-12.50000000', '96.83333333', '🇨🇨', 'U+1F1E8 U+1F1E8', '2018-07-20 14:41:03', '2021-12-11 08:18:14', 1, NULL),
(48, 'Colombia', 'COL', '170', 'CO', '57', 'Bogota', 'COP', 'Colombian peso', '$', '.co', 'Colombia', 'Americas', 'South America', '[{\"zoneName\":\"America/Bogota\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"COT\",\"tzName\":\"Colombia Time\"}]', '{\"kr\":\"콜롬비아\",\"br\":\"Colômbia\",\"pt\":\"Colômbia\",\"nl\":\"Colombia\",\"hr\":\"Kolumbija\",\"fa\":\"کلمبیا\",\"de\":\"Kolumbien\",\"es\":\"Colombia\",\"fr\":\"Colombie\",\"ja\":\"コロンビア\",\"it\":\"Colombia\",\"cn\":\"哥伦比亚\"}', '4.00000000', '-72.00000000', '🇨🇴', 'U+1F1E8 U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 07:31:00', 1, 'Q739'),
(49, 'Comoros', 'COM', '174', 'KM', '269', 'Moroni', 'KMF', 'Comorian franc', 'CF', '.km', 'Komori', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Comoro\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"코모로\",\"br\":\"Comores\",\"pt\":\"Comores\",\"nl\":\"Comoren\",\"hr\":\"Komori\",\"fa\":\"کومور\",\"de\":\"Union der Komoren\",\"es\":\"Comoras\",\"fr\":\"Comores\",\"ja\":\"コモロ\",\"it\":\"Comore\",\"cn\":\"科摩罗\"}', '-12.16666666', '44.25000000', '🇰🇲', 'U+1F1F0 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 07:30:50', 1, 'Q970'),
(50, 'Congo', 'COG', '178', 'CG', '242', 'Brazzaville', 'XAF', 'Central African CFA franc', 'FC', '.cg', 'République du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Brazzaville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"콩고\",\"br\":\"Congo\",\"pt\":\"Congo\",\"nl\":\"Congo [Republiek]\",\"hr\":\"Kongo\",\"fa\":\"کنگو\",\"de\":\"Kongo\",\"es\":\"Congo\",\"fr\":\"Congo\",\"ja\":\"コンゴ共和国\",\"it\":\"Congo\",\"cn\":\"刚果\"}', '-1.00000000', '15.00000000', '🇨🇬', 'U+1F1E8 U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 07:31:09', 1, 'Q971'),
(51, 'Democratic Republic of the Congo', 'COD', '180', 'CD', '243', 'Kinshasa', 'CDF', 'Congolese Franc', 'FC', '.cd', 'République démocratique du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Kinshasa\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"},{\"zoneName\":\"Africa/Lubumbashi\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"콩고 민주 공화국\",\"br\":\"RD Congo\",\"pt\":\"RD Congo\",\"nl\":\"Congo [DRC]\",\"hr\":\"Kongo, Demokratska Republika\",\"fa\":\"جمهوری کنگو\",\"de\":\"Kongo (Dem. Rep.)\",\"es\":\"Congo (Rep. Dem.)\",\"fr\":\"Congo (Rép. dém.)\",\"ja\":\"コンゴ民主共和国\",\"it\":\"Congo (Rep. Dem.)\",\"cn\":\"刚果（金）\"}', '0.00000000', '25.00000000', '🇨🇩', 'U+1F1E8 U+1F1E9', '2018-07-20 14:41:03', '2021-12-11 08:18:42', 1, 'Q974'),
(52, 'Cook Islands', 'COK', '184', 'CK', '682', 'Avarua', 'NZD', 'Cook Islands dollar', '$', '.ck', 'Cook Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Rarotonga\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"CKT\",\"tzName\":\"Cook Island Time\"}]', '{\"kr\":\"쿡 제도\",\"br\":\"Ilhas Cook\",\"pt\":\"Ilhas Cook\",\"nl\":\"Cookeilanden\",\"hr\":\"Cookovo Otočje\",\"fa\":\"جزایر کوک\",\"de\":\"Cookinseln\",\"es\":\"Islas Cook\",\"fr\":\"Îles Cook\",\"ja\":\"クック諸島\",\"it\":\"Isole Cook\",\"cn\":\"库克群岛\"}', '-21.23333333', '-159.76666666', '🇨🇰', 'U+1F1E8 U+1F1F0', '2018-07-20 14:41:03', '2021-12-11 07:31:15', 1, 'Q26988'),
(53, 'Costa Rica', 'CRI', '188', 'CR', '506', 'San Jose', 'CRC', 'Costa Rican colón', '₡', '.cr', 'Costa Rica', 'Americas', 'Central America', '[{\"zoneName\":\"America/Costa_Rica\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"코스타리카\",\"br\":\"Costa Rica\",\"pt\":\"Costa Rica\",\"nl\":\"Costa Rica\",\"hr\":\"Kostarika\",\"fa\":\"کاستاریکا\",\"de\":\"Costa Rica\",\"es\":\"Costa Rica\",\"fr\":\"Costa Rica\",\"ja\":\"コスタリカ\",\"it\":\"Costa Rica\",\"cn\":\"哥斯达黎加\"}', '10.00000000', '-84.00000000', '🇨🇷', 'U+1F1E8 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 07:31:20', 1, 'Q800'),
(54, 'Cote D\'Ivoire (Ivory Coast)', 'CIV', '384', 'CI', '225', 'Yamoussoukro', 'XOF', 'West African CFA franc', 'CFA', '.ci', NULL, 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Abidjan\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"코트디부아르\",\"br\":\"Costa do Marfim\",\"pt\":\"Costa do Marfim\",\"nl\":\"Ivoorkust\",\"hr\":\"Obala Bjelokosti\",\"fa\":\"ساحل عاج\",\"de\":\"Elfenbeinküste\",\"es\":\"Costa de Marfil\",\"fr\":\"Côte d\'Ivoire\",\"ja\":\"コートジボワール\",\"it\":\"Costa D\'Avorio\",\"cn\":\"科特迪瓦\"}', '8.00000000', '-5.00000000', '🇨🇮', 'U+1F1E8 U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 07:31:26', 1, 'Q1008'),
(55, 'Croatia', 'HRV', '191', 'HR', '385', 'Zagreb', 'HRK', 'Croatian kuna', 'kn', '.hr', 'Hrvatska', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Zagreb\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"크로아티아\",\"br\":\"Croácia\",\"pt\":\"Croácia\",\"nl\":\"Kroatië\",\"hr\":\"Hrvatska\",\"fa\":\"کرواسی\",\"de\":\"Kroatien\",\"es\":\"Croacia\",\"fr\":\"Croatie\",\"ja\":\"クロアチア\",\"it\":\"Croazia\",\"cn\":\"克罗地亚\"}', '45.16666666', '15.50000000', '🇭🇷', 'U+1F1ED U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 07:31:33', 1, 'Q224'),
(56, 'Cuba', 'CUB', '192', 'CU', '53', 'Havana', 'CUP', 'Cuban peso', '$', '.cu', 'Cuba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Havana\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"CST\",\"tzName\":\"Cuba Standard Time\"}]', '{\"kr\":\"쿠바\",\"br\":\"Cuba\",\"pt\":\"Cuba\",\"nl\":\"Cuba\",\"hr\":\"Kuba\",\"fa\":\"کوبا\",\"de\":\"Kuba\",\"es\":\"Cuba\",\"fr\":\"Cuba\",\"ja\":\"キューバ\",\"it\":\"Cuba\",\"cn\":\"古巴\"}', '21.50000000', '-80.00000000', '🇨🇺', 'U+1F1E8 U+1F1FA', '2018-07-20 14:41:03', '2021-12-11 07:31:39', 1, 'Q241'),
(57, 'Cyprus', 'CYP', '196', 'CY', '357', 'Nicosia', 'EUR', 'Euro', '€', '.cy', 'Κύπρος', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Asia/Famagusta\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia/Nicosia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"키프로스\",\"br\":\"Chipre\",\"pt\":\"Chipre\",\"nl\":\"Cyprus\",\"hr\":\"Cipar\",\"fa\":\"قبرس\",\"de\":\"Zypern\",\"es\":\"Chipre\",\"fr\":\"Chypre\",\"ja\":\"キプロス\",\"it\":\"Cipro\",\"cn\":\"塞浦路斯\"}', '35.00000000', '33.00000000', '🇨🇾', 'U+1F1E8 U+1F1FE', '2018-07-20 14:41:03', '2021-12-11 07:31:50', 1, 'Q229');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(58, 'Czech Republic', 'CZE', '203', 'CZ', '420', 'Prague', 'CZK', 'Czech koruna', 'Kč', '.cz', 'Česká republika', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Prague\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"체코\",\"br\":\"República Tcheca\",\"pt\":\"República Checa\",\"nl\":\"Tsjechië\",\"hr\":\"Češka\",\"fa\":\"جمهوری چک\",\"de\":\"Tschechische Republik\",\"es\":\"República Checa\",\"fr\":\"République tchèque\",\"ja\":\"チェコ\",\"it\":\"Repubblica Ceca\",\"cn\":\"捷克\"}', '49.75000000', '15.50000000', '🇨🇿', 'U+1F1E8 U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 07:31:57', 1, 'Q213'),
(59, 'Denmark', 'DNK', '208', 'DK', '45', 'Copenhagen', 'DKK', 'Danish krone', 'Kr.', '.dk', 'Danmark', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Copenhagen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"덴마크\",\"br\":\"Dinamarca\",\"pt\":\"Dinamarca\",\"nl\":\"Denemarken\",\"hr\":\"Danska\",\"fa\":\"دانمارک\",\"de\":\"Dänemark\",\"es\":\"Dinamarca\",\"fr\":\"Danemark\",\"ja\":\"デンマーク\",\"it\":\"Danimarca\",\"cn\":\"丹麦\"}', '56.00000000', '10.00000000', '🇩🇰', 'U+1F1E9 U+1F1F0', '2018-07-20 14:41:03', '2021-12-11 07:32:05', 1, 'Q35'),
(60, 'Djibouti', 'DJI', '262', 'DJ', '253', 'Djibouti', 'DJF', 'Djiboutian franc', 'Fdj', '.dj', 'Djibouti', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Djibouti\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"지부티\",\"br\":\"Djibuti\",\"pt\":\"Djibuti\",\"nl\":\"Djibouti\",\"hr\":\"Džibuti\",\"fa\":\"جیبوتی\",\"de\":\"Dschibuti\",\"es\":\"Yibuti\",\"fr\":\"Djibouti\",\"ja\":\"ジブチ\",\"it\":\"Gibuti\",\"cn\":\"吉布提\"}', '11.50000000', '43.00000000', '🇩🇯', 'U+1F1E9 U+1F1EF', '2018-07-20 14:41:03', '2021-12-11 07:32:11', 1, 'Q977'),
(61, 'Dominica', 'DMA', '212', 'DM', '+1-767', 'Roseau', 'XCD', 'Eastern Caribbean dollar', '$', '.dm', 'Dominica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Dominica\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"도미니카 연방\",\"br\":\"Dominica\",\"pt\":\"Dominica\",\"nl\":\"Dominica\",\"hr\":\"Dominika\",\"fa\":\"دومینیکا\",\"de\":\"Dominica\",\"es\":\"Dominica\",\"fr\":\"Dominique\",\"ja\":\"ドミニカ国\",\"it\":\"Dominica\",\"cn\":\"多米尼加\"}', '15.41666666', '-61.33333333', '🇩🇲', 'U+1F1E9 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 07:32:16', 1, 'Q784'),
(62, 'Dominican Republic', 'DOM', '214', 'DO', '+1-809 and 1-829', 'Santo Domingo', 'DOP', 'Dominican peso', '$', '.do', 'República Dominicana', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Santo_Domingo\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"도미니카 공화국\",\"br\":\"República Dominicana\",\"pt\":\"República Dominicana\",\"nl\":\"Dominicaanse Republiek\",\"hr\":\"Dominikanska Republika\",\"fa\":\"جمهوری دومینیکن\",\"de\":\"Dominikanische Republik\",\"es\":\"República Dominicana\",\"fr\":\"République dominicaine\",\"ja\":\"ドミニカ共和国\",\"it\":\"Repubblica Dominicana\",\"cn\":\"多明尼加共和国\"}', '19.00000000', '-70.66666666', '🇩🇴', 'U+1F1E9 U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 07:32:22', 1, 'Q786'),
(63, 'East Timor', 'TLS', '626', 'TL', '670', 'Dili', 'USD', 'United States dollar', '$', '.tl', 'Timor-Leste', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Dili\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"TLT\",\"tzName\":\"Timor Leste Time\"}]', '{\"kr\":\"동티모르\",\"br\":\"Timor Leste\",\"pt\":\"Timor Leste\",\"nl\":\"Oost-Timor\",\"hr\":\"Istočni Timor\",\"fa\":\"تیمور شرقی\",\"de\":\"Timor-Leste\",\"es\":\"Timor Oriental\",\"fr\":\"Timor oriental\",\"ja\":\"東ティモール\",\"it\":\"Timor Est\",\"cn\":\"东帝汶\"}', '-8.83333333', '125.91666666', '🇹🇱', 'U+1F1F9 U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 07:32:27', 1, 'Q574'),
(64, 'Ecuador', 'ECU', '218', 'EC', '593', 'Quito', 'USD', 'United States dollar', '$', '.ec', 'Ecuador', 'Americas', 'South America', '[{\"zoneName\":\"America/Guayaquil\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ECT\",\"tzName\":\"Ecuador Time\"},{\"zoneName\":\"Pacific/Galapagos\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"GALT\",\"tzName\":\"Galápagos Time\"}]', '{\"kr\":\"에콰도르\",\"br\":\"Equador\",\"pt\":\"Equador\",\"nl\":\"Ecuador\",\"hr\":\"Ekvador\",\"fa\":\"اکوادور\",\"de\":\"Ecuador\",\"es\":\"Ecuador\",\"fr\":\"Équateur\",\"ja\":\"エクアドル\",\"it\":\"Ecuador\",\"cn\":\"厄瓜多尔\"}', '-2.00000000', '-77.50000000', '🇪🇨', 'U+1F1EA U+1F1E8', '2018-07-20 14:41:03', '2021-12-11 07:32:33', 1, 'Q736'),
(65, 'Egypt', 'EGY', '818', 'EG', '20', 'Cairo', 'EGP', 'Egyptian pound', 'ج.م', '.eg', 'مصر‎', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Cairo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"이집트\",\"br\":\"Egito\",\"pt\":\"Egipto\",\"nl\":\"Egypte\",\"hr\":\"Egipat\",\"fa\":\"مصر\",\"de\":\"Ägypten\",\"es\":\"Egipto\",\"fr\":\"Égypte\",\"ja\":\"エジプト\",\"it\":\"Egitto\",\"cn\":\"埃及\"}', '27.00000000', '30.00000000', '🇪🇬', 'U+1F1EA U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 07:32:38', 1, 'Q79'),
(66, 'El Salvador', 'SLV', '222', 'SV', '503', 'San Salvador', 'USD', 'United States dollar', '$', '.sv', 'El Salvador', 'Americas', 'Central America', '[{\"zoneName\":\"America/El_Salvador\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"엘살바도르\",\"br\":\"El Salvador\",\"pt\":\"El Salvador\",\"nl\":\"El Salvador\",\"hr\":\"Salvador\",\"fa\":\"السالوادور\",\"de\":\"El Salvador\",\"es\":\"El Salvador\",\"fr\":\"Salvador\",\"ja\":\"エルサルバドル\",\"it\":\"El Salvador\",\"cn\":\"萨尔瓦多\"}', '13.83333333', '-88.91666666', '🇸🇻', 'U+1F1F8 U+1F1FB', '2018-07-20 14:41:03', '2021-12-11 07:32:45', 1, 'Q792'),
(67, 'Equatorial Guinea', 'GNQ', '226', 'GQ', '240', 'Malabo', 'XAF', 'Central African CFA franc', 'FCFA', '.gq', 'Guinea Ecuatorial', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Malabo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"적도 기니\",\"br\":\"Guiné Equatorial\",\"pt\":\"Guiné Equatorial\",\"nl\":\"Equatoriaal-Guinea\",\"hr\":\"Ekvatorijalna Gvineja\",\"fa\":\"گینه استوایی\",\"de\":\"Äquatorial-Guinea\",\"es\":\"Guinea Ecuatorial\",\"fr\":\"Guinée-Équatoriale\",\"ja\":\"赤道ギニア\",\"it\":\"Guinea Equatoriale\",\"cn\":\"赤道几内亚\"}', '2.00000000', '10.00000000', '🇬🇶', 'U+1F1EC U+1F1F6', '2018-07-20 14:41:03', '2021-12-11 07:32:52', 1, 'Q983'),
(68, 'Eritrea', 'ERI', '232', 'ER', '291', 'Asmara', 'ERN', 'Eritrean nakfa', 'Nfk', '.er', 'ኤርትራ', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Asmara\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"에리트레아\",\"br\":\"Eritreia\",\"pt\":\"Eritreia\",\"nl\":\"Eritrea\",\"hr\":\"Eritreja\",\"fa\":\"اریتره\",\"de\":\"Eritrea\",\"es\":\"Eritrea\",\"fr\":\"Érythrée\",\"ja\":\"エリトリア\",\"it\":\"Eritrea\",\"cn\":\"厄立特里亚\"}', '15.00000000', '39.00000000', '🇪🇷', 'U+1F1EA U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 07:32:58', 1, 'Q986'),
(69, 'Estonia', 'EST', '233', 'EE', '372', 'Tallinn', 'EUR', 'Euro', '€', '.ee', 'Eesti', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Tallinn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"에스토니아\",\"br\":\"Estônia\",\"pt\":\"Estónia\",\"nl\":\"Estland\",\"hr\":\"Estonija\",\"fa\":\"استونی\",\"de\":\"Estland\",\"es\":\"Estonia\",\"fr\":\"Estonie\",\"ja\":\"エストニア\",\"it\":\"Estonia\",\"cn\":\"爱沙尼亚\"}', '59.00000000', '26.00000000', '🇪🇪', 'U+1F1EA U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 07:33:03', 1, 'Q191'),
(70, 'Ethiopia', 'ETH', '231', 'ET', '251', 'Addis Ababa', 'ETB', 'Ethiopian birr', 'Nkf', '.et', 'ኢትዮጵያ', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Addis_Ababa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"에티오피아\",\"br\":\"Etiópia\",\"pt\":\"Etiópia\",\"nl\":\"Ethiopië\",\"hr\":\"Etiopija\",\"fa\":\"اتیوپی\",\"de\":\"Äthiopien\",\"es\":\"Etiopía\",\"fr\":\"Éthiopie\",\"ja\":\"エチオピア\",\"it\":\"Etiopia\",\"cn\":\"埃塞俄比亚\"}', '8.00000000', '38.00000000', '🇪🇹', 'U+1F1EA U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 07:46:58', 1, 'Q115'),
(71, 'Falkland Islands', 'FLK', '238', 'FK', '500', 'Stanley', 'FKP', 'Falkland Islands pound', '£', '.fk', 'Falkland Islands', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic/Stanley\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"FKST\",\"tzName\":\"Falkland Islands Summer Time\"}]', '{\"kr\":\"포클랜드 제도\",\"br\":\"Ilhas Malvinas\",\"pt\":\"Ilhas Falkland\",\"nl\":\"Falklandeilanden [Islas Malvinas]\",\"hr\":\"Falklandski Otoci\",\"fa\":\"جزایر فالکلند\",\"de\":\"Falklandinseln\",\"es\":\"Islas Malvinas\",\"fr\":\"Îles Malouines\",\"ja\":\"フォークランド（マルビナス）諸島\",\"it\":\"Isole Falkland o Isole Malvine\",\"cn\":\"福克兰群岛\"}', '-51.75000000', '-59.00000000', '🇫🇰', 'U+1F1EB U+1F1F0', '2018-07-20 14:41:03', '2021-12-11 07:47:05', 1, NULL),
(72, 'Faroe Islands', 'FRO', '234', 'FO', '298', 'Torshavn', 'DKK', 'Danish krone', 'Kr.', '.fo', 'Føroyar', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic/Faroe\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"kr\":\"페로 제도\",\"br\":\"Ilhas Faroé\",\"pt\":\"Ilhas Faroé\",\"nl\":\"Faeröer\",\"hr\":\"Farski Otoci\",\"fa\":\"جزایر فارو\",\"de\":\"Färöer-Inseln\",\"es\":\"Islas Faroe\",\"fr\":\"Îles Féroé\",\"ja\":\"フェロー諸島\",\"it\":\"Isole Far Oer\",\"cn\":\"法罗群岛\"}', '62.00000000', '-7.00000000', '🇫🇴', 'U+1F1EB U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 07:47:11', 1, NULL),
(73, 'Fiji Islands', 'FJI', '242', 'FJ', '679', 'Suva', 'FJD', 'Fijian dollar', 'FJ$', '.fj', 'Fiji', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Fiji\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"FJT\",\"tzName\":\"Fiji Time\"}]', '{\"kr\":\"피지\",\"br\":\"Fiji\",\"pt\":\"Fiji\",\"nl\":\"Fiji\",\"hr\":\"Fiđi\",\"fa\":\"فیجی\",\"de\":\"Fidschi\",\"es\":\"Fiyi\",\"fr\":\"Fidji\",\"ja\":\"フィジー\",\"it\":\"Figi\",\"cn\":\"斐济\"}', '-18.00000000', '175.00000000', '🇫🇯', 'U+1F1EB U+1F1EF', '2018-07-20 14:41:03', '2021-12-11 07:47:17', 1, 'Q712'),
(74, 'Finland', 'FIN', '246', 'FI', '358', 'Helsinki', 'EUR', 'Euro', '€', '.fi', 'Suomi', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Helsinki\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"핀란드\",\"br\":\"Finlândia\",\"pt\":\"Finlândia\",\"nl\":\"Finland\",\"hr\":\"Finska\",\"fa\":\"فنلاند\",\"de\":\"Finnland\",\"es\":\"Finlandia\",\"fr\":\"Finlande\",\"ja\":\"フィンランド\",\"it\":\"Finlandia\",\"cn\":\"芬兰\"}', '64.00000000', '26.00000000', '🇫🇮', 'U+1F1EB U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 07:47:24', 1, 'Q33'),
(75, 'France', 'FRA', '250', 'FR', '33', 'Paris', 'EUR', 'Euro', '€', '.fr', 'France', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Paris\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"프랑스\",\"br\":\"França\",\"pt\":\"França\",\"nl\":\"Frankrijk\",\"hr\":\"Francuska\",\"fa\":\"فرانسه\",\"de\":\"Frankreich\",\"es\":\"Francia\",\"fr\":\"France\",\"ja\":\"フランス\",\"it\":\"Francia\",\"cn\":\"法国\"}', '46.00000000', '2.00000000', '🇫🇷', 'U+1F1EB U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 07:47:33', 1, 'Q142'),
(76, 'French Guiana', 'GUF', '254', 'GF', '594', 'Cayenne', 'EUR', 'Euro', '€', '.gf', 'Guyane française', 'Americas', 'South America', '[{\"zoneName\":\"America/Cayenne\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"GFT\",\"tzName\":\"French Guiana Time\"}]', '{\"kr\":\"프랑스령 기아나\",\"br\":\"Guiana Francesa\",\"pt\":\"Guiana Francesa\",\"nl\":\"Frans-Guyana\",\"hr\":\"Francuska Gvajana\",\"fa\":\"گویان فرانسه\",\"de\":\"Französisch Guyana\",\"es\":\"Guayana Francesa\",\"fr\":\"Guayane\",\"ja\":\"フランス領ギアナ\",\"it\":\"Guyana francese\",\"cn\":\"法属圭亚那\"}', '4.00000000', '-53.00000000', '🇬🇫', 'U+1F1EC U+1F1EB', '2018-07-20 14:41:03', '2021-12-11 07:48:11', 1, NULL),
(77, 'French Polynesia', 'PYF', '258', 'PF', '689', 'Papeete', 'XPF', 'CFP franc', '₣', '.pf', 'Polynésie française', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Gambier\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"GAMT\",\"tzName\":\"Gambier Islands Time\"},{\"zoneName\":\"Pacific/Marquesas\",\"gmtOffset\":-34200,\"gmtOffsetName\":\"UTC-09:30\",\"abbreviation\":\"MART\",\"tzName\":\"Marquesas Islands Time\"},{\"zoneName\":\"Pacific/Tahiti\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"TAHT\",\"tzName\":\"Tahiti Time\"}]', '{\"kr\":\"프랑스령 폴리네시아\",\"br\":\"Polinésia Francesa\",\"pt\":\"Polinésia Francesa\",\"nl\":\"Frans-Polynesië\",\"hr\":\"Francuska Polinezija\",\"fa\":\"پلی‌نزی فرانسه\",\"de\":\"Französisch-Polynesien\",\"es\":\"Polinesia Francesa\",\"fr\":\"Polynésie française\",\"ja\":\"フランス領ポリネシア\",\"it\":\"Polinesia Francese\",\"cn\":\"法属波利尼西亚\"}', '-15.00000000', '-140.00000000', '🇵🇫', 'U+1F1F5 U+1F1EB', '2018-07-20 14:41:03', '2021-12-11 07:47:54', 1, NULL),
(78, 'French Southern Territories', 'ATF', '260', 'TF', '262', 'Port-aux-Francais', 'EUR', 'Euro', '€', '.tf', 'Territoire des Terres australes et antarctiques fr', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Indian/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"kr\":\"프랑스령 남방 및 남극\",\"br\":\"Terras Austrais e Antárticas Francesas\",\"pt\":\"Terras Austrais e Antárticas Francesas\",\"nl\":\"Franse Gebieden in de zuidelijke Indische Oceaan\",\"hr\":\"Francuski južni i antarktički teritoriji\",\"fa\":\"سرزمین‌های جنوبی و جنوبگانی فرانسه\",\"de\":\"Französische Süd- und Antarktisgebiete\",\"es\":\"Tierras Australes y Antárticas Francesas\",\"fr\":\"Terres australes et antarctiques françaises\",\"ja\":\"フランス領南方・南極地域\",\"it\":\"Territori Francesi del Sud\",\"cn\":\"法属南部领地\"}', '-49.25000000', '69.16700000', '🇹🇫', 'U+1F1F9 U+1F1EB', '2018-07-20 14:41:03', '2021-12-11 07:48:34', 1, NULL),
(79, 'Gabon', 'GAB', '266', 'GA', '241', 'Libreville', 'XAF', 'Central African CFA franc', 'FCFA', '.ga', 'Gabon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Libreville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"가봉\",\"br\":\"Gabão\",\"pt\":\"Gabão\",\"nl\":\"Gabon\",\"hr\":\"Gabon\",\"fa\":\"گابن\",\"de\":\"Gabun\",\"es\":\"Gabón\",\"fr\":\"Gabon\",\"ja\":\"ガボン\",\"it\":\"Gabon\",\"cn\":\"加蓬\"}', '-1.00000000', '11.75000000', '🇬🇦', 'U+1F1EC U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 07:48:46', 1, 'Q1000'),
(80, 'Gambia The', 'GMB', '270', 'GM', '220', 'Banjul', 'GMD', 'Gambian dalasi', 'D', '.gm', 'Gambia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Banjul\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"감비아\",\"br\":\"Gâmbia\",\"pt\":\"Gâmbia\",\"nl\":\"Gambia\",\"hr\":\"Gambija\",\"fa\":\"گامبیا\",\"de\":\"Gambia\",\"es\":\"Gambia\",\"fr\":\"Gambie\",\"ja\":\"ガンビア\",\"it\":\"Gambia\",\"cn\":\"冈比亚\"}', '13.46666666', '-16.56666666', '🇬🇲', 'U+1F1EC U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 07:48:53', 1, 'Q1005'),
(81, 'Georgia', 'GEO', '268', 'GE', '995', 'Tbilisi', 'GEL', 'Georgian lari', 'ლ', '.ge', 'საქართველო', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Tbilisi\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GET\",\"tzName\":\"Georgia Standard Time\"}]', '{\"kr\":\"조지아\",\"br\":\"Geórgia\",\"pt\":\"Geórgia\",\"nl\":\"Georgië\",\"hr\":\"Gruzija\",\"fa\":\"گرجستان\",\"de\":\"Georgien\",\"es\":\"Georgia\",\"fr\":\"Géorgie\",\"ja\":\"グルジア\",\"it\":\"Georgia\",\"cn\":\"格鲁吉亚\"}', '42.00000000', '43.50000000', '🇬🇪', 'U+1F1EC U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 07:48:59', 1, 'Q230'),
(82, 'Germany', 'DEU', '276', 'DE', '49', 'Berlin', 'EUR', 'Euro', '€', '.de', 'Deutschland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Berlin\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Europe/Busingen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"독일\",\"br\":\"Alemanha\",\"pt\":\"Alemanha\",\"nl\":\"Duitsland\",\"hr\":\"Njemačka\",\"fa\":\"آلمان\",\"de\":\"Deutschland\",\"es\":\"Alemania\",\"fr\":\"Allemagne\",\"ja\":\"ドイツ\",\"it\":\"Germania\",\"cn\":\"德国\"}', '51.00000000', '9.00000000', '🇩🇪', 'U+1F1E9 U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 07:49:06', 1, 'Q183'),
(83, 'Ghana', 'GHA', '288', 'GH', '233', 'Accra', 'GHS', 'Ghanaian cedi', 'GH₵', '.gh', 'Ghana', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Accra\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"가나\",\"br\":\"Gana\",\"pt\":\"Gana\",\"nl\":\"Ghana\",\"hr\":\"Gana\",\"fa\":\"غنا\",\"de\":\"Ghana\",\"es\":\"Ghana\",\"fr\":\"Ghana\",\"ja\":\"ガーナ\",\"it\":\"Ghana\",\"cn\":\"加纳\"}', '8.00000000', '-2.00000000', '🇬🇭', 'U+1F1EC U+1F1ED', '2018-07-20 14:41:03', '2021-12-11 07:49:14', 1, 'Q117'),
(84, 'Gibraltar', 'GIB', '292', 'GI', '350', 'Gibraltar', 'GIP', 'Gibraltar pound', '£', '.gi', 'Gibraltar', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Gibraltar\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"지브롤터\",\"br\":\"Gibraltar\",\"pt\":\"Gibraltar\",\"nl\":\"Gibraltar\",\"hr\":\"Gibraltar\",\"fa\":\"جبل‌طارق\",\"de\":\"Gibraltar\",\"es\":\"Gibraltar\",\"fr\":\"Gibraltar\",\"ja\":\"ジブラルタル\",\"it\":\"Gibilterra\",\"cn\":\"直布罗陀\"}', '36.13333333', '-5.35000000', '🇬🇮', 'U+1F1EC U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 07:49:19', 1, NULL),
(85, 'Greece', 'GRC', '300', 'GR', '30', 'Athens', 'EUR', 'Euro', '€', '.gr', 'Ελλάδα', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Athens\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"그리스\",\"br\":\"Grécia\",\"pt\":\"Grécia\",\"nl\":\"Griekenland\",\"hr\":\"Grčka\",\"fa\":\"یونان\",\"de\":\"Griechenland\",\"es\":\"Grecia\",\"fr\":\"Grèce\",\"ja\":\"ギリシャ\",\"it\":\"Grecia\",\"cn\":\"希腊\"}', '39.00000000', '22.00000000', '🇬🇷', 'U+1F1EC U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 07:49:24', 1, 'Q41'),
(86, 'Greenland', 'GRL', '304', 'GL', '299', 'Nuuk', 'DKK', 'Danish krone', 'Kr.', '.gl', 'Kalaallit Nunaat', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Danmarkshavn\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"America/Nuuk\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"WGT\",\"tzName\":\"West Greenland Time\"},{\"zoneName\":\"America/Scoresbysund\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"EGT\",\"tzName\":\"Eastern Greenland Time\"},{\"zoneName\":\"America/Thule\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"그린란드\",\"br\":\"Groelândia\",\"pt\":\"Gronelândia\",\"nl\":\"Groenland\",\"hr\":\"Grenland\",\"fa\":\"گرینلند\",\"de\":\"Grönland\",\"es\":\"Groenlandia\",\"fr\":\"Groenland\",\"ja\":\"グリーンランド\",\"it\":\"Groenlandia\",\"cn\":\"格陵兰岛\"}', '72.00000000', '-40.00000000', '🇬🇱', 'U+1F1EC U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 07:49:31', 1, NULL),
(87, 'Grenada', 'GRD', '308', 'GD', '+1-473', 'St. George\'s', 'XCD', 'Eastern Caribbean dollar', '$', '.gd', 'Grenada', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Grenada\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"그레나다\",\"br\":\"Granada\",\"pt\":\"Granada\",\"nl\":\"Grenada\",\"hr\":\"Grenada\",\"fa\":\"گرنادا\",\"de\":\"Grenada\",\"es\":\"Grenada\",\"fr\":\"Grenade\",\"ja\":\"グレナダ\",\"it\":\"Grenada\",\"cn\":\"格林纳达\"}', '12.11666666', '-61.66666666', '🇬🇩', 'U+1F1EC U+1F1E9', '2018-07-20 14:41:03', '2021-12-11 07:49:40', 1, 'Q769'),
(88, 'Guadeloupe', 'GLP', '312', 'GP', '590', 'Basse-Terre', 'EUR', 'Euro', '€', '.gp', 'Guadeloupe', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Guadeloupe\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"과들루프\",\"br\":\"Guadalupe\",\"pt\":\"Guadalupe\",\"nl\":\"Guadeloupe\",\"hr\":\"Gvadalupa\",\"fa\":\"جزیره گوادلوپ\",\"de\":\"Guadeloupe\",\"es\":\"Guadalupe\",\"fr\":\"Guadeloupe\",\"ja\":\"グアドループ\",\"it\":\"Guadeloupa\",\"cn\":\"瓜德罗普岛\"}', '16.25000000', '-61.58333300', '🇬🇵', 'U+1F1EC U+1F1F5', '2018-07-20 14:41:03', '2021-12-11 07:51:29', 1, NULL),
(89, 'Guam', 'GUM', '316', 'GU', '+1-671', 'Hagatna', 'USD', 'US Dollar', '$', '.gu', 'Guam', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Guam\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"kr\":\"괌\",\"br\":\"Guam\",\"pt\":\"Guame\",\"nl\":\"Guam\",\"hr\":\"Guam\",\"fa\":\"گوام\",\"de\":\"Guam\",\"es\":\"Guam\",\"fr\":\"Guam\",\"ja\":\"グアム\",\"it\":\"Guam\",\"cn\":\"关岛\"}', '13.46666666', '144.78333333', '🇬🇺', 'U+1F1EC U+1F1FA', '2018-07-20 14:41:03', '2021-12-11 07:50:50', 1, NULL),
(90, 'Guatemala', 'GTM', '320', 'GT', '502', 'Guatemala City', 'GTQ', 'Guatemalan quetzal', 'Q', '.gt', 'Guatemala', 'Americas', 'Central America', '[{\"zoneName\":\"America/Guatemala\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"과테말라\",\"br\":\"Guatemala\",\"pt\":\"Guatemala\",\"nl\":\"Guatemala\",\"hr\":\"Gvatemala\",\"fa\":\"گواتمالا\",\"de\":\"Guatemala\",\"es\":\"Guatemala\",\"fr\":\"Guatemala\",\"ja\":\"グアテマラ\",\"it\":\"Guatemala\",\"cn\":\"危地马拉\"}', '15.50000000', '-90.25000000', '🇬🇹', 'U+1F1EC U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 07:51:50', 1, 'Q774'),
(91, 'Guernsey and Alderney', 'GGY', '831', 'GG', '+44-1481', 'St Peter Port', 'GBP', 'British pound', '£', '.gg', 'Guernsey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Guernsey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"건지, 올더니\",\"br\":\"Guernsey\",\"pt\":\"Guernsey\",\"nl\":\"Guernsey\",\"hr\":\"Guernsey\",\"fa\":\"گرنزی\",\"de\":\"Guernsey\",\"es\":\"Guernsey\",\"fr\":\"Guernesey\",\"ja\":\"ガーンジー\",\"it\":\"Guernsey\",\"cn\":\"根西岛\"}', '49.46666666', '-2.58333333', '🇬🇬', 'U+1F1EC U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 07:53:37', 1, NULL),
(92, 'Guinea', 'GIN', '324', 'GN', '224', 'Conakry', 'GNF', 'Guinean franc', 'FG', '.gn', 'Guinée', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Conakry\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"기니\",\"br\":\"Guiné\",\"pt\":\"Guiné\",\"nl\":\"Guinee\",\"hr\":\"Gvineja\",\"fa\":\"گینه\",\"de\":\"Guinea\",\"es\":\"Guinea\",\"fr\":\"Guinée\",\"ja\":\"ギニア\",\"it\":\"Guinea\",\"cn\":\"几内亚\"}', '11.00000000', '-10.00000000', '🇬🇳', 'U+1F1EC U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 07:53:45', 1, 'Q1006'),
(93, 'Guinea-Bissau', 'GNB', '624', 'GW', '245', 'Bissau', 'XOF', 'West African CFA franc', 'CFA', '.gw', 'Guiné-Bissau', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Bissau\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"기니비사우\",\"br\":\"Guiné-Bissau\",\"pt\":\"Guiné-Bissau\",\"nl\":\"Guinee-Bissau\",\"hr\":\"Gvineja Bisau\",\"fa\":\"گینه بیسائو\",\"de\":\"Guinea-Bissau\",\"es\":\"Guinea-Bisáu\",\"fr\":\"Guinée-Bissau\",\"ja\":\"ギニアビサウ\",\"it\":\"Guinea-Bissau\",\"cn\":\"几内亚比绍\"}', '12.00000000', '-15.00000000', '🇬🇼', 'U+1F1EC U+1F1FC', '2018-07-20 14:41:03', '2021-12-11 07:53:54', 1, 'Q1007'),
(94, 'Guyana', 'GUY', '328', 'GY', '592', 'Georgetown', 'GYD', 'Guyanese dollar', '$', '.gy', 'Guyana', 'Americas', 'South America', '[{\"zoneName\":\"America/Guyana\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"GYT\",\"tzName\":\"Guyana Time\"}]', '{\"kr\":\"가이아나\",\"br\":\"Guiana\",\"pt\":\"Guiana\",\"nl\":\"Guyana\",\"hr\":\"Gvajana\",\"fa\":\"گویان\",\"de\":\"Guyana\",\"es\":\"Guyana\",\"fr\":\"Guyane\",\"ja\":\"ガイアナ\",\"it\":\"Guyana\",\"cn\":\"圭亚那\"}', '5.00000000', '-59.00000000', '🇬🇾', 'U+1F1EC U+1F1FE', '2018-07-20 14:41:03', '2021-12-11 07:54:01', 1, 'Q734'),
(95, 'Haiti', 'HTI', '332', 'HT', '509', 'Port-au-Prince', 'HTG', 'Haitian gourde', 'G', '.ht', 'Haïti', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Port-au-Prince\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"아이티\",\"br\":\"Haiti\",\"pt\":\"Haiti\",\"nl\":\"Haïti\",\"hr\":\"Haiti\",\"fa\":\"هائیتی\",\"de\":\"Haiti\",\"es\":\"Haiti\",\"fr\":\"Haïti\",\"ja\":\"ハイチ\",\"it\":\"Haiti\",\"cn\":\"海地\"}', '19.00000000', '-72.41666666', '🇭🇹', 'U+1F1ED U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 07:54:06', 1, 'Q790'),
(96, 'Heard Island and McDonald Islands', 'HMD', '334', 'HM', '672', '', 'AUD', 'Australian dollar', '$', '.hm', 'Heard Island and McDonald Islands', '', '', '[{\"zoneName\":\"Indian/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"kr\":\"허드 맥도날드 제도\",\"br\":\"Ilha Heard e Ilhas McDonald\",\"pt\":\"Ilha Heard e Ilhas McDonald\",\"nl\":\"Heard- en McDonaldeilanden\",\"hr\":\"Otok Heard i otočje McDonald\",\"fa\":\"جزیره هرد و جزایر مک‌دونالد\",\"de\":\"Heard und die McDonaldinseln\",\"es\":\"Islas Heard y McDonald\",\"fr\":\"Îles Heard-et-MacDonald\",\"ja\":\"ハード島とマクドナルド諸島\",\"it\":\"Isole Heard e McDonald\",\"cn\":\"赫德·唐纳岛及麦唐纳岛\"}', '-53.10000000', '72.51666666', '🇭🇲', 'U+1F1ED U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 08:18:51', 1, NULL),
(97, 'Honduras', 'HND', '340', 'HN', '504', 'Tegucigalpa', 'HNL', 'Honduran lempira', 'L', '.hn', 'Honduras', 'Americas', 'Central America', '[{\"zoneName\":\"America/Tegucigalpa\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"온두라스\",\"br\":\"Honduras\",\"pt\":\"Honduras\",\"nl\":\"Honduras\",\"hr\":\"Honduras\",\"fa\":\"هندوراس\",\"de\":\"Honduras\",\"es\":\"Honduras\",\"fr\":\"Honduras\",\"ja\":\"ホンジュラス\",\"it\":\"Honduras\",\"cn\":\"洪都拉斯\"}', '15.00000000', '-86.50000000', '🇭🇳', 'U+1F1ED U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 07:54:16', 1, 'Q783'),
(98, 'Hong Kong S.A.R.', 'HKG', '344', 'HK', '852', 'Hong Kong', 'HKD', 'Hong Kong dollar', '$', '.hk', '香港', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Hong_Kong\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"HKT\",\"tzName\":\"Hong Kong Time\"}]', '{\"kr\":\"홍콩\",\"br\":\"Hong Kong\",\"pt\":\"Hong Kong\",\"nl\":\"Hongkong\",\"hr\":\"Hong Kong\",\"fa\":\"هنگ‌کنگ\",\"de\":\"Hong Kong\",\"es\":\"Hong Kong\",\"fr\":\"Hong Kong\",\"ja\":\"香港\",\"it\":\"Hong Kong\",\"cn\":\"中国香港\"}', '22.25000000', '114.16666666', '🇭🇰', 'U+1F1ED U+1F1F0', '2018-07-20 14:41:03', '2021-12-11 07:54:22', 1, 'Q8646'),
(99, 'Hungary', 'HUN', '348', 'HU', '36', 'Budapest', 'HUF', 'Hungarian forint', 'Ft', '.hu', 'Magyarország', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Budapest\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"헝가리\",\"br\":\"Hungria\",\"pt\":\"Hungria\",\"nl\":\"Hongarije\",\"hr\":\"Mađarska\",\"fa\":\"مجارستان\",\"de\":\"Ungarn\",\"es\":\"Hungría\",\"fr\":\"Hongrie\",\"ja\":\"ハンガリー\",\"it\":\"Ungheria\",\"cn\":\"匈牙利\"}', '47.00000000', '20.00000000', '🇭🇺', 'U+1F1ED U+1F1FA', '2018-07-20 14:41:03', '2021-12-11 07:54:30', 1, 'Q28'),
(100, 'Iceland', 'ISL', '352', 'IS', '354', 'Reykjavik', 'ISK', 'Icelandic króna', 'kr', '.is', 'Ísland', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic/Reykjavik\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"아이슬란드\",\"br\":\"Islândia\",\"pt\":\"Islândia\",\"nl\":\"IJsland\",\"hr\":\"Island\",\"fa\":\"ایسلند\",\"de\":\"Island\",\"es\":\"Islandia\",\"fr\":\"Islande\",\"ja\":\"アイスランド\",\"it\":\"Islanda\",\"cn\":\"冰岛\"}', '65.00000000', '-18.00000000', '🇮🇸', 'U+1F1EE U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 07:54:35', 1, 'Q189'),
(101, 'India', 'IND', '356', 'IN', '91', 'New Delhi', 'INR', 'Indian rupee', '₹', '.in', 'भारत', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kolkata\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"kr\":\"인도\",\"br\":\"Índia\",\"pt\":\"Índia\",\"nl\":\"India\",\"hr\":\"Indija\",\"fa\":\"هند\",\"de\":\"Indien\",\"es\":\"India\",\"fr\":\"Inde\",\"ja\":\"インド\",\"it\":\"India\",\"cn\":\"印度\"}', '20.00000000', '77.00000000', '🇮🇳', 'U+1F1EE U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 07:54:41', 1, 'Q668'),
(102, 'Indonesia', 'IDN', '360', 'ID', '62', 'Jakarta', 'IDR', 'Indonesian rupiah', 'Rp', '.id', 'Indonesia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Jakarta\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"},{\"zoneName\":\"Asia/Jayapura\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"WIT\",\"tzName\":\"Eastern Indonesian Time\"},{\"zoneName\":\"Asia/Makassar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"WITA\",\"tzName\":\"Central Indonesia Time\"},{\"zoneName\":\"Asia/Pontianak\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"}]', '{\"kr\":\"인도네시아\",\"br\":\"Indonésia\",\"pt\":\"Indonésia\",\"nl\":\"Indonesië\",\"hr\":\"Indonezija\",\"fa\":\"اندونزی\",\"de\":\"Indonesien\",\"es\":\"Indonesia\",\"fr\":\"Indonésie\",\"ja\":\"インドネシア\",\"it\":\"Indonesia\",\"cn\":\"印度尼西亚\"}', '-5.00000000', '120.00000000', '🇮🇩', 'U+1F1EE U+1F1E9', '2018-07-20 14:41:03', '2021-12-11 07:54:49', 1, 'Q252'),
(103, 'Iran', 'IRN', '364', 'IR', '98', 'Tehran', 'IRR', 'Iranian rial', '﷼', '.ir', 'ایران', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Tehran\",\"gmtOffset\":12600,\"gmtOffsetName\":\"UTC+03:30\",\"abbreviation\":\"IRDT\",\"tzName\":\"Iran Daylight Time\"}]', '{\"kr\":\"이란\",\"br\":\"Irã\",\"pt\":\"Irão\",\"nl\":\"Iran\",\"hr\":\"Iran\",\"fa\":\"ایران\",\"de\":\"Iran\",\"es\":\"Iran\",\"fr\":\"Iran\",\"ja\":\"イラン・イスラム共和国\",\"cn\":\"伊朗\"}', '32.00000000', '53.00000000', '🇮🇷', 'U+1F1EE U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 07:54:54', 1, 'Q794'),
(104, 'Iraq', 'IRQ', '368', 'IQ', '964', 'Baghdad', 'IQD', 'Iraqi dinar', 'د.ع', '.iq', 'العراق', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Baghdad\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"이라크\",\"br\":\"Iraque\",\"pt\":\"Iraque\",\"nl\":\"Irak\",\"hr\":\"Irak\",\"fa\":\"عراق\",\"de\":\"Irak\",\"es\":\"Irak\",\"fr\":\"Irak\",\"ja\":\"イラク\",\"it\":\"Iraq\",\"cn\":\"伊拉克\"}', '33.00000000', '44.00000000', '🇮🇶', 'U+1F1EE U+1F1F6', '2018-07-20 14:41:03', '2021-12-11 07:55:01', 1, 'Q796'),
(105, 'Ireland', 'IRL', '372', 'IE', '353', 'Dublin', 'EUR', 'Euro', '€', '.ie', 'Éire', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Dublin\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"아일랜드\",\"br\":\"Irlanda\",\"pt\":\"Irlanda\",\"nl\":\"Ierland\",\"hr\":\"Irska\",\"fa\":\"ایرلند\",\"de\":\"Irland\",\"es\":\"Irlanda\",\"fr\":\"Irlande\",\"ja\":\"アイルランド\",\"it\":\"Irlanda\",\"cn\":\"爱尔兰\"}', '53.00000000', '-8.00000000', '🇮🇪', 'U+1F1EE U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 07:55:07', 1, 'Q27'),
(106, 'Israel', 'ISR', '376', 'IL', '972', 'Jerusalem', 'ILS', 'Israeli new shekel', '₪', '.il', 'יִשְׂרָאֵל', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Jerusalem\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"IST\",\"tzName\":\"Israel Standard Time\"}]', '{\"kr\":\"이스라엘\",\"br\":\"Israel\",\"pt\":\"Israel\",\"nl\":\"Israël\",\"hr\":\"Izrael\",\"fa\":\"اسرائیل\",\"de\":\"Israel\",\"es\":\"Israel\",\"fr\":\"Israël\",\"ja\":\"イスラエル\",\"it\":\"Israele\",\"cn\":\"以色列\"}', '31.50000000', '34.75000000', '🇮🇱', 'U+1F1EE U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 07:55:27', 1, 'Q801'),
(107, 'Italy', 'ITA', '380', 'IT', '39', 'Rome', 'EUR', 'Euro', '€', '.it', 'Italia', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Rome\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"이탈리아\",\"br\":\"Itália\",\"pt\":\"Itália\",\"nl\":\"Italië\",\"hr\":\"Italija\",\"fa\":\"ایتالیا\",\"de\":\"Italien\",\"es\":\"Italia\",\"fr\":\"Italie\",\"ja\":\"イタリア\",\"it\":\"Italia\",\"cn\":\"意大利\"}', '42.83333333', '12.83333333', '🇮🇹', 'U+1F1EE U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 07:55:33', 1, 'Q38'),
(108, 'Jamaica', 'JAM', '388', 'JM', '+1-876', 'Kingston', 'JMD', 'Jamaican dollar', 'J$', '.jm', 'Jamaica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Jamaica\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"자메이카\",\"br\":\"Jamaica\",\"pt\":\"Jamaica\",\"nl\":\"Jamaica\",\"hr\":\"Jamajka\",\"fa\":\"جامائیکا\",\"de\":\"Jamaika\",\"es\":\"Jamaica\",\"fr\":\"Jamaïque\",\"ja\":\"ジャマイカ\",\"it\":\"Giamaica\",\"cn\":\"牙买加\"}', '18.25000000', '-77.50000000', '🇯🇲', 'U+1F1EF U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 07:55:41', 1, 'Q766'),
(109, 'Japan', 'JPN', '392', 'JP', '81', 'Tokyo', 'JPY', 'Japanese yen', '¥', '.jp', '日本', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Tokyo\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"JST\",\"tzName\":\"Japan Standard Time\"}]', '{\"kr\":\"일본\",\"br\":\"Japão\",\"pt\":\"Japão\",\"nl\":\"Japan\",\"hr\":\"Japan\",\"fa\":\"ژاپن\",\"de\":\"Japan\",\"es\":\"Japón\",\"fr\":\"Japon\",\"ja\":\"日本\",\"it\":\"Giappone\",\"cn\":\"日本\"}', '36.00000000', '138.00000000', '🇯🇵', 'U+1F1EF U+1F1F5', '2018-07-20 14:41:03', '2021-12-11 07:55:46', 1, 'Q17'),
(110, 'Jersey', 'JEY', '832', 'JE', '+44-1534', 'Saint Helier', 'GBP', 'British pound', '£', '.je', 'Jersey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Jersey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"저지 섬\",\"br\":\"Jersey\",\"pt\":\"Jersey\",\"nl\":\"Jersey\",\"hr\":\"Jersey\",\"fa\":\"جرزی\",\"de\":\"Jersey\",\"es\":\"Jersey\",\"fr\":\"Jersey\",\"ja\":\"ジャージー\",\"it\":\"Isola di Jersey\",\"cn\":\"泽西岛\"}', '49.25000000', '-2.16666666', '🇯🇪', 'U+1F1EF U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 07:55:59', 1, 'Q785'),
(111, 'Jordan', 'JOR', '400', 'JO', '962', 'Amman', 'JOD', 'Jordanian dinar', 'ا.د', '.jo', 'الأردن', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Amman\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"요르단\",\"br\":\"Jordânia\",\"pt\":\"Jordânia\",\"nl\":\"Jordanië\",\"hr\":\"Jordan\",\"fa\":\"اردن\",\"de\":\"Jordanien\",\"es\":\"Jordania\",\"fr\":\"Jordanie\",\"ja\":\"ヨルダン\",\"it\":\"Giordania\",\"cn\":\"约旦\"}', '31.00000000', '36.00000000', '🇯🇴', 'U+1F1EF U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 07:56:07', 1, 'Q810'),
(112, 'Kazakhstan', 'KAZ', '398', 'KZ', '7', 'Astana', 'KZT', 'Kazakhstani tenge', 'лв', '.kz', 'Қазақстан', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Almaty\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"ALMT\",\"tzName\":\"Alma-Ata Time[1\"},{\"zoneName\":\"Asia/Aqtau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia/Aqtobe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia/Atyrau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MSD+1\",\"tzName\":\"Moscow Daylight Time+1\"},{\"zoneName\":\"Asia/Oral\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"ORAT\",\"tzName\":\"Oral Time\"},{\"zoneName\":\"Asia/Qostanay\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"QYZST\",\"tzName\":\"Qyzylorda Summer Time\"},{\"zoneName\":\"Asia/Qyzylorda\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"QYZT\",\"tzName\":\"Qyzylorda Summer Time\"}]', '{\"kr\":\"카자흐스탄\",\"br\":\"Cazaquistão\",\"pt\":\"Cazaquistão\",\"nl\":\"Kazachstan\",\"hr\":\"Kazahstan\",\"fa\":\"قزاقستان\",\"de\":\"Kasachstan\",\"es\":\"Kazajistán\",\"fr\":\"Kazakhstan\",\"ja\":\"カザフスタン\",\"it\":\"Kazakistan\",\"cn\":\"哈萨克斯坦\"}', '48.00000000', '68.00000000', '🇰🇿', 'U+1F1F0 U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 07:56:18', 1, 'Q232'),
(113, 'Kenya', 'KEN', '404', 'KE', '254', 'Nairobi', 'KES', 'Kenyan shilling', 'KSh', '.ke', 'Kenya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Nairobi\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"케냐\",\"br\":\"Quênia\",\"pt\":\"Quénia\",\"nl\":\"Kenia\",\"hr\":\"Kenija\",\"fa\":\"کنیا\",\"de\":\"Kenia\",\"es\":\"Kenia\",\"fr\":\"Kenya\",\"ja\":\"ケニア\",\"it\":\"Kenya\",\"cn\":\"肯尼亚\"}', '1.00000000', '38.00000000', '🇰🇪', 'U+1F1F0 U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 07:56:23', 1, 'Q114'),
(114, 'Kiribati', 'KIR', '296', 'KI', '686', 'Tarawa', 'AUD', 'Australian dollar', '$', '.ki', 'Kiribati', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Enderbury\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"PHOT\",\"tzName\":\"Phoenix Island Time\"},{\"zoneName\":\"Pacific/Kiritimati\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"LINT\",\"tzName\":\"Line Islands Time\"},{\"zoneName\":\"Pacific/Tarawa\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"GILT\",\"tzName\":\"Gilbert Island Time\"}]', '{\"kr\":\"키리바시\",\"br\":\"Kiribati\",\"pt\":\"Quiribáti\",\"nl\":\"Kiribati\",\"hr\":\"Kiribati\",\"fa\":\"کیریباتی\",\"de\":\"Kiribati\",\"es\":\"Kiribati\",\"fr\":\"Kiribati\",\"ja\":\"キリバス\",\"it\":\"Kiribati\",\"cn\":\"基里巴斯\"}', '1.41666666', '173.00000000', '🇰🇮', 'U+1F1F0 U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 07:56:30', 1, 'Q710'),
(115, 'North Korea', 'PRK', '408', 'KP', '850', 'Pyongyang', 'KPW', 'North Korean Won', '₩', '.kp', '북한', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Pyongyang\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"kr\":\"조선민주주의인민공화국\",\"br\":\"Coreia do Norte\",\"pt\":\"Coreia do Norte\",\"nl\":\"Noord-Korea\",\"hr\":\"Sjeverna Koreja\",\"fa\":\"کره جنوبی\",\"de\":\"Nordkorea\",\"es\":\"Corea del Norte\",\"fr\":\"Corée du Nord\",\"ja\":\"朝鮮民主主義人民共和国\",\"it\":\"Corea del Nord\",\"cn\":\"朝鲜\"}', '40.00000000', '127.00000000', '🇰🇵', 'U+1F1F0 U+1F1F5', '2018-07-20 14:41:03', '2021-12-11 08:05:28', 1, 'Q423'),
(116, 'South Korea', 'KOR', '410', 'KR', '82', 'Seoul', 'KRW', 'Won', '₩', '.kr', '대한민국', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Seoul\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"kr\":\"대한민국\",\"br\":\"Coreia do Sul\",\"pt\":\"Coreia do Sul\",\"nl\":\"Zuid-Korea\",\"hr\":\"Južna Koreja\",\"fa\":\"کره شمالی\",\"de\":\"Südkorea\",\"es\":\"Corea del Sur\",\"fr\":\"Corée du Sud\",\"ja\":\"大韓民国\",\"it\":\"Corea del Sud\",\"cn\":\"韩国\"}', '37.00000000', '127.50000000', '🇰🇷', 'U+1F1F0 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 08:12:11', 1, 'Q884'),
(117, 'Kuwait', 'KWT', '414', 'KW', '965', 'Kuwait City', 'KWD', 'Kuwaiti dinar', 'ك.د', '.kw', 'الكويت', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Kuwait\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"쿠웨이트\",\"br\":\"Kuwait\",\"pt\":\"Kuwait\",\"nl\":\"Koeweit\",\"hr\":\"Kuvajt\",\"fa\":\"کویت\",\"de\":\"Kuwait\",\"es\":\"Kuwait\",\"fr\":\"Koweït\",\"ja\":\"クウェート\",\"it\":\"Kuwait\",\"cn\":\"科威特\"}', '29.50000000', '45.75000000', '🇰🇼', 'U+1F1F0 U+1F1FC', '2018-07-20 14:41:03', '2021-12-11 07:56:44', 1, 'Q817'),
(118, 'Kyrgyzstan', 'KGZ', '417', 'KG', '996', 'Bishkek', 'KGS', 'Kyrgyzstani som', 'лв', '.kg', 'Кыргызстан', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Bishkek\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"KGT\",\"tzName\":\"Kyrgyzstan Time\"}]', '{\"kr\":\"키르기스스탄\",\"br\":\"Quirguistão\",\"pt\":\"Quirguizistão\",\"nl\":\"Kirgizië\",\"hr\":\"Kirgistan\",\"fa\":\"قرقیزستان\",\"de\":\"Kirgisistan\",\"es\":\"Kirguizistán\",\"fr\":\"Kirghizistan\",\"ja\":\"キルギス\",\"it\":\"Kirghizistan\",\"cn\":\"吉尔吉斯斯坦\"}', '41.00000000', '75.00000000', '🇰🇬', 'U+1F1F0 U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 07:56:49', 1, 'Q813'),
(119, 'Laos', 'LAO', '418', 'LA', '856', 'Vientiane', 'LAK', 'Lao kip', '₭', '.la', 'ສປປລາວ', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Vientiane\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"라오스\",\"br\":\"Laos\",\"pt\":\"Laos\",\"nl\":\"Laos\",\"hr\":\"Laos\",\"fa\":\"لائوس\",\"de\":\"Laos\",\"es\":\"Laos\",\"fr\":\"Laos\",\"ja\":\"ラオス人民民主共和国\",\"it\":\"Laos\",\"cn\":\"寮人民民主共和国\"}', '18.00000000', '105.00000000', '🇱🇦', 'U+1F1F1 U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 07:56:58', 1, 'Q819'),
(120, 'Latvia', 'LVA', '428', 'LV', '371', 'Riga', 'EUR', 'Euro', '€', '.lv', 'Latvija', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Riga\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"라트비아\",\"br\":\"Letônia\",\"pt\":\"Letónia\",\"nl\":\"Letland\",\"hr\":\"Latvija\",\"fa\":\"لتونی\",\"de\":\"Lettland\",\"es\":\"Letonia\",\"fr\":\"Lettonie\",\"ja\":\"ラトビア\",\"it\":\"Lettonia\",\"cn\":\"拉脱维亚\"}', '57.00000000', '25.00000000', '🇱🇻', 'U+1F1F1 U+1F1FB', '2018-07-20 14:41:03', '2021-12-11 07:57:04', 1, 'Q211'),
(121, 'Lebanon', 'LBN', '422', 'LB', '961', 'Beirut', 'LBP', 'Lebanese pound', '£', '.lb', 'لبنان', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Beirut\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"레바논\",\"br\":\"Líbano\",\"pt\":\"Líbano\",\"nl\":\"Libanon\",\"hr\":\"Libanon\",\"fa\":\"لبنان\",\"de\":\"Libanon\",\"es\":\"Líbano\",\"fr\":\"Liban\",\"ja\":\"レバノン\",\"it\":\"Libano\",\"cn\":\"黎巴嫩\"}', '33.83333333', '35.83333333', '🇱🇧', 'U+1F1F1 U+1F1E7', '2018-07-20 14:41:03', '2021-12-11 07:57:10', 1, 'Q822'),
(122, 'Lesotho', 'LSO', '426', 'LS', '266', 'Maseru', 'LSL', 'Lesotho loti', 'L', '.ls', 'Lesotho', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Maseru\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"레소토\",\"br\":\"Lesoto\",\"pt\":\"Lesoto\",\"nl\":\"Lesotho\",\"hr\":\"Lesoto\",\"fa\":\"لسوتو\",\"de\":\"Lesotho\",\"es\":\"Lesotho\",\"fr\":\"Lesotho\",\"ja\":\"レソト\",\"it\":\"Lesotho\",\"cn\":\"莱索托\"}', '-29.50000000', '28.50000000', '🇱🇸', 'U+1F1F1 U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 07:57:27', 1, 'Q1013'),
(123, 'Liberia', 'LBR', '430', 'LR', '231', 'Monrovia', 'LRD', 'Liberian dollar', '$', '.lr', 'Liberia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Monrovia\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"라이베리아\",\"br\":\"Libéria\",\"pt\":\"Libéria\",\"nl\":\"Liberia\",\"hr\":\"Liberija\",\"fa\":\"لیبریا\",\"de\":\"Liberia\",\"es\":\"Liberia\",\"fr\":\"Liberia\",\"ja\":\"リベリア\",\"it\":\"Liberia\",\"cn\":\"利比里亚\"}', '6.50000000', '-9.50000000', '🇱🇷', 'U+1F1F1 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 07:57:33', 1, 'Q1014'),
(124, 'Libya', 'LBY', '434', 'LY', '218', 'Tripolis', 'LYD', 'Libyan dinar', 'د.ل', '.ly', '‏ليبيا', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Tripoli\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"리비아\",\"br\":\"Líbia\",\"pt\":\"Líbia\",\"nl\":\"Libië\",\"hr\":\"Libija\",\"fa\":\"لیبی\",\"de\":\"Libyen\",\"es\":\"Libia\",\"fr\":\"Libye\",\"ja\":\"リビア\",\"it\":\"Libia\",\"cn\":\"利比亚\"}', '25.00000000', '17.00000000', '🇱🇾', 'U+1F1F1 U+1F1FE', '2018-07-20 14:41:03', '2021-12-11 07:57:38', 1, 'Q1016'),
(125, 'Liechtenstein', 'LIE', '438', 'LI', '423', 'Vaduz', 'CHF', 'Swiss franc', 'CHf', '.li', 'Liechtenstein', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Vaduz\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"리히텐슈타인\",\"br\":\"Liechtenstein\",\"pt\":\"Listenstaine\",\"nl\":\"Liechtenstein\",\"hr\":\"Lihtenštajn\",\"fa\":\"لیختن‌اشتاین\",\"de\":\"Liechtenstein\",\"es\":\"Liechtenstein\",\"fr\":\"Liechtenstein\",\"ja\":\"リヒテンシュタイン\",\"it\":\"Liechtenstein\",\"cn\":\"列支敦士登\"}', '47.26666666', '9.53333333', '🇱🇮', 'U+1F1F1 U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 07:57:47', 1, 'Q347'),
(126, 'Lithuania', 'LTU', '440', 'LT', '370', 'Vilnius', 'EUR', 'Euro', '€', '.lt', 'Lietuva', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Vilnius\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"리투아니아\",\"br\":\"Lituânia\",\"pt\":\"Lituânia\",\"nl\":\"Litouwen\",\"hr\":\"Litva\",\"fa\":\"لیتوانی\",\"de\":\"Litauen\",\"es\":\"Lituania\",\"fr\":\"Lituanie\",\"ja\":\"リトアニア\",\"it\":\"Lituania\",\"cn\":\"立陶宛\"}', '56.00000000', '24.00000000', '🇱🇹', 'U+1F1F1 U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 07:58:00', 1, 'Q37'),
(127, 'Luxembourg', 'LUX', '442', 'LU', '352', 'Luxembourg', 'EUR', 'Euro', '€', '.lu', 'Luxembourg', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Luxembourg\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"룩셈부르크\",\"br\":\"Luxemburgo\",\"pt\":\"Luxemburgo\",\"nl\":\"Luxemburg\",\"hr\":\"Luksemburg\",\"fa\":\"لوکزامبورگ\",\"de\":\"Luxemburg\",\"es\":\"Luxemburgo\",\"fr\":\"Luxembourg\",\"ja\":\"ルクセンブルク\",\"it\":\"Lussemburgo\",\"cn\":\"卢森堡\"}', '49.75000000', '6.16666666', '🇱🇺', 'U+1F1F1 U+1F1FA', '2018-07-20 14:41:03', '2021-12-11 07:58:06', 1, 'Q32'),
(128, 'Macau S.A.R.', 'MAC', '446', 'MO', '853', 'Macao', 'MOP', 'Macanese pataca', '$', '.mo', '澳門', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Macau\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"마카오\",\"br\":\"Macau\",\"pt\":\"Macau\",\"nl\":\"Macao\",\"hr\":\"Makao\",\"fa\":\"مکائو\",\"de\":\"Macao\",\"es\":\"Macao\",\"fr\":\"Macao\",\"ja\":\"マカオ\",\"it\":\"Macao\",\"cn\":\"中国澳门\"}', '22.16666666', '113.55000000', '🇲🇴', 'U+1F1F2 U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 07:58:15', 1, NULL),
(129, 'Macedonia', 'MKD', '807', 'MK', '389', 'Skopje', 'MKD', 'Denar', 'ден', '.mk', 'Северна Македонија', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Skopje\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"마케도니아\",\"br\":\"Macedônia\",\"pt\":\"Macedónia\",\"nl\":\"Macedonië\",\"hr\":\"Makedonija\",\"fa\":\"\",\"de\":\"Mazedonien\",\"es\":\"Macedonia\",\"fr\":\"Macédoine\",\"ja\":\"マケドニア旧ユーゴスラビア共和国\",\"it\":\"Macedonia\",\"cn\":\"马其顿\"}', '41.83333333', '22.00000000', '🇲🇰', 'U+1F1F2 U+1F1F0', '2018-07-20 14:41:03', '2021-12-11 07:58:42', 1, 'Q221'),
(130, 'Madagascar', 'MDG', '450', 'MG', '261', 'Antananarivo', 'MGA', 'Malagasy ariary', 'Ar', '.mg', 'Madagasikara', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Antananarivo\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"마다가스카르\",\"br\":\"Madagascar\",\"pt\":\"Madagáscar\",\"nl\":\"Madagaskar\",\"hr\":\"Madagaskar\",\"fa\":\"ماداگاسکار\",\"de\":\"Madagaskar\",\"es\":\"Madagascar\",\"fr\":\"Madagascar\",\"ja\":\"マダガスカル\",\"it\":\"Madagascar\",\"cn\":\"马达加斯加\"}', '-20.00000000', '47.00000000', '🇲🇬', 'U+1F1F2 U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 07:58:52', 1, 'Q1019');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(131, 'Malawi', 'MWI', '454', 'MW', '265', 'Lilongwe', 'MWK', 'Malawian kwacha', 'MK', '.mw', 'Malawi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Blantyre\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"말라위\",\"br\":\"Malawi\",\"pt\":\"Malávi\",\"nl\":\"Malawi\",\"hr\":\"Malavi\",\"fa\":\"مالاوی\",\"de\":\"Malawi\",\"es\":\"Malawi\",\"fr\":\"Malawi\",\"ja\":\"マラウイ\",\"it\":\"Malawi\",\"cn\":\"马拉维\"}', '-13.50000000', '34.00000000', '🇲🇼', 'U+1F1F2 U+1F1FC', '2018-07-20 14:41:03', '2021-12-11 07:59:01', 1, 'Q1020'),
(132, 'Malaysia', 'MYS', '458', 'MY', '60', 'Kuala Lumpur', 'MYR', 'Malaysian ringgit', 'RM', '.my', 'Malaysia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Kuala_Lumpur\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"},{\"zoneName\":\"Asia/Kuching\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"}]', '{\"kr\":\"말레이시아\",\"br\":\"Malásia\",\"pt\":\"Malásia\",\"nl\":\"Maleisië\",\"hr\":\"Malezija\",\"fa\":\"مالزی\",\"de\":\"Malaysia\",\"es\":\"Malasia\",\"fr\":\"Malaisie\",\"ja\":\"マレーシア\",\"it\":\"Malesia\",\"cn\":\"马来西亚\"}', '2.50000000', '112.50000000', '🇲🇾', 'U+1F1F2 U+1F1FE', '2018-07-20 14:41:03', '2021-12-11 07:59:08', 1, 'Q833'),
(133, 'Maldives', 'MDV', '462', 'MV', '960', 'Male', 'MVR', 'Maldivian rufiyaa', 'Rf', '.mv', 'Maldives', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Indian/Maldives\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MVT\",\"tzName\":\"Maldives Time\"}]', '{\"kr\":\"몰디브\",\"br\":\"Maldivas\",\"pt\":\"Maldivas\",\"nl\":\"Maldiven\",\"hr\":\"Maldivi\",\"fa\":\"مالدیو\",\"de\":\"Malediven\",\"es\":\"Maldivas\",\"fr\":\"Maldives\",\"ja\":\"モルディブ\",\"it\":\"Maldive\",\"cn\":\"马尔代夫\"}', '3.25000000', '73.00000000', '🇲🇻', 'U+1F1F2 U+1F1FB', '2018-07-20 14:41:03', '2021-12-11 07:59:15', 1, 'Q826'),
(134, 'Mali', 'MLI', '466', 'ML', '223', 'Bamako', 'XOF', 'West African CFA franc', 'CFA', '.ml', 'Mali', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Bamako\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"말리\",\"br\":\"Mali\",\"pt\":\"Mali\",\"nl\":\"Mali\",\"hr\":\"Mali\",\"fa\":\"مالی\",\"de\":\"Mali\",\"es\":\"Mali\",\"fr\":\"Mali\",\"ja\":\"マリ\",\"it\":\"Mali\",\"cn\":\"马里\"}', '17.00000000', '-4.00000000', '🇲🇱', 'U+1F1F2 U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 07:59:20', 1, 'Q912'),
(135, 'Malta', 'MLT', '470', 'MT', '356', 'Valletta', 'EUR', 'Euro', '€', '.mt', 'Malta', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Malta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"몰타\",\"br\":\"Malta\",\"pt\":\"Malta\",\"nl\":\"Malta\",\"hr\":\"Malta\",\"fa\":\"مالت\",\"de\":\"Malta\",\"es\":\"Malta\",\"fr\":\"Malte\",\"ja\":\"マルタ\",\"it\":\"Malta\",\"cn\":\"马耳他\"}', '35.83333333', '14.58333333', '🇲🇹', 'U+1F1F2 U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 07:59:26', 1, 'Q233'),
(136, 'Man (Isle of)', 'IMN', '833', 'IM', '+44-1624', 'Douglas, Isle of Man', 'GBP', 'British pound', '£', '.im', 'Isle of Man', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Isle_of_Man\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"맨 섬\",\"br\":\"Ilha de Man\",\"pt\":\"Ilha de Man\",\"nl\":\"Isle of Man\",\"hr\":\"Otok Man\",\"fa\":\"جزیره من\",\"de\":\"Insel Man\",\"es\":\"Isla de Man\",\"fr\":\"Île de Man\",\"ja\":\"マン島\",\"it\":\"Isola di Man\",\"cn\":\"马恩岛\"}', '54.25000000', '-4.50000000', '🇮🇲', 'U+1F1EE U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 07:59:43', 1, NULL),
(137, 'Marshall Islands', 'MHL', '584', 'MH', '692', 'Majuro', 'USD', 'United States dollar', '$', '.mh', 'M̧ajeļ', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Kwajalein\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"},{\"zoneName\":\"Pacific/Majuro\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"}]', '{\"kr\":\"마셜 제도\",\"br\":\"Ilhas Marshall\",\"pt\":\"Ilhas Marshall\",\"nl\":\"Marshalleilanden\",\"hr\":\"Maršalovi Otoci\",\"fa\":\"جزایر مارشال\",\"de\":\"Marshallinseln\",\"es\":\"Islas Marshall\",\"fr\":\"Îles Marshall\",\"ja\":\"マーシャル諸島\",\"it\":\"Isole Marshall\",\"cn\":\"马绍尔群岛\"}', '9.00000000', '168.00000000', '🇲🇭', 'U+1F1F2 U+1F1ED', '2018-07-20 14:41:03', '2021-12-11 08:00:32', 1, 'Q709'),
(138, 'Martinique', 'MTQ', '474', 'MQ', '596', 'Fort-de-France', 'EUR', 'Euro', '€', '.mq', 'Martinique', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Martinique\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"마르티니크\",\"br\":\"Martinica\",\"pt\":\"Martinica\",\"nl\":\"Martinique\",\"hr\":\"Martinique\",\"fa\":\"مونتسرات\",\"de\":\"Martinique\",\"es\":\"Martinica\",\"fr\":\"Martinique\",\"ja\":\"マルティニーク\",\"it\":\"Martinica\",\"cn\":\"马提尼克岛\"}', '14.66666700', '-61.00000000', '🇲🇶', 'U+1F1F2 U+1F1F6', '2018-07-20 14:41:03', '2021-12-11 08:00:44', 1, NULL),
(139, 'Mauritania', 'MRT', '478', 'MR', '222', 'Nouakchott', 'MRO', 'Mauritanian ouguiya', 'MRU', '.mr', 'موريتانيا', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Nouakchott\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"모리타니\",\"br\":\"Mauritânia\",\"pt\":\"Mauritânia\",\"nl\":\"Mauritanië\",\"hr\":\"Mauritanija\",\"fa\":\"موریتانی\",\"de\":\"Mauretanien\",\"es\":\"Mauritania\",\"fr\":\"Mauritanie\",\"ja\":\"モーリタニア\",\"it\":\"Mauritania\",\"cn\":\"毛里塔尼亚\"}', '20.00000000', '-12.00000000', '🇲🇷', 'U+1F1F2 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 08:01:03', 1, 'Q1025'),
(140, 'Mauritius', 'MUS', '480', 'MU', '230', 'Port Louis', 'MUR', 'Mauritian rupee', '₨', '.mu', 'Maurice', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mauritius\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MUT\",\"tzName\":\"Mauritius Time\"}]', '{\"kr\":\"모리셔스\",\"br\":\"Maurício\",\"pt\":\"Maurícia\",\"nl\":\"Mauritius\",\"hr\":\"Mauricijus\",\"fa\":\"موریس\",\"de\":\"Mauritius\",\"es\":\"Mauricio\",\"fr\":\"Île Maurice\",\"ja\":\"モーリシャス\",\"it\":\"Mauritius\",\"cn\":\"毛里求斯\"}', '-20.28333333', '57.55000000', '🇲🇺', 'U+1F1F2 U+1F1FA', '2018-07-20 14:41:03', '2021-12-11 08:01:10', 1, 'Q1027'),
(141, 'Mayotte', 'MYT', '175', 'YT', '262', 'Mamoudzou', 'EUR', 'Euro', '€', '.yt', 'Mayotte', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mayotte\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"마요트\",\"br\":\"Mayotte\",\"pt\":\"Mayotte\",\"nl\":\"Mayotte\",\"hr\":\"Mayotte\",\"fa\":\"مایوت\",\"de\":\"Mayotte\",\"es\":\"Mayotte\",\"fr\":\"Mayotte\",\"ja\":\"マヨット\",\"it\":\"Mayotte\",\"cn\":\"马约特\"}', '-12.83333333', '45.16666666', '🇾🇹', 'U+1F1FE U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 08:01:15', 1, NULL),
(142, 'Mexico', 'MEX', '484', 'MX', '52', 'Mexico City', 'MXN', 'Mexican peso', '$', '.mx', 'México', 'Americas', 'Central America', '[{\"zoneName\":\"America/Bahia_Banderas\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Cancun\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Chihuahua\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Hermosillo\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Matamoros\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Mazatlan\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Merida\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Mexico_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Monterrey\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Ojinaga\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Tijuana\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"kr\":\"멕시코\",\"br\":\"México\",\"pt\":\"México\",\"nl\":\"Mexico\",\"hr\":\"Meksiko\",\"fa\":\"مکزیک\",\"de\":\"Mexiko\",\"es\":\"México\",\"fr\":\"Mexique\",\"ja\":\"メキシコ\",\"it\":\"Messico\",\"cn\":\"墨西哥\"}', '23.00000000', '-102.00000000', '🇲🇽', 'U+1F1F2 U+1F1FD', '2018-07-20 14:41:03', '2021-12-11 08:01:23', 1, 'Q96'),
(143, 'Micronesia', 'FSM', '583', 'FM', '691', 'Palikir', 'USD', 'United States dollar', '$', '.fm', 'Micronesia', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Chuuk\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHUT\",\"tzName\":\"Chuuk Time\"},{\"zoneName\":\"Pacific/Kosrae\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"KOST\",\"tzName\":\"Kosrae Time\"},{\"zoneName\":\"Pacific/Pohnpei\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"PONT\",\"tzName\":\"Pohnpei Standard Time\"}]', '{\"kr\":\"미크로네시아 연방\",\"br\":\"Micronésia\",\"pt\":\"Micronésia\",\"nl\":\"Micronesië\",\"hr\":\"Mikronezija\",\"fa\":\"ایالات فدرال میکرونزی\",\"de\":\"Mikronesien\",\"es\":\"Micronesia\",\"fr\":\"Micronésie\",\"ja\":\"ミクロネシア連邦\",\"it\":\"Micronesia\",\"cn\":\"密克罗尼西亚\"}', '6.91666666', '158.25000000', '🇫🇲', 'U+1F1EB U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 08:01:30', 1, 'Q702'),
(144, 'Moldova', 'MDA', '498', 'MD', '373', 'Chisinau', 'MDL', 'Moldovan leu', 'L', '.md', 'Moldova', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Chisinau\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"몰도바\",\"br\":\"Moldávia\",\"pt\":\"Moldávia\",\"nl\":\"Moldavië\",\"hr\":\"Moldova\",\"fa\":\"مولداوی\",\"de\":\"Moldawie\",\"es\":\"Moldavia\",\"fr\":\"Moldavie\",\"ja\":\"モルドバ共和国\",\"it\":\"Moldavia\",\"cn\":\"摩尔多瓦\"}', '47.00000000', '29.00000000', '🇲🇩', 'U+1F1F2 U+1F1E9', '2018-07-20 14:41:03', '2021-12-11 08:01:39', 1, 'Q217'),
(145, 'Monaco', 'MCO', '492', 'MC', '377', 'Monaco', 'EUR', 'Euro', '€', '.mc', 'Monaco', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Monaco\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"모나코\",\"br\":\"Mônaco\",\"pt\":\"Mónaco\",\"nl\":\"Monaco\",\"hr\":\"Monako\",\"fa\":\"موناکو\",\"de\":\"Monaco\",\"es\":\"Mónaco\",\"fr\":\"Monaco\",\"ja\":\"モナコ\",\"it\":\"Principato di Monaco\",\"cn\":\"摩纳哥\"}', '43.73333333', '7.40000000', '🇲🇨', 'U+1F1F2 U+1F1E8', '2018-07-20 14:41:03', '2021-12-11 08:01:44', 1, 'Q235'),
(146, 'Mongolia', 'MNG', '496', 'MN', '976', 'Ulan Bator', 'MNT', 'Mongolian tögrög', '₮', '.mn', 'Монгол улс', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Choibalsan\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CHOT\",\"tzName\":\"Choibalsan Standard Time\"},{\"zoneName\":\"Asia/Hovd\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"HOVT\",\"tzName\":\"Hovd Time\"},{\"zoneName\":\"Asia/Ulaanbaatar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"ULAT\",\"tzName\":\"Ulaanbaatar Standard Time\"}]', '{\"kr\":\"몽골\",\"br\":\"Mongólia\",\"pt\":\"Mongólia\",\"nl\":\"Mongolië\",\"hr\":\"Mongolija\",\"fa\":\"مغولستان\",\"de\":\"Mongolei\",\"es\":\"Mongolia\",\"fr\":\"Mongolie\",\"ja\":\"モンゴル\",\"it\":\"Mongolia\",\"cn\":\"蒙古\"}', '46.00000000', '105.00000000', '🇲🇳', 'U+1F1F2 U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 08:02:45', 1, 'Q711'),
(147, 'Montenegro', 'MNE', '499', 'ME', '382', 'Podgorica', 'EUR', 'Euro', '€', '.me', 'Црна Гора', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Podgorica\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"몬테네그로\",\"br\":\"Montenegro\",\"pt\":\"Montenegro\",\"nl\":\"Montenegro\",\"hr\":\"Crna Gora\",\"fa\":\"مونته‌نگرو\",\"de\":\"Montenegro\",\"es\":\"Montenegro\",\"fr\":\"Monténégro\",\"ja\":\"モンテネグロ\",\"it\":\"Montenegro\",\"cn\":\"黑山\"}', '42.50000000', '19.30000000', '🇲🇪', 'U+1F1F2 U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 08:01:46', 1, 'Q236'),
(148, 'Montserrat', 'MSR', '500', 'MS', '+1-664', 'Plymouth', 'XCD', 'Eastern Caribbean dollar', '$', '.ms', 'Montserrat', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Montserrat\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"몬트세랫\",\"br\":\"Montserrat\",\"pt\":\"Monserrate\",\"nl\":\"Montserrat\",\"hr\":\"Montserrat\",\"fa\":\"مایوت\",\"de\":\"Montserrat\",\"es\":\"Montserrat\",\"fr\":\"Montserrat\",\"ja\":\"モントセラト\",\"it\":\"Montserrat\",\"cn\":\"蒙特塞拉特\"}', '16.75000000', '-62.20000000', '🇲🇸', 'U+1F1F2 U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 08:02:56', 1, NULL),
(149, 'Morocco', 'MAR', '504', 'MA', '212', 'Rabat', 'MAD', 'Moroccan dirham', 'DH', '.ma', 'المغرب', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Casablanca\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"kr\":\"모로코\",\"br\":\"Marrocos\",\"pt\":\"Marrocos\",\"nl\":\"Marokko\",\"hr\":\"Maroko\",\"fa\":\"مراکش\",\"de\":\"Marokko\",\"es\":\"Marruecos\",\"fr\":\"Maroc\",\"ja\":\"モロッコ\",\"it\":\"Marocco\",\"cn\":\"摩洛哥\"}', '32.00000000', '-5.00000000', '🇲🇦', 'U+1F1F2 U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 08:03:08', 1, 'Q1028'),
(150, 'Mozambique', 'MOZ', '508', 'MZ', '258', 'Maputo', 'MZN', 'Mozambican metical', 'MT', '.mz', 'Moçambique', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Maputo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"모잠비크\",\"br\":\"Moçambique\",\"pt\":\"Moçambique\",\"nl\":\"Mozambique\",\"hr\":\"Mozambik\",\"fa\":\"موزامبیک\",\"de\":\"Mosambik\",\"es\":\"Mozambique\",\"fr\":\"Mozambique\",\"ja\":\"モザンビーク\",\"it\":\"Mozambico\",\"cn\":\"莫桑比克\"}', '-18.25000000', '35.00000000', '🇲🇿', 'U+1F1F2 U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 08:03:19', 1, 'Q1029'),
(151, 'Myanmar', 'MMR', '104', 'MM', '95', 'Nay Pyi Taw', 'MMK', 'Burmese kyat', 'K', '.mm', 'မြန်မာ', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Yangon\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"MMT\",\"tzName\":\"Myanmar Standard Time\"}]', '{\"kr\":\"미얀마\",\"br\":\"Myanmar\",\"pt\":\"Myanmar\",\"nl\":\"Myanmar\",\"hr\":\"Mijanmar\",\"fa\":\"میانمار\",\"de\":\"Myanmar\",\"es\":\"Myanmar\",\"fr\":\"Myanmar\",\"ja\":\"ミャンマー\",\"it\":\"Birmania\",\"cn\":\"缅甸\"}', '22.00000000', '98.00000000', '🇲🇲', 'U+1F1F2 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 08:03:25', 1, 'Q836'),
(152, 'Namibia', 'NAM', '516', 'NA', '264', 'Windhoek', 'NAD', 'Namibian dollar', '$', '.na', 'Namibia', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Windhoek\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"WAST\",\"tzName\":\"West Africa Summer Time\"}]', '{\"kr\":\"나미비아\",\"br\":\"Namíbia\",\"pt\":\"Namíbia\",\"nl\":\"Namibië\",\"hr\":\"Namibija\",\"fa\":\"نامیبیا\",\"de\":\"Namibia\",\"es\":\"Namibia\",\"fr\":\"Namibie\",\"ja\":\"ナミビア\",\"it\":\"Namibia\",\"cn\":\"纳米比亚\"}', '-22.00000000', '17.00000000', '🇳🇦', 'U+1F1F3 U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 08:03:32', 1, 'Q1030'),
(153, 'Nauru', 'NRU', '520', 'NR', '674', 'Yaren', 'AUD', 'Australian dollar', '$', '.nr', 'Nauru', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Nauru\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NRT\",\"tzName\":\"Nauru Time\"}]', '{\"kr\":\"나우루\",\"br\":\"Nauru\",\"pt\":\"Nauru\",\"nl\":\"Nauru\",\"hr\":\"Nauru\",\"fa\":\"نائورو\",\"de\":\"Nauru\",\"es\":\"Nauru\",\"fr\":\"Nauru\",\"ja\":\"ナウル\",\"it\":\"Nauru\",\"cn\":\"瑙鲁\"}', '-0.53333333', '166.91666666', '🇳🇷', 'U+1F1F3 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 08:03:37', 1, 'Q697'),
(154, 'Nepal', 'NPL', '524', 'NP', '977', 'Kathmandu', 'NPR', 'Nepalese rupee', '₨', '.np', 'नपल', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kathmandu\",\"gmtOffset\":20700,\"gmtOffsetName\":\"UTC+05:45\",\"abbreviation\":\"NPT\",\"tzName\":\"Nepal Time\"}]', '{\"kr\":\"네팔\",\"br\":\"Nepal\",\"pt\":\"Nepal\",\"nl\":\"Nepal\",\"hr\":\"Nepal\",\"fa\":\"نپال\",\"de\":\"Népal\",\"es\":\"Nepal\",\"fr\":\"Népal\",\"ja\":\"ネパール\",\"it\":\"Nepal\",\"cn\":\"尼泊尔\"}', '28.00000000', '84.00000000', '🇳🇵', 'U+1F1F3 U+1F1F5', '2018-07-20 14:41:03', '2021-12-11 08:03:41', 1, 'Q837'),
(155, 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'BQ', '599', 'Kralendijk', 'USD', 'United States dollar', '$', '.an', 'Caribisch Nederland', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"보네르 섬\",\"br\":\"Bonaire\",\"pt\":\"Bonaire\",\"fa\":\"بونیر\",\"de\":\"Bonaire, Sint Eustatius und Saba\",\"fr\":\"Bonaire, Saint-Eustache et Saba\",\"it\":\"Bonaire, Saint-Eustache e Saba\",\"cn\":\"博内尔岛、圣尤斯特歇斯和萨巴岛\"}', '12.15000000', '-68.26666700', '🇧🇶', 'U+1F1E7 U+1F1F6', '2018-07-20 14:41:03', '2021-12-11 07:28:02', 1, 'Q27561'),
(156, 'Netherlands', 'NLD', '528', 'NL', '31', 'Amsterdam', 'EUR', 'Euro', '€', '.nl', 'Nederland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Amsterdam\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"네덜란드 \",\"br\":\"Holanda\",\"pt\":\"Países Baixos\",\"nl\":\"Nederland\",\"hr\":\"Nizozemska\",\"fa\":\"پادشاهی هلند\",\"de\":\"Niederlande\",\"es\":\"Países Bajos\",\"fr\":\"Pays-Bas\",\"ja\":\"オランダ\",\"it\":\"Paesi Bassi\",\"cn\":\"荷兰\"}', '52.50000000', '5.75000000', '🇳🇱', 'U+1F1F3 U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 08:01:52', 1, 'Q55'),
(157, 'New Caledonia', 'NCL', '540', 'NC', '687', 'Noumea', 'XPF', 'CFP franc', '₣', '.nc', 'Nouvelle-Calédonie', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Noumea\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"NCT\",\"tzName\":\"New Caledonia Time\"}]', '{\"kr\":\"누벨칼레도니\",\"br\":\"Nova Caledônia\",\"pt\":\"Nova Caledónia\",\"nl\":\"Nieuw-Caledonië\",\"hr\":\"Nova Kaledonija\",\"fa\":\"کالدونیای جدید\",\"de\":\"Neukaledonien\",\"es\":\"Nueva Caledonia\",\"fr\":\"Nouvelle-Calédonie\",\"ja\":\"ニューカレドニア\",\"it\":\"Nuova Caledonia\",\"cn\":\"新喀里多尼亚\"}', '-21.50000000', '165.50000000', '🇳🇨', 'U+1F1F3 U+1F1E8', '2018-07-20 14:41:03', '2021-12-11 08:04:11', 1, NULL),
(158, 'New Zealand', 'NZL', '554', 'NZ', '64', 'Wellington', 'NZD', 'New Zealand dollar', '$', '.nz', 'New Zealand', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific/Auckland\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Pacific/Chatham\",\"gmtOffset\":49500,\"gmtOffsetName\":\"UTC+13:45\",\"abbreviation\":\"CHAST\",\"tzName\":\"Chatham Standard Time\"}]', '{\"kr\":\"뉴질랜드\",\"br\":\"Nova Zelândia\",\"pt\":\"Nova Zelândia\",\"nl\":\"Nieuw-Zeeland\",\"hr\":\"Novi Zeland\",\"fa\":\"نیوزیلند\",\"de\":\"Neuseeland\",\"es\":\"Nueva Zelanda\",\"fr\":\"Nouvelle-Zélande\",\"ja\":\"ニュージーランド\",\"it\":\"Nuova Zelanda\",\"cn\":\"新西兰\"}', '-41.00000000', '174.00000000', '🇳🇿', 'U+1F1F3 U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 08:04:18', 1, 'Q664'),
(159, 'Nicaragua', 'NIC', '558', 'NI', '505', 'Managua', 'NIO', 'Nicaraguan córdoba', 'C$', '.ni', 'Nicaragua', 'Americas', 'Central America', '[{\"zoneName\":\"America/Managua\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"니카라과\",\"br\":\"Nicarágua\",\"pt\":\"Nicarágua\",\"nl\":\"Nicaragua\",\"hr\":\"Nikaragva\",\"fa\":\"نیکاراگوئه\",\"de\":\"Nicaragua\",\"es\":\"Nicaragua\",\"fr\":\"Nicaragua\",\"ja\":\"ニカラグア\",\"it\":\"Nicaragua\",\"cn\":\"尼加拉瓜\"}', '13.00000000', '-85.00000000', '🇳🇮', 'U+1F1F3 U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 08:04:25', 1, 'Q811'),
(160, 'Niger', 'NER', '562', 'NE', '227', 'Niamey', 'XOF', 'West African CFA franc', 'CFA', '.ne', 'Niger', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Niamey\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"니제르\",\"br\":\"Níger\",\"pt\":\"Níger\",\"nl\":\"Niger\",\"hr\":\"Niger\",\"fa\":\"نیجر\",\"de\":\"Niger\",\"es\":\"Níger\",\"fr\":\"Niger\",\"ja\":\"ニジェール\",\"it\":\"Niger\",\"cn\":\"尼日尔\"}', '16.00000000', '8.00000000', '🇳🇪', 'U+1F1F3 U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 08:04:32', 1, 'Q1032'),
(161, 'Nigeria', 'NGA', '566', 'NG', '234', 'Abuja', 'NGN', 'Nigerian naira', '₦', '.ng', 'Nigeria', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Lagos\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"나이지리아\",\"br\":\"Nigéria\",\"pt\":\"Nigéria\",\"nl\":\"Nigeria\",\"hr\":\"Nigerija\",\"fa\":\"نیجریه\",\"de\":\"Nigeria\",\"es\":\"Nigeria\",\"fr\":\"Nigéria\",\"ja\":\"ナイジェリア\",\"it\":\"Nigeria\",\"cn\":\"尼日利亚\"}', '10.00000000', '8.00000000', '🇳🇬', 'U+1F1F3 U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 08:04:37', 1, 'Q1033'),
(162, 'Niue', 'NIU', '570', 'NU', '683', 'Alofi', 'NZD', 'New Zealand dollar', '$', '.nu', 'Niuē', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Niue\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"NUT\",\"tzName\":\"Niue Time\"}]', '{\"kr\":\"니우에\",\"br\":\"Niue\",\"pt\":\"Niue\",\"nl\":\"Niue\",\"hr\":\"Niue\",\"fa\":\"نیووی\",\"de\":\"Niue\",\"es\":\"Niue\",\"fr\":\"Niue\",\"ja\":\"ニウエ\",\"it\":\"Niue\",\"cn\":\"纽埃\"}', '-19.03333333', '-169.86666666', '🇳🇺', 'U+1F1F3 U+1F1FA', '2018-07-20 14:41:03', '2021-12-11 08:04:42', 1, 'Q34020'),
(163, 'Norfolk Island', 'NFK', '574', 'NF', '672', 'Kingston', 'AUD', 'Australian dollar', '$', '.nf', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific/Norfolk\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NFT\",\"tzName\":\"Norfolk Time\"}]', '{\"kr\":\"노퍽 섬\",\"br\":\"Ilha Norfolk\",\"pt\":\"Ilha Norfolk\",\"nl\":\"Norfolkeiland\",\"hr\":\"Otok Norfolk\",\"fa\":\"جزیره نورفک\",\"de\":\"Norfolkinsel\",\"es\":\"Isla de Norfolk\",\"fr\":\"Île de Norfolk\",\"ja\":\"ノーフォーク島\",\"it\":\"Isola Norfolk\",\"cn\":\"诺福克岛\"}', '-29.03333333', '167.95000000', '🇳🇫', 'U+1F1F3 U+1F1EB', '2018-07-20 14:41:03', '2021-12-11 08:05:39', 1, NULL),
(164, 'Northern Mariana Islands', 'MNP', '580', 'MP', '+1-670', 'Saipan', 'USD', 'United States dollar', '$', '.mp', 'Northern Mariana Islands', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Saipan\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"ChST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"kr\":\"북마리아나 제도\",\"br\":\"Ilhas Marianas\",\"pt\":\"Ilhas Marianas\",\"nl\":\"Noordelijke Marianeneilanden\",\"hr\":\"Sjevernomarijanski otoci\",\"fa\":\"جزایر ماریانای شمالی\",\"de\":\"Nördliche Marianen\",\"es\":\"Islas Marianas del Norte\",\"fr\":\"Îles Mariannes du Nord\",\"ja\":\"北マリアナ諸島\",\"it\":\"Isole Marianne Settentrionali\",\"cn\":\"北马里亚纳群岛\"}', '15.20000000', '145.75000000', '🇲🇵', 'U+1F1F2 U+1F1F5', '2018-07-20 14:41:03', '2021-12-11 08:05:55', 1, NULL),
(165, 'Norway', 'NOR', '578', 'NO', '47', 'Oslo', 'NOK', 'Norwegian krone', 'kr', '.no', 'Norge', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"노르웨이\",\"br\":\"Noruega\",\"pt\":\"Noruega\",\"nl\":\"Noorwegen\",\"hr\":\"Norveška\",\"fa\":\"نروژ\",\"de\":\"Norwegen\",\"es\":\"Noruega\",\"fr\":\"Norvège\",\"ja\":\"ノルウェー\",\"it\":\"Norvegia\",\"cn\":\"挪威\"}', '62.00000000', '10.00000000', '🇳🇴', 'U+1F1F3 U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 08:07:57', 1, 'Q20'),
(166, 'Oman', 'OMN', '512', 'OM', '968', 'Muscat', 'OMR', 'Omani rial', '.ع.ر', '.om', 'عمان', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Muscat\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"kr\":\"오만\",\"br\":\"Omã\",\"pt\":\"Omã\",\"nl\":\"Oman\",\"hr\":\"Oman\",\"fa\":\"عمان\",\"de\":\"Oman\",\"es\":\"Omán\",\"fr\":\"Oman\",\"ja\":\"オマーン\",\"it\":\"oman\",\"cn\":\"阿曼\"}', '21.00000000', '57.00000000', '🇴🇲', 'U+1F1F4 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 08:08:03', 1, 'Q842'),
(167, 'Pakistan', 'PAK', '586', 'PK', '92', 'Islamabad', 'PKR', 'Pakistani rupee', '₨', '.pk', 'Pakistan', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Karachi\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"PKT\",\"tzName\":\"Pakistan Standard Time\"}]', '{\"kr\":\"파키스탄\",\"br\":\"Paquistão\",\"pt\":\"Paquistão\",\"nl\":\"Pakistan\",\"hr\":\"Pakistan\",\"fa\":\"پاکستان\",\"de\":\"Pakistan\",\"es\":\"Pakistán\",\"fr\":\"Pakistan\",\"ja\":\"パキスタン\",\"it\":\"Pakistan\",\"cn\":\"巴基斯坦\"}', '30.00000000', '70.00000000', '🇵🇰', 'U+1F1F5 U+1F1F0', '2018-07-20 14:41:03', '2021-12-11 08:08:09', 1, 'Q843'),
(168, 'Palau', 'PLW', '585', 'PW', '680', 'Melekeok', 'USD', 'United States dollar', '$', '.pw', 'Palau', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Palau\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"PWT\",\"tzName\":\"Palau Time\"}]', '{\"kr\":\"팔라우\",\"br\":\"Palau\",\"pt\":\"Palau\",\"nl\":\"Palau\",\"hr\":\"Palau\",\"fa\":\"پالائو\",\"de\":\"Palau\",\"es\":\"Palau\",\"fr\":\"Palaos\",\"ja\":\"パラオ\",\"it\":\"Palau\",\"cn\":\"帕劳\"}', '7.50000000', '134.50000000', '🇵🇼', 'U+1F1F5 U+1F1FC', '2018-07-20 14:41:03', '2021-12-11 08:05:58', 1, 'Q695'),
(169, 'Palestinian Territory Occupied', 'PSE', '275', 'PS', '970', 'East Jerusalem', 'ILS', 'Israeli new shekel', '₪', '.ps', 'فلسطين', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Gaza\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia/Hebron\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"팔레스타인 영토\",\"br\":\"Palestina\",\"pt\":\"Palestina\",\"nl\":\"Palestijnse gebieden\",\"hr\":\"Palestina\",\"fa\":\"فلسطین\",\"de\":\"Palästina\",\"es\":\"Palestina\",\"fr\":\"Palestine\",\"ja\":\"パレスチナ\",\"it\":\"Palestina\",\"cn\":\"巴勒斯坦\"}', '31.90000000', '35.20000000', '🇵🇸', 'U+1F1F5 U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 08:08:16', 1, NULL),
(170, 'Panama', 'PAN', '591', 'PA', '507', 'Panama City', 'PAB', 'Panamanian balboa', 'B/.', '.pa', 'Panamá', 'Americas', 'Central America', '[{\"zoneName\":\"America/Panama\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"파나마\",\"br\":\"Panamá\",\"pt\":\"Panamá\",\"nl\":\"Panama\",\"hr\":\"Panama\",\"fa\":\"پاناما\",\"de\":\"Panama\",\"es\":\"Panamá\",\"fr\":\"Panama\",\"ja\":\"パナマ\",\"it\":\"Panama\",\"cn\":\"巴拿马\"}', '9.00000000', '-80.00000000', '🇵🇦', 'U+1F1F5 U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 08:08:22', 1, 'Q804'),
(171, 'Papua new Guinea', 'PNG', '598', 'PG', '675', 'Port Moresby', 'PGK', 'Papua New Guinean kina', 'K', '.pg', 'Papua Niugini', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Bougainville\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"BST\",\"tzName\":\"Bougainville Standard Time[6\"},{\"zoneName\":\"Pacific/Port_Moresby\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"PGT\",\"tzName\":\"Papua New Guinea Time\"}]', '{\"kr\":\"파푸아뉴기니\",\"br\":\"Papua Nova Guiné\",\"pt\":\"Papua Nova Guiné\",\"nl\":\"Papoea-Nieuw-Guinea\",\"hr\":\"Papua Nova Gvineja\",\"fa\":\"پاپوآ گینه نو\",\"de\":\"Papua-Neuguinea\",\"es\":\"Papúa Nueva Guinea\",\"fr\":\"Papouasie-Nouvelle-Guinée\",\"ja\":\"パプアニューギニア\",\"it\":\"Papua Nuova Guinea\",\"cn\":\"巴布亚新几内亚\"}', '-6.00000000', '147.00000000', '🇵🇬', 'U+1F1F5 U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 08:08:31', 1, 'Q691'),
(172, 'Paraguay', 'PRY', '600', 'PY', '595', 'Asuncion', 'PYG', 'Paraguayan guarani', '₲', '.py', 'Paraguay', 'Americas', 'South America', '[{\"zoneName\":\"America/Asuncion\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PYST\",\"tzName\":\"Paraguay Summer Time\"}]', '{\"kr\":\"파라과이\",\"br\":\"Paraguai\",\"pt\":\"Paraguai\",\"nl\":\"Paraguay\",\"hr\":\"Paragvaj\",\"fa\":\"پاراگوئه\",\"de\":\"Paraguay\",\"es\":\"Paraguay\",\"fr\":\"Paraguay\",\"ja\":\"パラグアイ\",\"it\":\"Paraguay\",\"cn\":\"巴拉圭\"}', '-23.00000000', '-58.00000000', '🇵🇾', 'U+1F1F5 U+1F1FE', '2018-07-20 14:41:03', '2021-12-11 08:08:49', 1, 'Q733'),
(173, 'Peru', 'PER', '604', 'PE', '51', 'Lima', 'PEN', 'Peruvian sol', 'S/.', '.pe', 'Perú', 'Americas', 'South America', '[{\"zoneName\":\"America/Lima\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"PET\",\"tzName\":\"Peru Time\"}]', '{\"kr\":\"페루\",\"br\":\"Peru\",\"pt\":\"Peru\",\"nl\":\"Peru\",\"hr\":\"Peru\",\"fa\":\"پرو\",\"de\":\"Peru\",\"es\":\"Perú\",\"fr\":\"Pérou\",\"ja\":\"ペルー\",\"it\":\"Perù\",\"cn\":\"秘鲁\"}', '-10.00000000', '-76.00000000', '🇵🇪', 'U+1F1F5 U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 08:08:59', 1, 'Q419'),
(174, 'Philippines', 'PHL', '608', 'PH', '63', 'Manila', 'PHP', 'Philippine peso', '₱', '.ph', 'Pilipinas', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Manila\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"PHT\",\"tzName\":\"Philippine Time\"}]', '{\"kr\":\"필리핀\",\"br\":\"Filipinas\",\"pt\":\"Filipinas\",\"nl\":\"Filipijnen\",\"hr\":\"Filipini\",\"fa\":\"جزایر الندفیلیپین\",\"de\":\"Philippinen\",\"es\":\"Filipinas\",\"fr\":\"Philippines\",\"ja\":\"フィリピン\",\"it\":\"Filippine\",\"cn\":\"菲律宾\"}', '13.00000000', '122.00000000', '🇵🇭', 'U+1F1F5 U+1F1ED', '2018-07-20 14:41:03', '2021-12-11 08:09:03', 1, 'Q928'),
(175, 'Pitcairn Island', 'PCN', '612', 'PN', '870', 'Adamstown', 'NZD', 'New Zealand dollar', '$', '.pn', 'Pitcairn Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Pitcairn\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"kr\":\"핏케언 제도\",\"br\":\"Ilhas Pitcairn\",\"pt\":\"Ilhas Picárnia\",\"nl\":\"Pitcairneilanden\",\"hr\":\"Pitcairnovo otočje\",\"fa\":\"پیتکرن\",\"de\":\"Pitcairn\",\"es\":\"Islas Pitcairn\",\"fr\":\"Îles Pitcairn\",\"ja\":\"ピトケアン\",\"it\":\"Isole Pitcairn\",\"cn\":\"皮特凯恩群岛\"}', '-25.06666666', '-130.10000000', '🇵🇳', 'U+1F1F5 U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 08:09:08', 1, NULL),
(176, 'Poland', 'POL', '616', 'PL', '48', 'Warsaw', 'PLN', 'Polish złoty', 'zł', '.pl', 'Polska', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Warsaw\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"폴란드\",\"br\":\"Polônia\",\"pt\":\"Polónia\",\"nl\":\"Polen\",\"hr\":\"Poljska\",\"fa\":\"لهستان\",\"de\":\"Polen\",\"es\":\"Polonia\",\"fr\":\"Pologne\",\"ja\":\"ポーランド\",\"it\":\"Polonia\",\"cn\":\"波兰\"}', '52.00000000', '20.00000000', '🇵🇱', 'U+1F1F5 U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 08:09:19', 1, 'Q36'),
(177, 'Portugal', 'PRT', '620', 'PT', '351', 'Lisbon', 'EUR', 'Euro', '€', '.pt', 'Portugal', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Atlantic/Azores\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"AZOT\",\"tzName\":\"Azores Standard Time\"},{\"zoneName\":\"Atlantic/Madeira\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe/Lisbon\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"kr\":\"포르투갈\",\"br\":\"Portugal\",\"pt\":\"Portugal\",\"nl\":\"Portugal\",\"hr\":\"Portugal\",\"fa\":\"پرتغال\",\"de\":\"Portugal\",\"es\":\"Portugal\",\"fr\":\"Portugal\",\"ja\":\"ポルトガル\",\"it\":\"Portogallo\",\"cn\":\"葡萄牙\"}', '39.50000000', '-8.00000000', '🇵🇹', 'U+1F1F5 U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 08:02:09', 1, 'Q45'),
(178, 'Puerto Rico', 'PRI', '630', 'PR', '+1-787 and 1-939', 'San Juan', 'USD', 'United States dollar', '$', '.pr', 'Puerto Rico', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Puerto_Rico\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"푸에르토리코\",\"br\":\"Porto Rico\",\"pt\":\"Porto Rico\",\"nl\":\"Puerto Rico\",\"hr\":\"Portoriko\",\"fa\":\"پورتو ریکو\",\"de\":\"Puerto Rico\",\"es\":\"Puerto Rico\",\"fr\":\"Porto Rico\",\"ja\":\"プエルトリコ\",\"it\":\"Porto Rico\",\"cn\":\"波多黎各\"}', '18.25000000', '-66.50000000', '🇵🇷', 'U+1F1F5 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 08:06:02', 1, NULL),
(179, 'Qatar', 'QAT', '634', 'QA', '974', 'Doha', 'QAR', 'Qatari riyal', 'ق.ر', '.qa', 'قطر', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Qatar\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"카타르\",\"br\":\"Catar\",\"pt\":\"Catar\",\"nl\":\"Qatar\",\"hr\":\"Katar\",\"fa\":\"قطر\",\"de\":\"Katar\",\"es\":\"Catar\",\"fr\":\"Qatar\",\"ja\":\"カタール\",\"it\":\"Qatar\",\"cn\":\"卡塔尔\"}', '25.50000000', '51.25000000', '🇶🇦', 'U+1F1F6 U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 08:09:24', 1, 'Q846'),
(180, 'Reunion', 'REU', '638', 'RE', '262', 'Saint-Denis', 'EUR', 'Euro', '€', '.re', 'La Réunion', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Reunion\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"RET\",\"tzName\":\"Réunion Time\"}]', '{\"kr\":\"레위니옹\",\"br\":\"Reunião\",\"pt\":\"Reunião\",\"nl\":\"Réunion\",\"hr\":\"Réunion\",\"fa\":\"رئونیون\",\"de\":\"Réunion\",\"es\":\"Reunión\",\"fr\":\"Réunion\",\"ja\":\"レユニオン\",\"it\":\"Riunione\",\"cn\":\"留尼汪岛\"}', '-21.15000000', '55.50000000', '🇷🇪', 'U+1F1F7 U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 08:01:59', 1, NULL),
(181, 'Romania', 'ROU', '642', 'RO', '40', 'Bucharest', 'RON', 'Romanian leu', 'lei', '.ro', 'România', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Bucharest\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"루마니아\",\"br\":\"Romênia\",\"pt\":\"Roménia\",\"nl\":\"Roemenië\",\"hr\":\"Rumunjska\",\"fa\":\"رومانی\",\"de\":\"Rumänien\",\"es\":\"Rumania\",\"fr\":\"Roumanie\",\"ja\":\"ルーマニア\",\"it\":\"Romania\",\"cn\":\"罗马尼亚\"}', '46.00000000', '25.00000000', '🇷🇴', 'U+1F1F7 U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 08:09:31', 1, 'Q218'),
(182, 'Russia', 'RUS', '643', 'RU', '7', 'Moscow', 'RUB', 'Russian ruble', '₽', '.ru', 'Россия', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Asia/Anadyr\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"ANAT\",\"tzName\":\"Anadyr Time[4\"},{\"zoneName\":\"Asia/Barnaul\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Chita\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Irkutsk\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"IRKT\",\"tzName\":\"Irkutsk Time\"},{\"zoneName\":\"Asia/Kamchatka\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"PETT\",\"tzName\":\"Kamchatka Time\"},{\"zoneName\":\"Asia/Khandyga\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Krasnoyarsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Magadan\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MAGT\",\"tzName\":\"Magadan Time\"},{\"zoneName\":\"Asia/Novokuznetsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Novosibirsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"NOVT\",\"tzName\":\"Novosibirsk Time\"},{\"zoneName\":\"Asia/Omsk\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"OMST\",\"tzName\":\"Omsk Time\"},{\"zoneName\":\"Asia/Sakhalin\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SAKT\",\"tzName\":\"Sakhalin Island Time\"},{\"zoneName\":\"Asia/Srednekolymsk\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SRET\",\"tzName\":\"Srednekolymsk Time\"},{\"zoneName\":\"Asia/Tomsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"MSD+3\",\"tzName\":\"Moscow Daylight Time+3\"},{\"zoneName\":\"Asia/Ust-Nera\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia/Vladivostok\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia/Yakutsk\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Yekaterinburg\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"YEKT\",\"tzName\":\"Yekaterinburg Time\"},{\"zoneName\":\"Europe/Astrakhan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Kaliningrad\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Kirov\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Moscow\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Samara\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Saratov\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSD\",\"tzName\":\"Moscow Daylight Time+4\"},{\"zoneName\":\"Europe/Ulyanovsk\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Volgograd\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Standard Time\"}]', '{\"kr\":\"러시아\",\"br\":\"Rússia\",\"pt\":\"Rússia\",\"nl\":\"Rusland\",\"hr\":\"Rusija\",\"fa\":\"روسیه\",\"de\":\"Russland\",\"es\":\"Rusia\",\"fr\":\"Russie\",\"ja\":\"ロシア連邦\",\"it\":\"Russia\",\"cn\":\"俄罗斯联邦\"}', '60.00000000', '100.00000000', '🇷🇺', 'U+1F1F7 U+1F1FA', '2018-07-20 14:41:03', '2021-12-11 08:09:37', 1, 'Q159'),
(183, 'Rwanda', 'RWA', '646', 'RW', '250', 'Kigali', 'RWF', 'Rwandan franc', 'FRw', '.rw', 'Rwanda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Kigali\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"르완다\",\"br\":\"Ruanda\",\"pt\":\"Ruanda\",\"nl\":\"Rwanda\",\"hr\":\"Ruanda\",\"fa\":\"رواندا\",\"de\":\"Ruanda\",\"es\":\"Ruanda\",\"fr\":\"Rwanda\",\"ja\":\"ルワンダ\",\"it\":\"Ruanda\",\"cn\":\"卢旺达\"}', '-2.00000000', '30.00000000', '🇷🇼', 'U+1F1F7 U+1F1FC', '2018-07-20 14:41:03', '2021-12-11 08:09:42', 1, 'Q1037'),
(184, 'Saint Helena', 'SHN', '654', 'SH', '290', 'Jamestown', 'SHP', 'Saint Helena pound', '£', '.sh', 'Saint Helena', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic/St_Helena\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"세인트헬레나\",\"br\":\"Santa Helena\",\"pt\":\"Santa Helena\",\"nl\":\"Sint-Helena\",\"hr\":\"Sveta Helena\",\"fa\":\"سنت هلنا، اسنشن و تریستان دا کونا\",\"de\":\"Sankt Helena\",\"es\":\"Santa Helena\",\"fr\":\"Sainte-Hélène\",\"ja\":\"セントヘレナ・アセンションおよびトリスタンダクーニャ\",\"it\":\"Sant\'Elena\",\"cn\":\"圣赫勒拿\"}', '-15.95000000', '-5.70000000', '🇸🇭', 'U+1F1F8 U+1F1ED', '2018-07-20 14:41:03', '2021-12-11 08:09:50', 1, NULL),
(185, 'Saint Kitts And Nevis', 'KNA', '659', 'KN', '+1-869', 'Basseterre', 'XCD', 'Eastern Caribbean dollar', '$', '.kn', 'Saint Kitts and Nevis', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Kitts\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트키츠 네비스\",\"br\":\"São Cristóvão e Neves\",\"pt\":\"São Cristóvão e Neves\",\"nl\":\"Saint Kitts en Nevis\",\"hr\":\"Sveti Kristof i Nevis\",\"fa\":\"سنت کیتس و نویس\",\"de\":\"St. Kitts und Nevis\",\"es\":\"San Cristóbal y Nieves\",\"fr\":\"Saint-Christophe-et-Niévès\",\"ja\":\"セントクリストファー・ネイビス\",\"it\":\"Saint Kitts e Nevis\",\"cn\":\"圣基茨和尼维斯\"}', '17.33333333', '-62.75000000', '🇰🇳', 'U+1F1F0 U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 08:09:56', 1, 'Q763'),
(186, 'Saint Lucia', 'LCA', '662', 'LC', '+1-758', 'Castries', 'XCD', 'Eastern Caribbean dollar', '$', '.lc', 'Saint Lucia', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Lucia\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트루시아\",\"br\":\"Santa Lúcia\",\"pt\":\"Santa Lúcia\",\"nl\":\"Saint Lucia\",\"hr\":\"Sveta Lucija\",\"fa\":\"سنت لوسیا\",\"de\":\"Saint Lucia\",\"es\":\"Santa Lucía\",\"fr\":\"Saint-Lucie\",\"ja\":\"セントルシア\",\"it\":\"Santa Lucia\",\"cn\":\"圣卢西亚\"}', '13.88333333', '-60.96666666', '🇱🇨', 'U+1F1F1 U+1F1E8', '2018-07-20 14:41:03', '2021-12-11 08:09:58', 1, 'Q760'),
(187, 'Saint Pierre and Miquelon', 'SPM', '666', 'PM', '508', 'Saint-Pierre', 'EUR', 'Euro', '€', '.pm', 'Saint-Pierre-et-Miquelon', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Miquelon\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PMDT\",\"tzName\":\"Pierre & Miquelon Daylight Time\"}]', '{\"kr\":\"생피에르 미클롱\",\"br\":\"Saint-Pierre e Miquelon\",\"pt\":\"São Pedro e Miquelon\",\"nl\":\"Saint Pierre en Miquelon\",\"hr\":\"Sveti Petar i Mikelon\",\"fa\":\"سن پیر و میکلن\",\"de\":\"Saint-Pierre und Miquelon\",\"es\":\"San Pedro y Miquelón\",\"fr\":\"Saint-Pierre-et-Miquelon\",\"ja\":\"サンピエール島・ミクロン島\",\"it\":\"Saint-Pierre e Miquelon\",\"cn\":\"圣皮埃尔和密克隆\"}', '46.83333333', '-56.33333333', '🇵🇲', 'U+1F1F5 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 08:02:00', 1, NULL),
(188, 'Saint Vincent And The Grenadines', 'VCT', '670', 'VC', '+1-784', 'Kingstown', 'XCD', 'Eastern Caribbean dollar', '$', '.vc', 'Saint Vincent and the Grenadines', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Vincent\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트빈센트 그레나딘\",\"br\":\"São Vicente e Granadinas\",\"pt\":\"São Vicente e Granadinas\",\"nl\":\"Saint Vincent en de Grenadines\",\"hr\":\"Sveti Vincent i Grenadini\",\"fa\":\"سنت وینسنت و گرنادین‌ها\",\"de\":\"Saint Vincent und die Grenadinen\",\"es\":\"San Vicente y Granadinas\",\"fr\":\"Saint-Vincent-et-les-Grenadines\",\"ja\":\"セントビンセントおよびグレナディーン諸島\",\"it\":\"Saint Vincent e Grenadine\",\"cn\":\"圣文森特和格林纳丁斯\"}', '13.25000000', '-61.20000000', '🇻🇨', 'U+1F1FB U+1F1E8', '2018-07-20 14:41:03', '2021-12-11 08:09:59', 1, 'Q757'),
(189, 'Saint-Barthelemy', 'BLM', '652', 'BL', '590', 'Gustavia', 'EUR', 'Euro', '€', '.bl', 'Saint-Barthélemy', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Barthelemy\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"생바르텔레미\",\"br\":\"São Bartolomeu\",\"pt\":\"São Bartolomeu\",\"nl\":\"Saint Barthélemy\",\"hr\":\"Saint Barthélemy\",\"fa\":\"سن-بارتلمی\",\"de\":\"Saint-Barthélemy\",\"es\":\"San Bartolomé\",\"fr\":\"Saint-Barthélemy\",\"ja\":\"サン・バルテルミー\",\"it\":\"Antille Francesi\",\"cn\":\"圣巴泰勒米\"}', '18.50000000', '-63.41666666', '🇧🇱', 'U+1F1E7 U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 08:06:08', 1, NULL),
(190, 'Saint-Martin (French part)', 'MAF', '663', 'MF', '590', 'Marigot', 'EUR', 'Euro', '€', '.mf', 'Saint-Martin', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Marigot\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트마틴 섬\",\"br\":\"Saint Martin\",\"pt\":\"Ilha São Martinho\",\"nl\":\"Saint-Martin\",\"hr\":\"Sveti Martin\",\"fa\":\"سینت مارتن\",\"de\":\"Saint Martin\",\"es\":\"Saint Martin\",\"fr\":\"Saint-Martin\",\"ja\":\"サン・マルタン（フランス領）\",\"it\":\"Saint Martin\",\"cn\":\"密克罗尼西亚\"}', '18.08333333', '-63.95000000', '🇲🇫', 'U+1F1F2 U+1F1EB', '2018-07-20 14:41:03', '2021-12-11 08:06:10', 1, NULL),
(191, 'Samoa', 'WSM', '882', 'WS', '685', 'Apia', 'WST', 'Samoan tālā', 'SAT', '.ws', 'Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Apia\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"WST\",\"tzName\":\"West Samoa Time\"}]', '{\"kr\":\"사모아\",\"br\":\"Samoa\",\"pt\":\"Samoa\",\"nl\":\"Samoa\",\"hr\":\"Samoa\",\"fa\":\"ساموآ\",\"de\":\"Samoa\",\"es\":\"Samoa\",\"fr\":\"Samoa\",\"ja\":\"サモア\",\"it\":\"Samoa\",\"cn\":\"萨摩亚\"}', '-13.58333333', '-172.33333333', '🇼🇸', 'U+1F1FC U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 08:10:07', 1, 'Q683'),
(192, 'San Marino', 'SMR', '674', 'SM', '378', 'San Marino', 'EUR', 'Euro', '€', '.sm', 'San Marino', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/San_Marino\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"산마리노\",\"br\":\"San Marino\",\"pt\":\"São Marinho\",\"nl\":\"San Marino\",\"hr\":\"San Marino\",\"fa\":\"سان مارینو\",\"de\":\"San Marino\",\"es\":\"San Marino\",\"fr\":\"Saint-Marin\",\"ja\":\"サンマリノ\",\"it\":\"San Marino\",\"cn\":\"圣马力诺\"}', '43.76666666', '12.41666666', '🇸🇲', 'U+1F1F8 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 08:02:15', 1, 'Q238'),
(193, 'Sao Tome and Principe', 'STP', '678', 'ST', '239', 'Sao Tome', 'STD', 'Dobra', 'Db', '.st', 'São Tomé e Príncipe', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Sao_Tome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"상투메 프린시페\",\"br\":\"São Tomé e Príncipe\",\"pt\":\"São Tomé e Príncipe\",\"nl\":\"Sao Tomé en Principe\",\"hr\":\"Sveti Toma i Princip\",\"fa\":\"کواترو دو فرویرو\",\"de\":\"São Tomé und Príncipe\",\"es\":\"Santo Tomé y Príncipe\",\"fr\":\"Sao Tomé-et-Principe\",\"ja\":\"サントメ・プリンシペ\",\"it\":\"São Tomé e Príncipe\",\"cn\":\"圣多美和普林西比\"}', '1.00000000', '7.00000000', '🇸🇹', 'U+1F1F8 U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 08:10:28', 1, 'Q1039'),
(194, 'Saudi Arabia', 'SAU', '682', 'SA', '966', 'Riyadh', 'SAR', 'Saudi riyal', '﷼', '.sa', 'المملكة العربية السعودية', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Riyadh\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"사우디아라비아\",\"br\":\"Arábia Saudita\",\"pt\":\"Arábia Saudita\",\"nl\":\"Saoedi-Arabië\",\"hr\":\"Saudijska Arabija\",\"fa\":\"عربستان سعودی\",\"de\":\"Saudi-Arabien\",\"es\":\"Arabia Saudí\",\"fr\":\"Arabie Saoudite\",\"ja\":\"サウジアラビア\",\"it\":\"Arabia Saudita\",\"cn\":\"沙特阿拉伯\"}', '25.00000000', '45.00000000', '🇸🇦', 'U+1F1F8 U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 08:10:44', 1, 'Q851'),
(195, 'Senegal', 'SEN', '686', 'SN', '221', 'Dakar', 'XOF', 'West African CFA franc', 'CFA', '.sn', 'Sénégal', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Dakar\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"세네갈\",\"br\":\"Senegal\",\"pt\":\"Senegal\",\"nl\":\"Senegal\",\"hr\":\"Senegal\",\"fa\":\"سنگال\",\"de\":\"Senegal\",\"es\":\"Senegal\",\"fr\":\"Sénégal\",\"ja\":\"セネガル\",\"it\":\"Senegal\",\"cn\":\"塞内加尔\"}', '14.00000000', '-14.00000000', '🇸🇳', 'U+1F1F8 U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 08:10:50', 1, 'Q1041');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_name`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(196, 'Serbia', 'SRB', '688', 'RS', '381', 'Belgrade', 'RSD', 'Serbian dinar', 'din', '.rs', 'Србија', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"세르비아\",\"br\":\"Sérvia\",\"pt\":\"Sérvia\",\"nl\":\"Servië\",\"hr\":\"Srbija\",\"fa\":\"صربستان\",\"de\":\"Serbien\",\"es\":\"Serbia\",\"fr\":\"Serbie\",\"ja\":\"セルビア\",\"it\":\"Serbia\",\"cn\":\"塞尔维亚\"}', '44.00000000', '21.00000000', '🇷🇸', 'U+1F1F7 U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 08:10:55', 1, 'Q403'),
(197, 'Seychelles', 'SYC', '690', 'SC', '248', 'Victoria', 'SCR', 'Seychellois rupee', 'SRe', '.sc', 'Seychelles', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mahe\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SCT\",\"tzName\":\"Seychelles Time\"}]', '{\"kr\":\"세이셸\",\"br\":\"Seicheles\",\"pt\":\"Seicheles\",\"nl\":\"Seychellen\",\"hr\":\"Sejšeli\",\"fa\":\"سیشل\",\"de\":\"Seychellen\",\"es\":\"Seychelles\",\"fr\":\"Seychelles\",\"ja\":\"セーシェル\",\"it\":\"Seychelles\",\"cn\":\"塞舌尔\"}', '-4.58333333', '55.66666666', '🇸🇨', 'U+1F1F8 U+1F1E8', '2018-07-20 14:41:03', '2021-12-11 08:11:01', 1, 'Q1042'),
(198, 'Sierra Leone', 'SLE', '694', 'SL', '232', 'Freetown', 'SLL', 'Sierra Leonean leone', 'Le', '.sl', 'Sierra Leone', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Freetown\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"시에라리온\",\"br\":\"Serra Leoa\",\"pt\":\"Serra Leoa\",\"nl\":\"Sierra Leone\",\"hr\":\"Sijera Leone\",\"fa\":\"سیرالئون\",\"de\":\"Sierra Leone\",\"es\":\"Sierra Leone\",\"fr\":\"Sierra Leone\",\"ja\":\"シエラレオネ\",\"it\":\"Sierra Leone\",\"cn\":\"塞拉利昂\"}', '8.50000000', '-11.50000000', '🇸🇱', 'U+1F1F8 U+1F1F1', '2018-07-20 14:41:03', '2021-12-11 08:11:06', 1, 'Q1044'),
(199, 'Singapore', 'SGP', '702', 'SG', '65', 'Singapur', 'SGD', 'Singapore dollar', '$', '.sg', 'Singapore', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Singapore\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"SGT\",\"tzName\":\"Singapore Time\"}]', '{\"kr\":\"싱가포르\",\"br\":\"Singapura\",\"pt\":\"Singapura\",\"nl\":\"Singapore\",\"hr\":\"Singapur\",\"fa\":\"سنگاپور\",\"de\":\"Singapur\",\"es\":\"Singapur\",\"fr\":\"Singapour\",\"ja\":\"シンガポール\",\"it\":\"Singapore\",\"cn\":\"新加坡\"}', '1.36666666', '103.80000000', '🇸🇬', 'U+1F1F8 U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 08:11:12', 1, 'Q334'),
(200, 'Slovakia', 'SVK', '703', 'SK', '421', 'Bratislava', 'EUR', 'Euro', '€', '.sk', 'Slovensko', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Bratislava\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"슬로바키아\",\"br\":\"Eslováquia\",\"pt\":\"Eslováquia\",\"nl\":\"Slowakije\",\"hr\":\"Slovačka\",\"fa\":\"اسلواکی\",\"de\":\"Slowakei\",\"es\":\"República Eslovaca\",\"fr\":\"Slovaquie\",\"ja\":\"スロバキア\",\"it\":\"Slovacchia\",\"cn\":\"斯洛伐克\"}', '48.66666666', '19.50000000', '🇸🇰', 'U+1F1F8 U+1F1F0', '2018-07-20 14:41:03', '2021-12-11 08:07:01', 1, 'Q214'),
(201, 'Slovenia', 'SVN', '705', 'SI', '386', 'Ljubljana', 'EUR', 'Euro', '€', '.si', 'Slovenija', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Ljubljana\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"슬로베니아\",\"br\":\"Eslovênia\",\"pt\":\"Eslovénia\",\"nl\":\"Slovenië\",\"hr\":\"Slovenija\",\"fa\":\"اسلوونی\",\"de\":\"Slowenien\",\"es\":\"Eslovenia\",\"fr\":\"Slovénie\",\"ja\":\"スロベニア\",\"it\":\"Slovenia\",\"cn\":\"斯洛文尼亚\"}', '46.11666666', '14.81666666', '🇸🇮', 'U+1F1F8 U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 08:07:05', 1, 'Q215'),
(202, 'Solomon Islands', 'SLB', '090', 'SB', '677', 'Honiara', 'SBD', 'Solomon Islands dollar', 'Si$', '.sb', 'Solomon Islands', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Guadalcanal\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SBT\",\"tzName\":\"Solomon Islands Time\"}]', '{\"kr\":\"솔로몬 제도\",\"br\":\"Ilhas Salomão\",\"pt\":\"Ilhas Salomão\",\"nl\":\"Salomonseilanden\",\"hr\":\"Solomonski Otoci\",\"fa\":\"جزایر سلیمان\",\"de\":\"Salomonen\",\"es\":\"Islas Salomón\",\"fr\":\"Îles Salomon\",\"ja\":\"ソロモン諸島\",\"it\":\"Isole Salomone\",\"cn\":\"所罗门群岛\"}', '-8.00000000', '159.00000000', '🇸🇧', 'U+1F1F8 U+1F1E7', '2018-07-20 14:41:03', '2021-12-11 08:11:36', 1, 'Q685'),
(203, 'Somalia', 'SOM', '706', 'SO', '252', 'Mogadishu', 'SOS', 'Somali shilling', 'Sh.so.', '.so', 'Soomaaliya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Mogadishu\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"소말리아\",\"br\":\"Somália\",\"pt\":\"Somália\",\"nl\":\"Somalië\",\"hr\":\"Somalija\",\"fa\":\"سومالی\",\"de\":\"Somalia\",\"es\":\"Somalia\",\"fr\":\"Somalie\",\"ja\":\"ソマリア\",\"it\":\"Somalia\",\"cn\":\"索马里\"}', '10.00000000', '49.00000000', '🇸🇴', 'U+1F1F8 U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 08:11:41', 1, 'Q1045'),
(204, 'South Africa', 'ZAF', '710', 'ZA', '27', 'Pretoria', 'ZAR', 'South African rand', 'R', '.za', 'South Africa', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Johannesburg\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"남아프리카 공화국\",\"br\":\"República Sul-Africana\",\"pt\":\"República Sul-Africana\",\"nl\":\"Zuid-Afrika\",\"hr\":\"Južnoafrička Republika\",\"fa\":\"آفریقای جنوبی\",\"de\":\"Republik Südafrika\",\"es\":\"República de Sudáfrica\",\"fr\":\"Afrique du Sud\",\"ja\":\"南アフリカ\",\"it\":\"Sud Africa\",\"cn\":\"南非\"}', '-29.00000000', '24.00000000', '🇿🇦', 'U+1F1FF U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 08:11:49', 1, 'Q258'),
(205, 'South Georgia', 'SGS', '239', 'GS', '500', 'Grytviken', 'GBP', 'British pound', '£', '.gs', 'South Georgia', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic/South_Georgia\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"GST\",\"tzName\":\"South Georgia and the South Sandwich Islands Time\"}]', '{\"kr\":\"사우스조지아\",\"br\":\"Ilhas Geórgias do Sul e Sandwich do Sul\",\"pt\":\"Ilhas Geórgia do Sul e Sanduíche do Sul\",\"nl\":\"Zuid-Georgia en Zuidelijke Sandwicheilanden\",\"hr\":\"Južna Georgija i otočje Južni Sandwich\",\"fa\":\"جزایر جورجیای جنوبی و ساندویچ جنوبی\",\"de\":\"Südgeorgien und die Südlichen Sandwichinseln\",\"es\":\"Islas Georgias del Sur y Sandwich del Sur\",\"fr\":\"Géorgie du Sud-et-les Îles Sandwich du Sud\",\"ja\":\"サウスジョージア・サウスサンドウィッチ諸島\",\"it\":\"Georgia del Sud e Isole Sandwich Meridionali\",\"cn\":\"南乔治亚\"}', '-54.50000000', '-37.00000000', '🇬🇸', 'U+1F1EC U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 08:06:45', 1, NULL),
(206, 'South Sudan', 'SSD', '728', 'SS', '211', 'Juba', 'SSP', 'South Sudanese pound', '£', '.ss', 'South Sudan', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Juba\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"남수단\",\"br\":\"Sudão do Sul\",\"pt\":\"Sudão do Sul\",\"nl\":\"Zuid-Soedan\",\"hr\":\"Južni Sudan\",\"fa\":\"سودان جنوبی\",\"de\":\"Südsudan\",\"es\":\"Sudán del Sur\",\"fr\":\"Soudan du Sud\",\"ja\":\"南スーダン\",\"it\":\"Sudan del sud\",\"cn\":\"南苏丹\"}', '7.00000000', '30.00000000', '🇸🇸', 'U+1F1F8 U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 08:12:25', 1, 'Q958'),
(207, 'Spain', 'ESP', '724', 'ES', '34', 'Madrid', 'EUR', 'Euro', '€', '.es', 'España', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Africa/Ceuta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Atlantic/Canary\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe/Madrid\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스페인\",\"br\":\"Espanha\",\"pt\":\"Espanha\",\"nl\":\"Spanje\",\"hr\":\"Španjolska\",\"fa\":\"اسپانیا\",\"de\":\"Spanien\",\"es\":\"España\",\"fr\":\"Espagne\",\"ja\":\"スペイン\",\"it\":\"Spagna\",\"cn\":\"西班牙\"}', '40.00000000', '-4.00000000', '🇪🇸', 'U+1F1EA U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 08:02:30', 1, 'Q29'),
(208, 'Sri Lanka', 'LKA', '144', 'LK', '94', 'Colombo', 'LKR', 'Sri Lankan rupee', 'Rs', '.lk', 'śrī laṃkāva', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Colombo\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"kr\":\"스리랑카\",\"br\":\"Sri Lanka\",\"pt\":\"Sri Lanka\",\"nl\":\"Sri Lanka\",\"hr\":\"Šri Lanka\",\"fa\":\"سری‌لانکا\",\"de\":\"Sri Lanka\",\"es\":\"Sri Lanka\",\"fr\":\"Sri Lanka\",\"ja\":\"スリランカ\",\"it\":\"Sri Lanka\",\"cn\":\"斯里兰卡\"}', '7.00000000', '81.00000000', '🇱🇰', 'U+1F1F1 U+1F1F0', '2018-07-20 14:41:03', '2021-12-11 08:12:30', 1, 'Q854'),
(209, 'Sudan', 'SDN', '729', 'SD', '249', 'Khartoum', 'SDG', 'Sudanese pound', '.س.ج', '.sd', 'السودان', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Khartoum\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EAT\",\"tzName\":\"Eastern African Time\"}]', '{\"kr\":\"수단\",\"br\":\"Sudão\",\"pt\":\"Sudão\",\"nl\":\"Soedan\",\"hr\":\"Sudan\",\"fa\":\"سودان\",\"de\":\"Sudan\",\"es\":\"Sudán\",\"fr\":\"Soudan\",\"ja\":\"スーダン\",\"it\":\"Sudan\",\"cn\":\"苏丹\"}', '15.00000000', '30.00000000', '🇸🇩', 'U+1F1F8 U+1F1E9', '2018-07-20 14:41:03', '2021-12-11 08:12:35', 1, 'Q1049'),
(210, 'Suriname', 'SUR', '740', 'SR', '597', 'Paramaribo', 'SRD', 'Surinamese dollar', '$', '.sr', 'Suriname', 'Americas', 'South America', '[{\"zoneName\":\"America/Paramaribo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"SRT\",\"tzName\":\"Suriname Time\"}]', '{\"kr\":\"수리남\",\"br\":\"Suriname\",\"pt\":\"Suriname\",\"nl\":\"Suriname\",\"hr\":\"Surinam\",\"fa\":\"سورینام\",\"de\":\"Suriname\",\"es\":\"Surinam\",\"fr\":\"Surinam\",\"ja\":\"スリナム\",\"it\":\"Suriname\",\"cn\":\"苏里南\"}', '4.00000000', '-56.00000000', '🇸🇷', 'U+1F1F8 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 08:12:40', 1, 'Q730'),
(211, 'Svalbard And Jan Mayen Islands', 'SJM', '744', 'SJ', '47', 'Longyearbyen', 'NOK', 'Norwegian Krone', 'kr', '.sj', 'Svalbard og Jan Mayen', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Arctic/Longyearbyen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스발바르 얀마옌 제도\",\"br\":\"Svalbard\",\"pt\":\"Svalbard\",\"nl\":\"Svalbard en Jan Mayen\",\"hr\":\"Svalbard i Jan Mayen\",\"fa\":\"سوالبارد و یان ماین\",\"de\":\"Svalbard und Jan Mayen\",\"es\":\"Islas Svalbard y Jan Mayen\",\"fr\":\"Svalbard et Jan Mayen\",\"ja\":\"スヴァールバル諸島およびヤンマイエン島\",\"it\":\"Svalbard e Jan Mayen\",\"cn\":\"斯瓦尔巴和扬马延群岛\"}', '78.00000000', '20.00000000', '🇸🇯', 'U+1F1F8 U+1F1EF', '2018-07-20 14:41:03', '2021-12-11 08:12:54', 1, NULL),
(212, 'Swaziland', 'SWZ', '748', 'SZ', '268', 'Mbabane', 'SZL', 'Lilangeni', 'E', '.sz', 'Swaziland', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Mbabane\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"에스와티니\",\"br\":\"Suazilândia\",\"pt\":\"Suazilândia\",\"nl\":\"Swaziland\",\"hr\":\"Svazi\",\"fa\":\"سوازیلند\",\"de\":\"Swasiland\",\"es\":\"Suazilandia\",\"fr\":\"Swaziland\",\"ja\":\"スワジランド\",\"it\":\"Swaziland\",\"cn\":\"斯威士兰\"}', '-26.50000000', '31.50000000', '🇸🇿', 'U+1F1F8 U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 08:13:12', 1, 'Q1050'),
(213, 'Sweden', 'SWE', '752', 'SE', '46', 'Stockholm', 'SEK', 'Swedish krona', 'kr', '.se', 'Sverige', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Stockholm\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스웨덴\",\"br\":\"Suécia\",\"pt\":\"Suécia\",\"nl\":\"Zweden\",\"hr\":\"Švedska\",\"fa\":\"سوئد\",\"de\":\"Schweden\",\"es\":\"Suecia\",\"fr\":\"Suède\",\"ja\":\"スウェーデン\",\"it\":\"Svezia\",\"cn\":\"瑞典\"}', '62.00000000', '15.00000000', '🇸🇪', 'U+1F1F8 U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 08:13:24', 1, 'Q34'),
(214, 'Switzerland', 'CHE', '756', 'CH', '41', 'Bern', 'CHF', 'Swiss franc', 'CHf', '.ch', 'Schweiz', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Zurich\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스위스\",\"br\":\"Suíça\",\"pt\":\"Suíça\",\"nl\":\"Zwitserland\",\"hr\":\"Švicarska\",\"fa\":\"سوئیس\",\"de\":\"Schweiz\",\"es\":\"Suiza\",\"fr\":\"Suisse\",\"ja\":\"スイス\",\"it\":\"Svizzera\",\"cn\":\"瑞士\"}', '47.00000000', '8.00000000', '🇨🇭', 'U+1F1E8 U+1F1ED', '2018-07-20 14:41:03', '2021-12-11 08:13:31', 1, 'Q39'),
(215, 'Syria', 'SYR', '760', 'SY', '963', 'Damascus', 'SYP', 'Syrian pound', 'LS', '.sy', 'سوريا', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Damascus\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"시리아\",\"br\":\"Síria\",\"pt\":\"Síria\",\"nl\":\"Syrië\",\"hr\":\"Sirija\",\"fa\":\"سوریه\",\"de\":\"Syrien\",\"es\":\"Siria\",\"fr\":\"Syrie\",\"ja\":\"シリア・アラブ共和国\",\"it\":\"Siria\",\"cn\":\"叙利亚\"}', '35.00000000', '38.00000000', '🇸🇾', 'U+1F1F8 U+1F1FE', '2018-07-20 14:41:03', '2021-12-11 08:13:36', 1, 'Q858'),
(216, 'Taiwan', 'TWN', '158', 'TW', '886', 'Taipei', 'TWD', 'New Taiwan dollar', '$', '.tw', '臺灣', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Taipei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"대만\",\"br\":\"Taiwan\",\"pt\":\"Taiwan\",\"nl\":\"Taiwan\",\"hr\":\"Tajvan\",\"fa\":\"تایوان\",\"de\":\"Taiwan\",\"es\":\"Taiwán\",\"fr\":\"Taïwan\",\"ja\":\"台湾（中華民国）\",\"it\":\"Taiwan\",\"cn\":\"中国台湾\"}', '23.50000000', '121.00000000', '🇹🇼', 'U+1F1F9 U+1F1FC', '2018-07-20 14:41:03', '2021-12-11 08:13:41', 1, 'Q865'),
(217, 'Tajikistan', 'TJK', '762', 'TJ', '992', 'Dushanbe', 'TJS', 'Tajikistani somoni', 'SM', '.tj', 'Тоҷикистон', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Dushanbe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TJT\",\"tzName\":\"Tajikistan Time\"}]', '{\"kr\":\"타지키스탄\",\"br\":\"Tajiquistão\",\"pt\":\"Tajiquistão\",\"nl\":\"Tadzjikistan\",\"hr\":\"Tađikistan\",\"fa\":\"تاجیکستان\",\"de\":\"Tadschikistan\",\"es\":\"Tayikistán\",\"fr\":\"Tadjikistan\",\"ja\":\"タジキスタン\",\"it\":\"Tagikistan\",\"cn\":\"塔吉克斯坦\"}', '39.00000000', '71.00000000', '🇹🇯', 'U+1F1F9 U+1F1EF', '2018-07-20 14:41:03', '2021-12-11 08:13:46', 1, 'Q863'),
(218, 'Tanzania', 'TZA', '834', 'TZ', '255', 'Dodoma', 'TZS', 'Tanzanian shilling', 'TSh', '.tz', 'Tanzania', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Dar_es_Salaam\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"탄자니아\",\"br\":\"Tanzânia\",\"pt\":\"Tanzânia\",\"nl\":\"Tanzania\",\"hr\":\"Tanzanija\",\"fa\":\"تانزانیا\",\"de\":\"Tansania\",\"es\":\"Tanzania\",\"fr\":\"Tanzanie\",\"ja\":\"タンザニア\",\"it\":\"Tanzania\",\"cn\":\"坦桑尼亚\"}', '-6.00000000', '35.00000000', '🇹🇿', 'U+1F1F9 U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 08:13:57', 1, 'Q924'),
(219, 'Thailand', 'THA', '764', 'TH', '66', 'Bangkok', 'THB', 'Thai baht', '฿', '.th', 'ประเทศไทย', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Bangkok\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"태국\",\"br\":\"Tailândia\",\"pt\":\"Tailândia\",\"nl\":\"Thailand\",\"hr\":\"Tajland\",\"fa\":\"تایلند\",\"de\":\"Thailand\",\"es\":\"Tailandia\",\"fr\":\"Thaïlande\",\"ja\":\"タイ\",\"it\":\"Tailandia\",\"cn\":\"泰国\"}', '15.00000000', '100.00000000', '🇹🇭', 'U+1F1F9 U+1F1ED', '2018-07-20 14:41:03', '2021-12-11 08:14:06', 1, 'Q869'),
(220, 'Togo', 'TGO', '768', 'TG', '228', 'Lome', 'XOF', 'West African CFA franc', 'CFA', '.tg', 'Togo', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Lome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"토고\",\"br\":\"Togo\",\"pt\":\"Togo\",\"nl\":\"Togo\",\"hr\":\"Togo\",\"fa\":\"توگو\",\"de\":\"Togo\",\"es\":\"Togo\",\"fr\":\"Togo\",\"ja\":\"トーゴ\",\"it\":\"Togo\",\"cn\":\"多哥\"}', '8.00000000', '1.16666666', '🇹🇬', 'U+1F1F9 U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 08:14:14', 1, 'Q945'),
(221, 'Tokelau', 'TKL', '772', 'TK', '690', '', 'NZD', 'New Zealand dollar', '$', '.tk', 'Tokelau', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Fakaofo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TKT\",\"tzName\":\"Tokelau Time\"}]', '{\"kr\":\"토켈라우\",\"br\":\"Tokelau\",\"pt\":\"Toquelau\",\"nl\":\"Tokelau\",\"hr\":\"Tokelau\",\"fa\":\"توکلائو\",\"de\":\"Tokelau\",\"es\":\"Islas Tokelau\",\"fr\":\"Tokelau\",\"ja\":\"トケラウ\",\"it\":\"Isole Tokelau\",\"cn\":\"托克劳\"}', '-9.00000000', '-172.00000000', '🇹🇰', 'U+1F1F9 U+1F1F0', '2018-07-20 14:41:03', '2021-12-11 08:14:33', 1, NULL),
(222, 'Tonga', 'TON', '776', 'TO', '676', 'Nuku\'alofa', 'TOP', 'Tongan paʻanga', '$', '.to', 'Tonga', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Tongatapu\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TOT\",\"tzName\":\"Tonga Time\"}]', '{\"kr\":\"통가\",\"br\":\"Tonga\",\"pt\":\"Tonga\",\"nl\":\"Tonga\",\"hr\":\"Tonga\",\"fa\":\"تونگا\",\"de\":\"Tonga\",\"es\":\"Tonga\",\"fr\":\"Tonga\",\"ja\":\"トンガ\",\"it\":\"Tonga\",\"cn\":\"汤加\"}', '-20.00000000', '-175.00000000', '🇹🇴', 'U+1F1F9 U+1F1F4', '2018-07-20 14:41:03', '2021-12-11 08:14:44', 1, 'Q678'),
(223, 'Trinidad And Tobago', 'TTO', '780', 'TT', '+1-868', 'Port of Spain', 'TTD', 'Trinidad and Tobago dollar', '$', '.tt', 'Trinidad and Tobago', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Port_of_Spain\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"트리니다드 토바고\",\"br\":\"Trinidad e Tobago\",\"pt\":\"Trindade e Tobago\",\"nl\":\"Trinidad en Tobago\",\"hr\":\"Trinidad i Tobago\",\"fa\":\"ترینیداد و توباگو\",\"de\":\"Trinidad und Tobago\",\"es\":\"Trinidad y Tobago\",\"fr\":\"Trinité et Tobago\",\"ja\":\"トリニダード・トバゴ\",\"it\":\"Trinidad e Tobago\",\"cn\":\"特立尼达和多巴哥\"}', '11.00000000', '-61.00000000', '🇹🇹', 'U+1F1F9 U+1F1F9', '2018-07-20 14:41:03', '2021-12-11 08:14:51', 1, 'Q754'),
(224, 'Tunisia', 'TUN', '788', 'TN', '216', 'Tunis', 'TND', 'Tunisian dinar', 'ت.د', '.tn', 'تونس', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Tunis\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"튀니지\",\"br\":\"Tunísia\",\"pt\":\"Tunísia\",\"nl\":\"Tunesië\",\"hr\":\"Tunis\",\"fa\":\"تونس\",\"de\":\"Tunesien\",\"es\":\"Túnez\",\"fr\":\"Tunisie\",\"ja\":\"チュニジア\",\"it\":\"Tunisia\",\"cn\":\"突尼斯\"}', '34.00000000', '9.00000000', '🇹🇳', 'U+1F1F9 U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 08:15:00', 1, 'Q948'),
(225, 'Turkey', 'TUR', '792', 'TR', '90', 'Ankara', 'TRY', 'Turkish lira', '₺', '.tr', 'Türkiye', 'Asia', 'Western Asia', '[{\"zoneName\":\"Europe/Istanbul\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"터키\",\"br\":\"Turquia\",\"pt\":\"Turquia\",\"nl\":\"Turkije\",\"hr\":\"Turska\",\"fa\":\"ترکیه\",\"de\":\"Türkei\",\"es\":\"Turquía\",\"fr\":\"Turquie\",\"ja\":\"トルコ\",\"it\":\"Turchia\",\"cn\":\"土耳其\"}', '39.00000000', '35.00000000', '🇹🇷', 'U+1F1F9 U+1F1F7', '2018-07-20 14:41:03', '2021-12-11 08:15:05', 1, 'Q43'),
(226, 'Turkmenistan', 'TKM', '795', 'TM', '993', 'Ashgabat', 'TMT', 'Turkmenistan manat', 'T', '.tm', 'Türkmenistan', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Ashgabat\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TMT\",\"tzName\":\"Turkmenistan Time\"}]', '{\"kr\":\"투르크메니스탄\",\"br\":\"Turcomenistão\",\"pt\":\"Turquemenistão\",\"nl\":\"Turkmenistan\",\"hr\":\"Turkmenistan\",\"fa\":\"ترکمنستان\",\"de\":\"Turkmenistan\",\"es\":\"Turkmenistán\",\"fr\":\"Turkménistan\",\"ja\":\"トルクメニスタン\",\"it\":\"Turkmenistan\",\"cn\":\"土库曼斯坦\"}', '40.00000000', '60.00000000', '🇹🇲', 'U+1F1F9 U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 08:15:10', 1, 'Q874'),
(227, 'Turks And Caicos Islands', 'TCA', '796', 'TC', '+1-649', 'Cockburn Town', 'USD', 'United States dollar', '$', '.tc', 'Turks and Caicos Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Grand_Turk\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"터크스 케이커스 제도\",\"br\":\"Ilhas Turcas e Caicos\",\"pt\":\"Ilhas Turcas e Caicos\",\"nl\":\"Turks- en Caicoseilanden\",\"hr\":\"Otoci Turks i Caicos\",\"fa\":\"جزایر تورکس و کایکوس\",\"de\":\"Turks- und Caicosinseln\",\"es\":\"Islas Turks y Caicos\",\"fr\":\"Îles Turques-et-Caïques\",\"ja\":\"タークス・カイコス諸島\",\"it\":\"Isole Turks e Caicos\",\"cn\":\"特克斯和凯科斯群岛\"}', '21.75000000', '-71.58333333', '🇹🇨', 'U+1F1F9 U+1F1E8', '2018-07-20 14:41:03', '2021-12-11 08:06:26', 1, NULL),
(228, 'Tuvalu', 'TUV', '798', 'TV', '688', 'Funafuti', 'AUD', 'Australian dollar', '$', '.tv', 'Tuvalu', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Funafuti\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"TVT\",\"tzName\":\"Tuvalu Time\"}]', '{\"kr\":\"투발루\",\"br\":\"Tuvalu\",\"pt\":\"Tuvalu\",\"nl\":\"Tuvalu\",\"hr\":\"Tuvalu\",\"fa\":\"تووالو\",\"de\":\"Tuvalu\",\"es\":\"Tuvalu\",\"fr\":\"Tuvalu\",\"ja\":\"ツバル\",\"it\":\"Tuvalu\",\"cn\":\"图瓦卢\"}', '-8.00000000', '178.00000000', '🇹🇻', 'U+1F1F9 U+1F1FB', '2018-07-20 14:41:03', '2021-12-11 08:07:37', 1, 'Q672'),
(229, 'Uganda', 'UGA', '800', 'UG', '256', 'Kampala', 'UGX', 'Ugandan shilling', 'USh', '.ug', 'Uganda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Kampala\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"우간다\",\"br\":\"Uganda\",\"pt\":\"Uganda\",\"nl\":\"Oeganda\",\"hr\":\"Uganda\",\"fa\":\"اوگاندا\",\"de\":\"Uganda\",\"es\":\"Uganda\",\"fr\":\"Uganda\",\"ja\":\"ウガンダ\",\"it\":\"Uganda\",\"cn\":\"乌干达\"}', '1.00000000', '32.00000000', '🇺🇬', 'U+1F1FA U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 08:15:17', 1, 'Q1036'),
(230, 'Ukraine', 'UKR', '804', 'UA', '380', 'Kiev', 'UAH', 'Ukrainian hryvnia', '₴', '.ua', 'Україна', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Kiev\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Simferopol\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Uzhgorod\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Zaporozhye\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"우크라이나\",\"br\":\"Ucrânia\",\"pt\":\"Ucrânia\",\"nl\":\"Oekraïne\",\"hr\":\"Ukrajina\",\"fa\":\"وکراین\",\"de\":\"Ukraine\",\"es\":\"Ucrania\",\"fr\":\"Ukraine\",\"ja\":\"ウクライナ\",\"it\":\"Ucraina\",\"cn\":\"乌克兰\"}', '49.00000000', '32.00000000', '🇺🇦', 'U+1F1FA U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 08:15:22', 1, 'Q212'),
(231, 'United Arab Emirates', 'ARE', '784', 'AE', '971', 'Abu Dhabi', 'AED', 'United Arab Emirates dirham', 'إ.د', '.ae', 'دولة الإمارات العربية المتحدة', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Dubai\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"kr\":\"아랍에미리트\",\"br\":\"Emirados árabes Unidos\",\"pt\":\"Emirados árabes Unidos\",\"nl\":\"Verenigde Arabische Emiraten\",\"hr\":\"Ujedinjeni Arapski Emirati\",\"fa\":\"امارات متحده عربی\",\"de\":\"Vereinigte Arabische Emirate\",\"es\":\"Emiratos Árabes Unidos\",\"fr\":\"Émirats arabes unis\",\"ja\":\"アラブ首長国連邦\",\"it\":\"Emirati Arabi Uniti\",\"cn\":\"阿拉伯联合酋长国\"}', '24.00000000', '54.00000000', '🇦🇪', 'U+1F1E6 U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 08:15:29', 1, 'Q878'),
(232, 'United Kingdom', 'GBR', '826', 'GB', '44', 'London', 'GBP', 'British pound', '£', '.uk', 'United Kingdom', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/London\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"영국\",\"br\":\"Reino Unido\",\"pt\":\"Reino Unido\",\"nl\":\"Verenigd Koninkrijk\",\"hr\":\"Ujedinjeno Kraljevstvo\",\"fa\":\"بریتانیای کبیر و ایرلند شمالی\",\"de\":\"Vereinigtes Königreich\",\"es\":\"Reino Unido\",\"fr\":\"Royaume-Uni\",\"ja\":\"イギリス\",\"it\":\"Regno Unito\",\"cn\":\"英国\"}', '54.00000000', '-2.00000000', '🇬🇧', 'U+1F1EC U+1F1E7', '2018-07-20 14:41:03', '2021-12-11 08:07:13', 1, 'Q145'),
(233, 'United States', 'USA', '840', 'US', '1', 'Washington', 'USD', 'United States dollar', '$', '.us', 'United States', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Adak\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii–Aleutian Standard Time\"},{\"zoneName\":\"America/Anchorage\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Boise\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Chicago\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Denver\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Detroit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Indianapolis\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Knox\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Marengo\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Petersburg\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Tell_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Vevay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Vincennes\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Winamac\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Juneau\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Kentucky/Louisville\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Kentucky/Monticello\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Los_Angeles\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America/Menominee\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Metlakatla\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/New_York\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Nome\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/North_Dakota/Beulah\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/North_Dakota/Center\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/North_Dakota/New_Salem\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Phoenix\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Sitka\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Yakutat\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"Pacific/Honolulu\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii–Aleutian Standard Time\"}]', '{\"kr\":\"미국\",\"br\":\"Estados Unidos\",\"pt\":\"Estados Unidos\",\"nl\":\"Verenigde Staten\",\"hr\":\"Sjedinjene Američke Države\",\"fa\":\"ایالات متحده آمریکا\",\"de\":\"Vereinigte Staaten von Amerika\",\"es\":\"Estados Unidos\",\"fr\":\"États-Unis\",\"ja\":\"アメリカ合衆国\",\"it\":\"Stati Uniti D\'America\",\"cn\":\"美国\"}', '38.00000000', '-97.00000000', '🇺🇸', 'U+1F1FA U+1F1F8', '2018-07-20 14:41:03', '2021-12-11 08:06:28', 1, 'Q30'),
(234, 'United States Minor Outlying Islands', 'UMI', '581', 'UM', '1', '', 'USD', 'United States dollar', '$', '.us', 'United States Minor Outlying Islands', 'Americas', 'Northern America', '[{\"zoneName\":\"Pacific/Midway\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"},{\"zoneName\":\"Pacific/Wake\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WAKT\",\"tzName\":\"Wake Island Time\"}]', '{\"kr\":\"미국령 군소 제도\",\"br\":\"Ilhas Menores Distantes dos Estados Unidos\",\"pt\":\"Ilhas Menores Distantes dos Estados Unidos\",\"nl\":\"Kleine afgelegen eilanden van de Verenigde Staten\",\"hr\":\"Mali udaljeni otoci SAD-a\",\"fa\":\"جزایر کوچک حاشیه‌ای ایالات متحده آمریکا\",\"de\":\"Kleinere Inselbesitzungen der Vereinigten Staaten\",\"es\":\"Islas Ultramarinas Menores de Estados Unidos\",\"fr\":\"Îles mineures éloignées des États-Unis\",\"ja\":\"合衆国領有小離島\",\"it\":\"Isole minori esterne degli Stati Uniti d\'America\",\"cn\":\"美国本土外小岛屿\"}', '0.00000000', '0.00000000', '🇺🇲', 'U+1F1FA U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 08:06:30', 1, NULL),
(235, 'Uruguay', 'URY', '858', 'UY', '598', 'Montevideo', 'UYU', 'Uruguayan peso', '$', '.uy', 'Uruguay', 'Americas', 'South America', '[{\"zoneName\":\"America/Montevideo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"UYT\",\"tzName\":\"Uruguay Standard Time\"}]', '{\"kr\":\"우루과이\",\"br\":\"Uruguai\",\"pt\":\"Uruguai\",\"nl\":\"Uruguay\",\"hr\":\"Urugvaj\",\"fa\":\"اروگوئه\",\"de\":\"Uruguay\",\"es\":\"Uruguay\",\"fr\":\"Uruguay\",\"ja\":\"ウルグアイ\",\"it\":\"Uruguay\",\"cn\":\"乌拉圭\"}', '-33.00000000', '-56.00000000', '🇺🇾', 'U+1F1FA U+1F1FE', '2018-07-20 14:41:03', '2021-12-11 08:15:36', 1, 'Q77'),
(236, 'Uzbekistan', 'UZB', '860', 'UZ', '998', 'Tashkent', 'UZS', 'Uzbekistani soʻm', 'лв', '.uz', 'O‘zbekiston', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Samarkand\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"},{\"zoneName\":\"Asia/Tashkent\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"}]', '{\"kr\":\"우즈베키스탄\",\"br\":\"Uzbequistão\",\"pt\":\"Usbequistão\",\"nl\":\"Oezbekistan\",\"hr\":\"Uzbekistan\",\"fa\":\"ازبکستان\",\"de\":\"Usbekistan\",\"es\":\"Uzbekistán\",\"fr\":\"Ouzbékistan\",\"ja\":\"ウズベキスタン\",\"it\":\"Uzbekistan\",\"cn\":\"乌兹别克斯坦\"}', '41.00000000', '64.00000000', '🇺🇿', 'U+1F1FA U+1F1FF', '2018-07-20 14:41:03', '2021-12-11 08:15:40', 1, 'Q265'),
(237, 'Vanuatu', 'VUT', '548', 'VU', '678', 'Port Vila', 'VUV', 'Vanuatu vatu', 'VT', '.vu', 'Vanuatu', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Efate\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"VUT\",\"tzName\":\"Vanuatu Time\"}]', '{\"kr\":\"바누아투\",\"br\":\"Vanuatu\",\"pt\":\"Vanuatu\",\"nl\":\"Vanuatu\",\"hr\":\"Vanuatu\",\"fa\":\"وانواتو\",\"de\":\"Vanuatu\",\"es\":\"Vanuatu\",\"fr\":\"Vanuatu\",\"ja\":\"バヌアツ\",\"it\":\"Vanuatu\",\"cn\":\"瓦努阿图\"}', '-16.00000000', '167.00000000', '🇻🇺', 'U+1F1FB U+1F1FA', '2018-07-20 14:41:03', '2021-12-11 08:15:47', 1, 'Q686'),
(238, 'Vatican City State (Holy See)', 'VAT', '336', 'VA', '379', 'Vatican City', 'EUR', 'Euro', '€', '.va', 'Vaticano', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Vatican\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"바티칸 시국\",\"br\":\"Vaticano\",\"pt\":\"Vaticano\",\"nl\":\"Heilige Stoel\",\"hr\":\"Sveta Stolica\",\"fa\":\"سریر مقدس\",\"de\":\"Heiliger Stuhl\",\"es\":\"Santa Sede\",\"fr\":\"voir Saint\",\"ja\":\"聖座\",\"it\":\"Santa Sede\",\"cn\":\"梵蒂冈\"}', '41.90000000', '12.45000000', '🇻🇦', 'U+1F1FB U+1F1E6', '2018-07-20 14:41:03', '2021-12-11 08:02:24', 1, 'Q237'),
(239, 'Venezuela', 'VEN', '862', 'VE', '58', 'Caracas', 'VEF', 'Bolívar', 'Bs', '.ve', 'Venezuela', 'Americas', 'South America', '[{\"zoneName\":\"America/Caracas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"VET\",\"tzName\":\"Venezuelan Standard Time\"}]', '{\"kr\":\"베네수엘라\",\"br\":\"Venezuela\",\"pt\":\"Venezuela\",\"nl\":\"Venezuela\",\"hr\":\"Venezuela\",\"fa\":\"ونزوئلا\",\"de\":\"Venezuela\",\"es\":\"Venezuela\",\"fr\":\"Venezuela\",\"ja\":\"ベネズエラ・ボリバル共和国\",\"it\":\"Venezuela\",\"cn\":\"委内瑞拉\"}', '8.00000000', '-66.00000000', '🇻🇪', 'U+1F1FB U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 08:16:04', 1, 'Q717'),
(240, 'Vietnam', 'VNM', '704', 'VN', '84', 'Hanoi', 'VND', 'Vietnamese đồng', '₫', '.vn', 'Việt Nam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Ho_Chi_Minh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"베트남\",\"br\":\"Vietnã\",\"pt\":\"Vietname\",\"nl\":\"Vietnam\",\"hr\":\"Vijetnam\",\"fa\":\"ویتنام\",\"de\":\"Vietnam\",\"es\":\"Vietnam\",\"fr\":\"Viêt Nam\",\"ja\":\"ベトナム\",\"it\":\"Vietnam\",\"cn\":\"越南\"}', '16.16666666', '107.83333333', '🇻🇳', 'U+1F1FB U+1F1F3', '2018-07-20 14:41:03', '2021-12-11 08:16:14', 1, 'Q881'),
(241, 'Virgin Islands (British)', 'VGB', '092', 'VG', '+1-284', 'Road Town', 'USD', 'United States dollar', '$', '.vg', 'British Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Tortola\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"영국령 버진아일랜드\",\"br\":\"Ilhas Virgens Britânicas\",\"pt\":\"Ilhas Virgens Britânicas\",\"nl\":\"Britse Maagdeneilanden\",\"hr\":\"Britanski Djevičanski Otoci\",\"fa\":\"جزایر ویرجین بریتانیا\",\"de\":\"Britische Jungferninseln\",\"es\":\"Islas Vírgenes del Reino Unido\",\"fr\":\"Îles Vierges britanniques\",\"ja\":\"イギリス領ヴァージン諸島\",\"it\":\"Isole Vergini Britanniche\",\"cn\":\"圣文森特和格林纳丁斯\"}', '18.43138300', '-64.62305000', '🇻🇬', 'U+1F1FB U+1F1EC', '2018-07-20 14:41:03', '2021-12-11 08:06:33', 1, NULL),
(242, 'Virgin Islands (US)', 'VIR', '850', 'VI', '+1-340', 'Charlotte Amalie', 'USD', 'United States dollar', '$', '.vi', 'United States Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Thomas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"미국령 버진아일랜드\",\"br\":\"Ilhas Virgens Americanas\",\"pt\":\"Ilhas Virgens Americanas\",\"nl\":\"Verenigde Staten Maagdeneilanden\",\"fa\":\"جزایر ویرجین آمریکا\",\"de\":\"Amerikanische Jungferninseln\",\"es\":\"Islas Vírgenes de los Estados Unidos\",\"fr\":\"Îles Vierges des États-Unis\",\"ja\":\"アメリカ領ヴァージン諸島\",\"it\":\"Isole Vergini americane\",\"cn\":\"维尔京群岛（美国）\"}', '18.34000000', '-64.93000000', '🇻🇮', 'U+1F1FB U+1F1EE', '2018-07-20 14:41:03', '2021-12-11 08:16:20', 1, NULL),
(243, 'Wallis And Futuna Islands', 'WLF', '876', 'WF', '681', 'Mata Utu', 'XPF', 'CFP franc', '₣', '.wf', 'Wallis et Futuna', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Wallis\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WFT\",\"tzName\":\"Wallis & Futuna Time\"}]', '{\"kr\":\"왈리스 푸투나\",\"br\":\"Wallis e Futuna\",\"pt\":\"Wallis e Futuna\",\"nl\":\"Wallis en Futuna\",\"hr\":\"Wallis i Fortuna\",\"fa\":\"والیس و فوتونا\",\"de\":\"Wallis und Futuna\",\"es\":\"Wallis y Futuna\",\"fr\":\"Wallis-et-Futuna\",\"ja\":\"ウォリス・フツナ\",\"it\":\"Wallis e Futuna\",\"cn\":\"瓦利斯群岛和富图纳群岛\"}', '-13.30000000', '-176.20000000', '🇼🇫', 'U+1F1FC U+1F1EB', '2018-07-20 14:41:03', '2021-12-11 08:16:25', 1, NULL),
(244, 'Western Sahara', 'ESH', '732', 'EH', '212', 'El-Aaiun', 'MAD', 'Moroccan Dirham', 'MAD', '.eh', 'الصحراء الغربية', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/El_Aaiun\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"kr\":\"서사하라\",\"br\":\"Saara Ocidental\",\"pt\":\"Saara Ocidental\",\"nl\":\"Westelijke Sahara\",\"hr\":\"Zapadna Sahara\",\"fa\":\"جمهوری دموکراتیک عربی صحرا\",\"de\":\"Westsahara\",\"es\":\"Sahara Occidental\",\"fr\":\"Sahara Occidental\",\"ja\":\"西サハラ\",\"it\":\"Sahara Occidentale\",\"cn\":\"西撒哈拉\"}', '24.50000000', '-13.00000000', '🇪🇭', 'U+1F1EA U+1F1ED', '2018-07-20 14:41:03', '2021-12-11 08:16:40', 1, NULL),
(245, 'Yemen', 'YEM', '887', 'YE', '967', 'Sanaa', 'YER', 'Yemeni rial', '﷼', '.ye', 'اليَمَن', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Aden\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"예멘\",\"br\":\"Iêmen\",\"pt\":\"Iémen\",\"nl\":\"Jemen\",\"hr\":\"Jemen\",\"fa\":\"یمن\",\"de\":\"Jemen\",\"es\":\"Yemen\",\"fr\":\"Yémen\",\"ja\":\"イエメン\",\"it\":\"Yemen\",\"cn\":\"也门\"}', '15.00000000', '48.00000000', '🇾🇪', 'U+1F1FE U+1F1EA', '2018-07-20 14:41:03', '2021-12-11 08:16:48', 1, 'Q805'),
(246, 'Zambia', 'ZMB', '894', 'ZM', '260', 'Lusaka', 'ZMW', 'Zambian kwacha', 'ZK', '.zm', 'Zambia', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Lusaka\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"잠비아\",\"br\":\"Zâmbia\",\"pt\":\"Zâmbia\",\"nl\":\"Zambia\",\"hr\":\"Zambija\",\"fa\":\"زامبیا\",\"de\":\"Sambia\",\"es\":\"Zambia\",\"fr\":\"Zambie\",\"ja\":\"ザンビア\",\"it\":\"Zambia\",\"cn\":\"赞比亚\"}', '-15.00000000', '30.00000000', '🇿🇲', 'U+1F1FF U+1F1F2', '2018-07-20 14:41:03', '2021-12-11 08:16:53', 1, 'Q953'),
(247, 'Zimbabwe', 'ZWE', '716', 'ZW', '263', 'Harare', 'ZWL', 'Zimbabwe Dollar', '$', '.zw', 'Zimbabwe', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Harare\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"짐바브웨\",\"br\":\"Zimbabwe\",\"pt\":\"Zimbabué\",\"nl\":\"Zimbabwe\",\"hr\":\"Zimbabve\",\"fa\":\"زیمباوه\",\"de\":\"Simbabwe\",\"es\":\"Zimbabue\",\"fr\":\"Zimbabwe\",\"ja\":\"ジンバブエ\",\"it\":\"Zimbabwe\",\"cn\":\"津巴布韦\"}', '-20.00000000', '30.00000000', '🇿🇼', 'U+1F1FF U+1F1FC', '2018-07-20 14:41:03', '2021-12-11 08:17:10', 1, 'Q954'),
(248, 'Kosovo', 'XKX', '926', 'XK', '383', 'Pristina', 'EUR', 'Euro', '€', '.xk', 'Republika e Kosovës', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"코소보\",\"cn\":\"科索沃\"}', '42.56129090', '20.34030350', '🇽🇰', 'U+1F1FD U+1F1F0', '2020-08-15 10:03:50', '2021-12-11 07:56:38', 1, 'Q1246'),
(249, 'Curaçao', 'CUW', '531', 'CW', '599', 'Willemstad', 'ANG', 'Netherlands Antillean guilder', 'ƒ', '.cw', 'Curaçao', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Curacao\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"퀴라소\",\"br\":\"Curaçao\",\"pt\":\"Curaçao\",\"nl\":\"Curaçao\",\"fa\":\"کوراسائو\",\"de\":\"Curaçao\",\"fr\":\"Curaçao\",\"it\":\"Curaçao\",\"cn\":\"库拉索\"}', '12.11666700', '-68.93333300', '🇨🇼', 'U+1F1E8 U+1F1FC', '2020-10-25 09:24:20', '2021-12-11 07:31:45', 1, 'Q25279'),
(250, 'Sint Maarten (Dutch part)', 'SXM', '534', 'SX', '1721', 'Philipsburg', 'ANG', 'Netherlands Antillean guilder', 'ƒ', '.sx', 'Sint Maarten', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"신트마르턴\",\"br\":\"Sint Maarten\",\"pt\":\"São Martinho\",\"nl\":\"Sint Maarten\",\"fa\":\"سینت مارتن\",\"de\":\"Sint Maarten (niederl. Teil)\",\"fr\":\"Saint Martin (partie néerlandaise)\",\"it\":\"Saint Martin (parte olandese)\",\"cn\":\"圣马丁岛（荷兰部分）\"}', '18.03333300', '-63.05000000', '🇸🇽', 'U+1F1F8 U+1F1FD', '2020-12-05 07:33:39', '2021-12-11 08:11:24', 1, 'Q26273');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `CouponName` varchar(255) NOT NULL,
  `Code` varchar(255) NOT NULL,
  `CouponTypeId` int(11) NOT NULL,
  `Discount` double(10,2) DEFAULT NULL,
  `TotalAmount` double(10,2) DEFAULT NULL,
  `DateStart` date DEFAULT NULL,
  `DateEnd` date DEFAULT NULL,
  `UsesPerCoupon` bigint(20) DEFAULT NULL,
  `UsesPerCustomer` bigint(20) DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `CouponName`, `Code`, `CouponTypeId`, `Discount`, `TotalAmount`, `DateStart`, `DateEnd`, `UsesPerCoupon`, `UsesPerCustomer`, `Status`, `created_at`, `updated_at`) VALUES
(1, 'saree', 'saree123', 1, 50.00, 1.00, '2023-01-01', '2023-11-30', 50, NULL, 1, '2023-01-23 22:26:10', '2023-09-04 11:35:38'),
(2, 'anakali', 'ana321', 1, 20.00, 1.00, '2023-01-15', '2023-12-30', 50, NULL, 1, '2023-01-25 15:06:13', '2023-09-04 11:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `id` int(11) NOT NULL,
  `CouponId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_categories`
--

INSERT INTO `coupon_categories` (`id`, `CouponId`, `CategoryId`, `created_at`, `updated_at`) VALUES
(24, 1, 8, '2023-09-04 11:35:38', '2023-09-04 11:35:38'),
(25, 1, 7, '2023-09-04 11:35:38', '2023-09-04 11:35:38'),
(28, 2, 7, '2023-09-04 12:50:16', '2023-09-04 12:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `id` int(11) NOT NULL,
  `CouponId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_types`
--

CREATE TABLE `coupon_types` (
  `id` int(11) NOT NULL,
  `CouponType` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_types`
--

INSERT INTO `coupon_types` (`id`, `CouponType`, `created_at`, `updated_at`) VALUES
(1, 'Percentage', '2019-09-26 10:33:25', '2019-09-26 10:33:25'),
(2, 'Amount', '2023-04-03 08:06:53', '2023-04-03 08:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `designers`
--

CREATE TABLE `designers` (
  `id` int(11) NOT NULL,
  `designer_name` varchar(50) NOT NULL,
  `designer_slug` varchar(176) DEFAULT NULL,
  `description` text NOT NULL,
  `media_name` varchar(255) NOT NULL,
  `title_tag` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designers`
--

INSERT INTO `designers` (`id`, `designer_name`, `designer_slug`, `description`, `media_name`, `title_tag`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Rajdeep Ranawat', 'Rajdeep-Ranawat', 'Rajdeep Ranawat completed his schooling at Lawrence School, Sanawar before pursuing fashion at the National Institute of Fashion Design in Delhi. As Rajdeep was a self-taught child artist, his father who was a Lt. General in the Indian Army insisted he pursue artistic talents. His father honed his skills and supported him to channel his artistry into designing. Rajdeep loves spending his time painting, traveling, and watching movies. He is a nature lover at heart.', '1672301697.webp', 'Rajdeep Ranawat', 'Rajdeep Ranawat', '2022-12-29 01:22:05', '2022-12-29 15:14:57'),
(2, 'tarun tahiliani', 'tarun-tahiliani', 'Tarun Tahiliani has always been in love with fashion and started putting his imagination on paper when he was in school. His high fashion models and illustrations won him the ‘Best Artist’ prize in his childhood days. After that, there was no stopping him! He went on to study business at Wharton School of The University of Pennsylvania and attained a professional degree in fashion from the Fashion Institute of Technology in New York.', '1672301900.webp', 'tarun tahiliani', 'tarun tahiliani', '2022-12-29 14:46:24', '2022-12-29 15:18:20'),
(3, 'Gopi Vaid & Arnaz Soonawalla', 'Gopi-Vaid', 'Gopi, co-founder of label Gopi Vaid was born in Ahmedabad in a family with a renowned background in textile making. She grew up in an environment that was very different from other children’s, and her toys would be hand blocks and pigments. This is where she learnt to appreciate Indian arts & crafts. Gopi met fellow designer and co-founder Arnaz Soonawalla in school. The duo reconnected with each other after their weddings and Arnaz came to know that Gopi had been harbouring a dream of launching her own label someday.', '1672305410.jpg', 'Gopi Vaid & Arnaz Soonawalla', 'Gopi Vaid & Arnaz Soonawalla', '2022-12-29 16:16:50', '2022-12-29 16:16:50'),
(4, 'Amit Aggarwal', 'Amit-Aggarwal', 'Amit Aggarwal is a leading Delhi-based designer, and known for his sculptural shapes and ingenious application of industrial materials. Using hand techniques, his line features pieces that represent the metamorphosis of raw influences, both fantastical and mundane.', '1672305927.jpg', 'Amit Aggarwal', 'Amit Aggarwal', '2022-12-29 16:25:27', '2022-12-29 16:25:27'),
(5, 'Siddhartha Bansal', 'Siddhartha-Bansal', 'The designer has a vision to offer feminine cuts rendered in various textile crafts, fused fresh color combinations and intricate detailed motifs.', '1672306366.webp', 'Siddhartha Bansal', 'Siddhartha Bansal', '2022-12-29 16:32:46', '2022-12-29 16:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `discount_offers`
--

CREATE TABLE `discount_offers` (
  `id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `discount_offer` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount_offers`
--

INSERT INTO `discount_offers` (`id`, `discount`, `discount_offer`, `created_at`, `updated_at`) VALUES
(1, 0, '<h2>10% OFF YOUR FIRST ORDE</h2>\r\n\r\n<p>Sign up to receive 10% off your first purchase as well as the latest updates on new arrivals, exclusive promotions and events.</p>', '2022-04-04 14:15:11', '2022-04-04 14:15:11'),
(2, 0, '<h2>10% OFF YOUR FIRST ORDE</h2>\r\n\r\n<p>Sign up to receive 10% off your first purchase as well as the latest updates on new arrivals, exclusive promotions and events. 1</p>', '2022-04-04 14:15:14', '2022-04-04 14:15:14'),
(3, 0, '<h2>10% OFF YOUR FIRST ORDE</h2>\r\n\r\n<p>Sign up to receive 10% off your first purchase as well as the latest updates on new arrivals, exclusive promotions and events.</p>', '2022-04-04 14:15:24', '2022-04-04 14:15:24'),
(4, 0, '<h2>10% OFF YOUR FIRST ORDE</h2>\r\n\r\n<p>Sign up to receive 10% off your first purchase as well as the latest updates on new arrivals, exclusive promotions and events.</p>', '2022-04-04 14:25:44', '2022-04-04 14:25:44'),
(5, 0, '<h2>11% OFF YOUR FIRST ORDE</h2>\r\n\r\n<p>Sign up to receive 11% off your first purchase as well as the latest updates on new arrivals, exclusive promotions and events.</p>', '2022-04-04 15:25:36', '2022-04-04 15:25:36'),
(6, 15, '<h2>10% OFF YOUR FIRST ORDE</h2>\r\n\r\n<p>Sign up to receive 10% off your first purchase as well as the latest updates on new arrivals, exclusive promotions and events.</p>', '2022-04-04 15:27:23', '2022-04-04 19:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `fabrics`
--

CREATE TABLE `fabrics` (
  `id` int(11) NOT NULL,
  `fabric` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fabrics`
--

INSERT INTO `fabrics` (`id`, `fabric`, `created_at`, `updated_at`) VALUES
(1, 'Linen', '2021-12-03 09:36:49', '2021-12-03 09:36:49'),
(2, 'Cotton', '2021-12-03 09:36:49', '2021-12-03 09:36:49'),
(3, 'Silk', '2021-12-03 09:36:49', '2021-12-03 09:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, '<h2>HAVE YOU RECEIVED MY RETURN</h2>', '<p>As soon as we receive your return back into our warehouse, you will receive an email confirmation. Please allow 3-5 business days for our team to process your return and your accounts to be credited.</p>', '2022-01-07 19:03:22', '2022-01-13 12:56:59'),
(2, '<h2>IF AN ITEM IS OUT OF STOCK, CAN I BE NOTIFIED IF IT RETURNS?</h2>', '<p>Yes, you can be! Go to the product you wish to purchase, select the colour and size and when the style is out-of-stock an email address field will appear. Once you sign up, you will be notified once we receive delivery.</p>', '2022-01-07 19:05:51', '2022-01-13 13:08:11'),
(3, '<h2>MY VOUCHER/STORE CREDIT HAS EXPIRED, CAN IT BE EXTENDED? &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h2>', '<p>Yes! We are more than happy to extend your voucher/store credit if it is requested within 4 weeks of expiration.</p>', '2022-01-07 19:05:51', '2022-01-13 13:09:27'),
(4, '<h2>HOW DO I USE MY STORE CREDIT?</h2>', '<p>If you don&rsquo;t have an account with us, you will need to set one up in order to use your credit note.</p>\r\n\r\n<p>To create an account follow this link:&nbsp;<a href=\"https://appnosoft.com/sirthelabel/register\">https://appnosoft.com/sirthelabel/register</a></p>\r\n\r\n<p>Fill out the fields and create a password. If it mentions your password is incorrect this means you have an account so you may need to click&nbsp;forgot password,&nbsp;which you can then reset and follow the prompts via an email notification.&nbsp;</p>', '2022-01-07 19:06:37', '2022-01-13 13:12:06'),
(5, '<h2>WHAT PAYMENT METHODS DO YOU ACCEPT?</h2>', '<p>We are currently accepting the below methods as payment:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Visa&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Mastercard</p>\r\n	</li>\r\n	<li>\r\n	<p>Amex</p>\r\n	</li>\r\n	<li>\r\n	<p>Paypal</p>\r\n	</li>\r\n	<li>\r\n	<p>Afterpay</p>\r\n	</li>\r\n	<li>\r\n	<p>SIR Gift Voucher&nbsp;</p>\r\n	</li>\r\n</ul>', '2022-01-07 19:07:12', '2022-01-13 13:13:39'),
(6, '<h2>HOW LONG ARE GIFT CARDS VALID FOR?</h2>', '<p>SIR Gift Cards are valid for 3 years from the date of purchase. E-Gift Cards will receive an email notification with code to use at checkout, Physical Gift Cards will have code provided on the back of card.</p>', '2022-01-07 19:07:12', '2022-01-13 13:14:33'),
(7, '<h2>HOW CAN I TRACK MY ITEM?</h2>', '<p>Once you order is dispatched you will receive shipping confirmation, along with tracking details for your order.</p>', '2022-01-07 19:07:51', '2022-01-13 13:15:00'),
(8, '<h2>WHAT IS AFTERPAY?</h2>', '<p>Afterpay is an interest free payment plan that we offer on all of our Australian orders. For more information please view our info page.</p>', '2022-01-07 19:07:51', '2022-01-13 13:15:29'),
(9, '<p>CAN I CHANGE MY ORDER?</p>', '<p>Our warehouse starts processing orders immediately after they are placed, we cannot guarantee that your requested changes can be made to your order prior to shipment. Please make sure you choose your items carefully and add the correct shipping before placing your order. If you have an urgent change contact our team straight away and we&rsquo;ll try and assist with any change requirements as once the order has left our premises we are not able to make any changes.</p>', '2022-01-13 12:54:50', '2022-01-13 13:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `feature` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `feature`, `created_at`, `updated_at`) VALUES
(1, 'Award-winning', '2021-09-20 04:38:06', '2021-09-20 04:38:27'),
(2, 'Gift Box', '2021-09-20 04:38:06', '2021-09-20 04:38:40'),
(3, 'Certified Organic', '2021-09-20 05:57:49', '2021-09-20 05:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `filter_categories`
--

CREATE TABLE `filter_categories` (
  `id` int(11) NOT NULL,
  `filter_category` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filter_categories`
--

INSERT INTO `filter_categories` (`id`, `filter_category`, `created_at`, `updated_at`) VALUES
(1, 'Mini dresses', '2021-12-03 10:43:34', '2021-12-03 10:43:34'),
(2, 'Midi dresses', '2021-12-03 10:43:34', '2021-12-03 10:43:34'),
(3, 'Maxi dresses', '2021-12-03 10:44:05', '2021-12-03 10:44:05'),
(4, 'Backless dresses', '2021-12-03 10:44:05', '2021-12-03 10:44:05'),
(5, 'Knitted dresses', '2021-12-03 10:44:38', '2021-12-03 10:44:38'),
(6, 'Sleeved tops', '2021-12-03 10:44:38', '2021-12-03 10:44:38'),
(7, 'Bra & crop tops', '2021-12-03 10:46:45', '2021-12-03 10:46:45'),
(8, 'Bodysuits', '2021-12-03 10:46:45', '2021-12-03 10:46:45'),
(9, 'Sleeveless tops', '2021-12-03 10:47:09', '2021-12-03 10:47:09'),
(10, 'Mini skirts', '2021-12-03 10:47:09', '2021-12-03 10:47:09'),
(11, 'Midi skirts', '2021-12-03 10:47:41', '2021-12-03 10:47:41'),
(12, 'Maxi skirts', '2021-12-03 10:47:41', '2021-12-03 10:47:41'),
(13, 'Mini jumpsuits', '2021-12-03 10:48:04', '2021-12-03 10:48:04'),
(14, 'Full length jumpsuits', '2021-12-03 10:48:04', '2021-12-03 10:48:04'),
(15, 'Straight leg pants', '2021-12-03 10:48:27', '2021-12-03 10:48:27'),
(16, 'Wide leg pants', '2021-12-03 10:48:27', '2021-12-03 10:48:27'),
(17, 'Sweaters', '2021-12-03 10:48:49', '2021-12-03 10:48:49'),
(18, 'Jackets', '2021-12-03 10:48:49', '2021-12-03 10:48:49'),
(19, 'Coats', '2021-12-03 10:49:00', '2021-12-03 10:49:00'),
(20, 'Scarves', '2021-12-03 10:49:25', '2021-12-03 10:49:25'),
(21, 'Casual pants', '2021-12-03 10:49:25', '2021-12-03 10:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_terms`
--

CREATE TABLE `flash_sale_terms` (
  `id` int(11) NOT NULL,
  `flash_sale_terms` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flash_sale_terms`
--

INSERT INTO `flash_sale_terms` (`id`, `flash_sale_terms`, `created_at`, `updated_at`) VALUES
(1, '<h1>FLASH SALE TERMS</h1>\r\n\r\n<p>Offer starts 7am AEDT 15th January&nbsp;and ends 11:59pm AEDT 18th&nbsp;January 2022. Use code&nbsp;<strong>FLASH20</strong>&nbsp;at checkout for 20% off to be applied. This offer is valid on selected styles and colours which are marked with FLASH SALE | 20% OFF.</p>\r\n\r\n<p>Items purchased during our&nbsp;Flash Sale&nbsp;offer can only be returned for either a store credit or exchange. Orders placed before or after our Flash&nbsp;Sale&nbsp;event cannot have the discount applied to their order.&nbsp;</p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<p><strong>SHIPPING</strong></p>\r\n\r\n<p>Please allow an additional 3-5 days for our team to dispatch your order. Normal shipping timeframes apply. Orders from our Flash Sale will be dispatched in order of them being placed.&nbsp;</p>\r\n\r\n<p>For more information regarding shipping, please&nbsp;<a href=\"https://appnosoft.com/sirthelabel/pages/shipping\">click here.</a></p>\r\n\r\n<p><strong>RETURNS</strong></p>\r\n\r\n<p>Items purchased during the&nbsp;Flash Sale&nbsp;can only be returned for either a store credit or exchange.</p>\r\n\r\n<p>For more information regarding returns, or how to make a return, please&nbsp;<a href=\"https://appnosoft.com/sirthelabel/pages/returns\">click here.</a></p>', '2022-03-28 17:43:14', '2022-03-28 17:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `gifts_by_occasions`
--

CREATE TABLE `gifts_by_occasions` (
  `id` int(11) NOT NULL,
  `gifts_by_occasion` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gifts_by_occasions`
--

INSERT INTO `gifts_by_occasions` (`id`, `gifts_by_occasion`, `created_at`, `updated_at`) VALUES
(1, 'Top 50 Gift Guide', '2021-09-25 09:18:41', '2021-09-25 09:18:41'),
(2, 'Weddings & Engagements', '2021-09-25 09:18:41', '2021-09-25 09:20:07'),
(3, 'Clients', '2021-09-25 09:18:59', '2021-09-25 09:18:59'),
(4, 'Birthday & Anniversary', '2021-09-25 09:18:59', '2021-09-25 09:18:59'),
(5, 'Congratulations & Thank You', '2021-09-25 09:19:13', '2021-09-25 09:19:13'),
(6, 'Growing Family', '2021-09-25 09:19:13', '2021-09-25 09:19:13'),
(7, 'Housewarming', '2021-09-25 09:19:29', '2021-09-25 09:19:29'),
(8, 'Groomsmen', '2021-09-25 09:19:29', '2021-09-25 09:19:29'),
(9, 'Bridesmaids', '2021-09-25 09:19:43', '2021-09-25 09:19:43'),
(10, 'Retirement', '2021-09-25 09:19:43', '2021-09-25 09:19:43'),
(11, 'College Graduation', '2021-09-25 09:19:52', '2021-09-25 09:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `name`, `email`, `phone_number`, `message`, `created_at`, `updated_at`) VALUES
(1, 'ravindra parihar', 'parihar.ravindra23@gmail.com', '+919907629428', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2022-03-28 16:26:43', '2022-03-28 16:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `make_a_return_steps`
--

CREATE TABLE `make_a_return_steps` (
  `id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `step` text DEFAULT NULL,
  `step_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `make_a_return_steps`
--

INSERT INTO `make_a_return_steps` (`id`, `return_id`, `step`, `step_image`, `created_at`, `updated_at`) VALUES
(1, 1, '<h3>STEP 1</h3>\r\n\r\n<p>Item/s must be returned within 14 days of delivery.</p>', '1648706605_download.jpg', '2022-03-31 13:03:25', '2022-03-31 13:03:25'),
(2, 1, '<h3>STEP 2</h3>\r\n\r\n<p>Item must be unworn with original tags attached.</p>', '1648706605_box.png', '2022-03-31 13:03:25', '2022-03-31 13:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `need_helps`
--

CREATE TABLE `need_helps` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `chat_link` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `need_helps`
--

INSERT INTO `need_helps` (`id`, `email`, `phone`, `chat_link`, `created_at`, `updated_at`) VALUES
(1, 'info@sirthelabel.com', '+61 2 9191 0245', 'https://appnosoft.com/sirthelabel/pages/contact-us', '2022-04-04 11:56:18', '2022-04-04 11:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `note_footers`
--

CREATE TABLE `note_footers` (
  `id` int(11) NOT NULL,
  `note_footer` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `note_footers`
--

INSERT INTO `note_footers` (`id`, `note_footer`, `created_at`, `updated_at`) VALUES
(1, '<p><em>SIR. acknowledges the Gadigal People of the Eora Nation as the Traditional Custodians of the land where we come together each day. We pay our respects to elders past, present and emerging, extending our acknowledgement to all Indigenous Australians as the traditional owners of country.</em></p>', '2022-04-01 17:40:04', '2022-04-01 17:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3867d1ff2eee72ca9e474fef577dd2912c4f3b47201bc26629bee7087e1d8eccc84fe0252f235a81', 3, 1, 'Laravel', '[]', 0, '2021-10-30 12:10:25', '2021-10-30 12:10:25', '2022-10-30 05:10:25'),
('d206bad83eb1e75015aa54310f06241f1785397a8f6f477fca3787e586e9a6a0970a5a66c54ee4b8', 3, 1, 'Laravel', '[]', 0, '2021-10-30 14:01:30', '2021-10-30 14:01:30', '2022-10-30 07:01:30'),
('89467654ac554044e40bda795b31fd1c4b4e93078fb7c1ea16b781297cb8d8f3bbd97d042189c367', 3, 1, 'Laravel', '[]', 0, '2021-10-30 14:02:08', '2021-10-30 14:02:08', '2022-10-30 07:02:08'),
('3f7ed9ebd33eb8204dbe4d99acabb4d1b34523b27738d0ca9e16f0c1e577f2fa8a191441075dc2af', 3, 1, 'Laravel', '[]', 0, '2021-11-01 16:37:59', '2021-11-01 16:37:59', '2022-11-01 09:37:59'),
('a3a49044d22582b5c05127942327f7af8ce24c8a356f9a9f61d597eabbfdbcf972705f84f357c51b', 3, 1, 'Laravel', '[]', 0, '2021-11-01 16:38:34', '2021-11-01 16:38:34', '2022-11-01 09:38:34'),
('b08f214c3f01455dcde50cc10d6ef28388e913b3630b7741d97f924a22c544a542c37800c7280ce6', 3, 1, 'Laravel', '[]', 0, '2021-11-01 19:26:00', '2021-11-01 19:26:00', '2022-11-01 12:26:00'),
('02d229a9fe3f2dc75480c544e06451de5db2b7b58db601a0bf079111ad68166690454ce2e70d6554', 3, 1, 'Laravel', '[]', 0, '2021-11-02 11:41:57', '2021-11-02 11:41:57', '2022-11-02 04:41:57'),
('1f2e4971b8225c72ece2143a4c018c2b23dbbfb65af220abe85138380abfc79473689d5928d9f510', 3, 1, 'Laravel', '[]', 0, '2021-11-02 19:47:19', '2021-11-02 19:47:19', '2022-11-02 12:47:19'),
('132ccd36490e379a8e010e923ef95ece6293925230993f73d054ce403961eb81d2e8ef08238ebe82', 2, 1, 'Laravel', '[]', 0, '2021-11-08 14:16:21', '2021-11-08 14:16:21', '2022-11-08 07:16:21'),
('36d18f0a95f2730a472c4694a1c49436cb893d0056bd829c9b1ca4bd0fdaaeedd820c5562d406264', 3, 1, 'Laravel', '[]', 0, '2021-11-08 15:44:46', '2021-11-08 15:44:46', '2022-11-08 08:44:46'),
('a551578315d34e1acf7b27d0749d6f4132727c716adb7925155e9ed65358f4fe3cf878c3a73ccd5b', 3, 1, 'Laravel', '[]', 0, '2021-11-08 16:11:06', '2021-11-08 16:11:06', '2022-11-08 09:11:06'),
('547166b761d4fc744e94c48c69442662683a327bb77b6a82be82cb2a94fceaddca715fb29d47c353', 2, 1, 'Laravel', '[]', 0, '2021-11-08 16:21:45', '2021-11-08 16:21:45', '2022-11-08 09:21:45'),
('30f207de718d7db494ba27ef488647818894a615b334efd2c50e957cfc91ae4437fbf131adae6420', 3, 1, 'Laravel', '[]', 0, '2021-11-08 16:22:09', '2021-11-08 16:22:09', '2022-11-08 09:22:09'),
('2077075d95beb78ff317d61b3919877d2c8ce229f9005a9a2d8004a4022264ca51080c17ba1b2beb', 3, 1, 'Laravel', '[]', 0, '2021-11-08 16:24:10', '2021-11-08 16:24:10', '2022-11-08 09:24:10'),
('e94c1e1ff300f0c72ca44d9c7c359075f403bee8176b47941f0e5793f2585c48f8445d1f600f0c47', 1, 1, 'Laravel', '[]', 0, '2021-11-08 21:21:58', '2021-11-08 21:21:58', '2022-11-08 14:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '9Bd7lTMUYMXYfFEzwC9dCRi3mcuglTDHuA5Q8b1r', 'http://localhost', 1, 0, 0, '2021-10-28 15:48:37', '2021-10-28 15:48:37'),
(2, NULL, 'Laravel Password Grant Client', 'yTyvbcwAbYKMZKxP5ankNoXhE6ARxDGs8NR4SPzG', 'http://localhost', 0, 1, 0, '2021-10-28 15:48:37', '2021-10-28 15:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-10-28 15:48:37', '2021-10-28 15:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occasions`
--

CREATE TABLE `occasions` (
  `id` int(11) NOT NULL,
  `occasion` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `occasions`
--

INSERT INTO `occasions` (`id`, `occasion`, `created_at`, `updated_at`) VALUES
(1, 'Bridesmaid & Groomsmen', '2022-12-28 13:58:40', '2022-12-28 13:58:40'),
(2, 'Cocktail Party', '2022-12-28 13:58:40', '2022-12-28 13:58:40'),
(3, 'Engagement', '2022-12-28 13:58:40', '2022-12-28 13:58:40'),
(4, 'Wedding', '2022-12-28 13:58:40', '2022-12-28 13:58:40'),
(5, 'Bridal', '2022-12-28 13:58:40', '2022-12-28 13:58:40'),
(6, 'Ethnic Clothing', '2022-12-28 13:58:40', '2022-12-28 13:58:40'),
(7, 'Contemporary Clothing', '2022-12-28 13:58:40', '2022-12-28 13:58:40'),
(8, 'Navratri', '2022-12-28 14:14:12', '2022-12-28 14:14:12'),
(9, 'Eid', '2022-12-28 14:14:12', '2022-12-28 14:14:12'),
(10, 'Eid Gift Edit', '2022-12-28 14:14:12', '2022-12-28 14:14:12'),
(11, 'Party', '2022-12-28 14:14:12', '2022-12-28 14:14:12'),
(12, 'Mehendi Function', '2022-12-28 14:14:12', '2022-12-28 14:14:12'),
(13, 'Reception Party', '2022-12-28 14:14:12', '2022-12-28 14:14:12'),
(14, 'Pooja', '2022-12-28 14:14:12', '2022-12-28 14:14:12'),
(15, 'Bridesmaid Collection', '2022-12-28 14:14:12', '2022-12-28 14:14:12'),
(16, 'Independence Day', '2022-12-28 14:15:39', '2022-12-28 14:15:39'),
(17, 'Ganesh Chaturthi', '2022-12-28 14:15:39', '2022-12-28 14:15:39'),
(18, 'Raksha Bandhan', '2022-12-28 14:15:39', '2022-12-28 14:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `UserId` int(11) UNSIGNED DEFAULT NULL,
  `UserBillingInformationId` int(10) UNSIGNED DEFAULT NULL,
  `UserShippingInformationId` int(11) NOT NULL,
  `BillingAddress` varchar(255) DEFAULT NULL,
  `PaymentMethod` varchar(255) NOT NULL,
  `Total` double(10,2) NOT NULL,
  `GrandTotal` double(10,2) NOT NULL,
  `DiscountAmount` double(10,2) DEFAULT NULL,
  `CouponId` int(11) DEFAULT NULL,
  `CouponCode` varchar(255) DEFAULT NULL,
  `Discount` double(10,2) DEFAULT NULL,
  `DiscountType` varchar(255) DEFAULT NULL,
  `FirstOrderDiscountAmount` double(10,2) DEFAULT NULL,
  `FirstOrderDiscount` double(10,2) DEFAULT NULL,
  `TotalAmount` double(10,2) DEFAULT NULL,
  `OrderStatus` int(11) NOT NULL,
  `AdminOrderStatus` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `UserId`, `UserBillingInformationId`, `UserShippingInformationId`, `BillingAddress`, `PaymentMethod`, `Total`, `GrandTotal`, `DiscountAmount`, `CouponId`, `CouponCode`, `Discount`, `DiscountType`, `FirstOrderDiscountAmount`, `FirstOrderDiscount`, `TotalAmount`, `OrderStatus`, `AdminOrderStatus`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 0, 'Same as shipping address', 'Pay With Online', 57417.50, 38377.50, 19040.00, 1, 'test123', 50.00, NULL, NULL, NULL, 1.00, 3, 1, '2023-01-25 14:02:02', '2023-01-25 14:03:22'),
(2, 2, NULL, 0, 'Same as shipping address', 'Pay With Online', 38675.00, 38675.00, 0.00, NULL, '', 0.00, NULL, NULL, NULL, 0.00, 3, 1, '2023-01-25 14:45:22', '2023-01-25 14:45:44'),
(3, 2, NULL, 0, 'Same as shipping address', 'Pay With Online', 46800.00, 46800.00, 0.00, NULL, '', 0.00, NULL, NULL, NULL, 0.00, 4, 1, '2023-01-25 14:46:27', '2023-01-25 14:46:27'),
(4, 2, NULL, 0, 'Same as shipping address', 'Pay With Online', 23400.00, 23400.00, 0.00, NULL, '', 0.00, NULL, NULL, NULL, 0.00, 3, 1, '2023-03-03 01:47:08', '2023-03-03 01:47:30'),
(5, 2, NULL, 0, 'Same as shipping address', 'Pay With Online', 38080.00, 30464.00, 7616.00, 2, 'ana321', 20.00, 'coupon', NULL, NULL, 1.00, 3, 1, '2023-04-07 02:35:20', '2023-04-07 02:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `ProductSizeId` int(11) DEFAULT NULL,
  `ProductColorId` int(11) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` double(10,2) NOT NULL,
  `ProductDiscount` double(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `OrderId`, `ProductId`, `ProductSizeId`, `ProductColorId`, `Quantity`, `Price`, `ProductDiscount`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 5, NULL, 1, 19337.50, 30.00, '2023-01-25 14:02:02', '2023-01-25 14:02:02'),
(2, 1, 12, 6, NULL, 2, 19040.00, 30.00, '2023-01-25 14:02:02', '2023-01-25 14:02:02'),
(3, 2, 6, 5, NULL, 2, 19337.50, 30.00, '2023-01-25 14:45:22', '2023-01-25 14:45:22'),
(4, 3, 10, 6, NULL, 2, 23400.00, 20.00, '2023-01-25 14:46:27', '2023-01-25 14:46:27'),
(5, 4, 10, 6, NULL, 1, 23400.00, 20.00, '2023-03-03 01:47:08', '2023-03-03 01:47:08'),
(6, 5, 12, 6, NULL, 2, 19040.00, 30.00, '2023-04-07 02:35:20', '2023-04-07 02:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `order_shipment_detail`
--

CREATE TABLE `order_shipment_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `Status`) VALUES
(1, 'Pending'),
(2, 'Failed'),
(3, 'Success'),
(4, 'In Cart');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_responses`
--

CREATE TABLE `payment_responses` (
  `id` int(11) NOT NULL,
  `ORDERID` int(11) NOT NULL,
  `MID` varchar(255) DEFAULT NULL,
  `TXNID` varchar(255) DEFAULT NULL,
  `TXNAMOUNT` double(10,2) DEFAULT NULL,
  `PAYMENTMODE` varchar(255) DEFAULT NULL,
  `CURRENCY` varchar(255) DEFAULT NULL,
  `TXNDATE` timestamp NULL DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `RESPCODE` int(11) DEFAULT NULL,
  `RESPMSG` varchar(255) DEFAULT NULL,
  `GATEWAYNAME` varchar(255) DEFAULT NULL,
  `BANKTXNID` varchar(255) DEFAULT NULL,
  `BANKNAME` varchar(255) DEFAULT NULL,
  `CHECKSUMHASH` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_responses`
--

INSERT INTO `payment_responses` (`id`, `ORDERID`, `MID`, `TXNID`, `TXNAMOUNT`, `PAYMENTMODE`, `CURRENCY`, `TXNDATE`, `STATUS`, `RESPCODE`, `RESPMSG`, `GATEWAYNAME`, `BANKTXNID`, `BANKNAME`, `CHECKSUMHASH`, `created_at`, `updated_at`) VALUES
(1, 1, 'ch_3MU30vA4ImmP5AcF1Yqtw8CM', 'txn_3MU30vA4ImmP5AcF14lJFoEz', 38377.50, 'card_1MU30vA4ImmP5AcFwR1pCuud', 'inr', '2023-01-25 14:03:21', 'succeeded', NULL, NULL, 'amount_refunded(0)and captured(1)', '4242', 'visa', '1', '2023-01-25 14:03:22', '2023-01-25 14:03:22'),
(2, 2, 'ch_3MU3fvA4ImmP5AcF1fuHXgRR', 'txn_3MU3fvA4ImmP5AcF1i5rDuIX', 38675.00, 'card_1MU3fuA4ImmP5AcFoPAdUEcw', 'inr', '2023-01-25 14:45:43', 'succeeded', NULL, NULL, 'amount_refunded(0)and captured(1)', '4242', 'visa', '1', '2023-01-25 14:45:44', '2023-01-25 14:45:44'),
(3, 4, 'ch_3MhC0jA4ImmP5AcF0dCwtI0J', 'txn_3MhC0jA4ImmP5AcF0WuUL1c7', 23400.00, 'card_1MhC0iA4ImmP5AcFqUq9auHn', 'inr', '2023-03-03 01:47:29', 'succeeded', NULL, NULL, 'amount_refunded(0)and captured(1)', '4242', 'visa', '1', '2023-03-03 01:47:30', '2023-03-03 01:47:30'),
(4, 5, 'ch_3MttRdA4ImmP5AcF1odFXObx', 'txn_3MttRdA4ImmP5AcF1bGdUdvm', 30464.00, 'card_1MttRcA4ImmP5AcFhpWiksSr', 'inr', '2023-04-07 02:35:45', 'succeeded', NULL, NULL, 'amount_refunded(0)and captured(1)', '4242', 'visa', '1', '2023-04-07 02:35:46', '2023-04-07 02:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy_and_terms_and_conditions`
--

CREATE TABLE `privacy_policy_and_terms_and_conditions` (
  `id` int(11) NOT NULL,
  `privacy_policy` longtext NOT NULL,
  `terms_and_condition` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privacy_policy_and_terms_and_conditions`
--

INSERT INTO `privacy_policy_and_terms_and_conditions` (`id`, `privacy_policy`, `terms_and_condition`, `created_at`, `updated_at`) VALUES
(1, '<h1>PRIVACY POLICY</h1>\r\n\r\n<p>Updated November 2018.</p>\r\n\r\n<p>We know that you care how information about you is used and shared, and we appreciate your trust. This Privacy Policy explains how SIR the label, http://sirthelabel.com (collectively, &ldquo;we,&rdquo; &ldquo;us&rdquo; or &ldquo;our&rdquo;) collect, use and share information about you when you use our websites and online services (&ldquo;Services&rdquo;) or otherwise interact with us.</p>\r\n\r\n<p>Please read this Privacy Policy carefully and contact us if you have any questions - our contact details can be found on our&nbsp;<a href=\"https://sir-the-label.myshopify.com/pages/contact\">Contact Page</a>.</p>\r\n\r\n<p>If you provide us with your personal information then this indicates that you have had sufficient opportunity to access, and have read and accepted, this Privacy Policy. If you do not wish to provide personal information to us, then you do not have to do so, however it may affect your use of this website or any products and services offered on it.</p>\r\n\r\n<p><strong>COLLECTION OF PERSONAL INFORMATION</strong></p>\r\n\r\n<p><strong>Personal Information:</strong>&nbsp;The types of personal information we collect will depend on the purposes(s) for which we are collecting it. For example, we may ask for:</p>\r\n\r\n<ul>\r\n	<li>name;</li>\r\n	<li>contact details including email address, address and telephone number;</li>\r\n	<li>marital status and anniversary;</li>\r\n	<li>date of birth;</li>\r\n	<li>demographic information such as postcode;</li>\r\n	<li>credit card or other payment details (if you are buying product from us);</li>\r\n	<li>preferences and opinions; and</li>\r\n	<li>any other information requested on this website or otherwise requested by us or provided by you.</li>\r\n</ul>\r\n\r\n<p><strong>Non-identifiable information:&nbsp;</strong>Data that have never been labelled with individual identifiers or from which identifiers have been permanently removed, and by means of which no specific individual can be identified. When you visit our website, we automatically record non-identifiable information that your browser sends. This data may include:</p>\r\n\r\n<ul>\r\n	<li>your computer&#39;s IP address;</li>\r\n	<li>browser type;</li>\r\n	<li>webpage you were visiting before you came to our website</li>\r\n	<li>the pages within www.sirthelabel.com you visit</li>\r\n	<li>the time spent on those pages, items, and information searched on our website, access times, dates and other statistics.</li>\r\n</ul>\r\n\r\n<p>Non-identifiable information is collected for analysis and evaluation in order to help us improve our website and the services and products we provide. This data will not be used in association with any other personal information.</p>\r\n\r\n<p><strong>HOW WE COLLECT YOUR INFORMATION</strong></p>\r\n\r\n<p>We may collect your information in a number of ways, including:</p>\r\n\r\n<ol>\r\n	<li>Directly from you, including but not limited when you:</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>browse our website;</li>\r\n	<li>save an item;</li>\r\n	<li>register on our website;</li>\r\n	<li>logging into the website once registered;</li>\r\n	<li>making a purchase from us;</li>\r\n	<li>contacting our Customer Care, either about an order or for any other reason;</li>\r\n	<li>interacting with us on our social media; or</li>\r\n	<li>having a conversation with our team members</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li>From third parties such as our related entities, business or commercial partners.<strong>&nbsp;</strong></li>\r\n</ol>\r\n\r\n<p><strong>HOW WE USE YOUR INFORMATION</strong></p>\r\n\r\n<p>Use the information for purposes including:</p>\r\n\r\n<ul>\r\n	<li>to create orders, transaction records, agreements for the sale of products or services, accounts, tax invoices or receipts;</li>\r\n	<li>to communicate with you, about products and services, competition results, special offers, and events which might interest you;</li>\r\n	<li>to perform research and analysis;</li>\r\n	<li>for market research and business development including website development and gauging website traffic and trends;</li>\r\n	<li>to deliver personalised site content to you;</li>\r\n	<li>for marketing including direct marketing;</li>\r\n	<li>to run competitions or offer additional benefits to you; and</li>\r\n	<li>to send you promotional information about third parties that we think may be of interest to you.</li>\r\n	<li>to comply with laws or regulations or to comply with any directions given by regulators or authorities.</li>\r\n</ul>\r\n\r\n<p><strong>DISCLOSURE OF PERSONAL INFORMATION TO THIRD PARTIES</strong></p>\r\n\r\n<p>We may disclose your personal information to:</p>\r\n\r\n<ul>\r\n	<li>assist us in providing products and services you have requested, such as delivery service providers;</li>\r\n	<li>credit reporting agencies and courts, tribunals and regulatory authorities where customers fail to pay for goods or services provided by us to them;</li>\r\n	<li>courts, tribunals, regulatory authorities and law enforcement offices as required by law, in connection with any actual or prospective legal proceedings, or in order to establish, exercise or defend our legal rights, and</li>\r\n	<li>conduct market research and marketing strategy analysis;</li>\r\n</ul>\r\n\r\n<p>Where we disclose your personal information to third parties for these purposes, we will request that they follow this Privacy Policy when handling your personal information.</p>\r\n\r\n<p>If there is a change of control of our business or a sale or transfer of business assets, we reserve the right to transfer to the extent permitted by law our user databases, together with any personal information and non-personal information contained in those databases. This information may be disclosed to a potential purchaser.</p>\r\n\r\n<p><strong>HOW TO ACCESS OR CORRECT YOUR PERSONAL INFORMATION</strong></p>\r\n\r\n<p>Under the Privacy Act, individuals have a right to access their complete records. You may ask us in writing to provide you with details of the personal information we hold about you. We will endeavour to process your request as soon as possible.&nbsp;</p>\r\n\r\n<p>You can update your personal information anytime by accessing your account on our website by logging on to your account. If you wish for your personal information to be removed from our database, please contact us by&nbsp;<a href=\"https://sir-the-label.myshopify.com/pages/contact\">CLICKING HERE</a>.</p>\r\n\r\n<p><strong>HOW TO MAKE A COMPLAINT ABOUT A BREACH OF PRIVACY</strong></p>\r\n\r\n<p>If you have any questions, comments or complaints regarding our practices, or if you are of the view that we have not adhered to this privacy policy, you can contact us by email to&nbsp;<a href=\"mailto:privacy@sirthelabel.com\">privacy@sirthelabel.com</a>&nbsp;&nbsp;You can find more information about privacy and the protection of your personal information on the website of the OAIC at&nbsp;<a href=\"https://www.oaic.gov.au/\">https://www.oaic.gov.au/</a>.</p>\r\n\r\n<p><strong>COOKIE POLICY</strong></p>\r\n\r\n<p>We use &ldquo;cookies&rdquo; when you visit our website. It is a technology that enables us to personalise our service to you and track the patterns of behaviour of visitors to the website.</p>\r\n\r\n<p>By using our website, you agree to us placing cookies on your device and accessing them when you visit the website in the future. You can modify the settings on your device to prevent cookie use. Please note by disabling cookies, you user experience may be affected and you might not be able to take advantage of certain functions.</p>\r\n\r\n<p>There are four main types of cookies &ndash; here&rsquo;s how and why we use them:</p>\r\n\r\n<ul>\r\n	<li><strong>Analytics cookies:</strong>&nbsp;these cookies allow us to measure and analyse how our customers use the website, to improve both its functionality and your shopping experience.</li>\r\n	<li><strong>Customer preference cookies:</strong>&nbsp;when you are browsing or shopping, these cookies will remember your preferences (like your language or location), so we can make your shopping experience as seamless as possible, and more personal to you.</li>\r\n	<li><strong>Targeting or advertising cookies:</strong>&nbsp;these cookies are used to deliver marketing and advertising materials that are relevant to you.</li>\r\n</ul>\r\n\r\n<p><strong>CHANGES TO THIS POLICY</strong></p>\r\n\r\n<p>This Privacy Policy may be amended, including with changes, additions and deletions, from time to time in our sole discretion. Your continued use of our website following any amendments indicates that you accept the amendments. We recommend that you check this Privacy Policy regularly, prior to providing personal information, to ensure you are aware of any changes, and only proceed to provide personal information if you accept the new Privacy Policy.</p>\r\n\r\n<p>If you have any questions, feedback or complaints please contact us at:</p>\r\n\r\n<p><strong>Mail:</strong>&nbsp;SIR the label, 25/108 Dunning Avenue, Rosebery NSW 2018 Australia</p>\r\n\r\n<p><strong>Phone:</strong>&nbsp;+61 2 9191 0245</p>\r\n\r\n<p><strong>Email:</strong>&nbsp;privacy@sirthelabel.com</p>', '<h1>TERMS &amp; CONDITIONS</h1>\r\n\r\n<p>These terms set out the agreement for online trading between SIR the label Pty Ltd (ABN 13600 747 680) (&quot;SIR the label PTY LTD&quot;) and the user of this website (&quot;You&quot;) Please read them carefully before proceeding with entering the website. You must accept these terms and conditions to access this website any further.&nbsp;</p>\r\n\r\n<p>This website is owned and operated by SIR the label PTY LTD.</p>\r\n\r\n<p>PLACING AN ORDER AND PAYMENT</p>\r\n\r\n<p>By completing an online order, You are making an offer to purchase the product at the price on our website.</p>\r\n\r\n<p>Payment must be made at the time of submitting the online order. Payment can be made by Visa, MasterCard, Amex, Afterpay, or PayPal only. You warrant that you are an authorised user of the credit card, Afterpay account or PayPal account used to complete payment.&nbsp;</p>\r\n\r\n<p>All online orders placed through this website are subject to confirmation and acceptance by SIR the label. We will email you with confirmation of the receipt of your online order. Sir the label may reject Your online order for any reason and refund any payment made by you, at any time prior to dispatch.</p>\r\n\r\n<p>The online order must be paid in full immediately upon entry into the Agreement. All transactions on the Australian and New Zealand website are settled in Australian Dollars (AUD). Customers purchasing from New Zealand will have their currency automatically converted to Australian Dollars when you complete the transaction. The conversion rate varies from day to day with the current exchange rate. Many banks also charge a small currency conversion fee, contact your bank or credit provider for details.</p>\r\n\r\n<p>SIR the label&rsquo;s prices may vary in the event of price changes or mistakes on this website without prior notice to you. If SIR the label requests payment for increased prices, you may cancel the order. Notification of your wish to cancel the order in these circumstances must be received within seven (7) business days of the announcement of the increase.</p>\r\n\r\n<p>RETURN POLICY</p>\r\n\r\n<p>All sales are subject to our Returns Policy.</p>\r\n\r\n<p>FAULTY POLICY</p>\r\n\r\n<p>We aim to provide you with products of the highest standard and quality. If you have received a product with a manufacturing fault, please contact us as soon as you receive your order. This way we can guide you through the returns process and help resolve the problem. Please provide our team with images of the damage, defect or fault for a preliminary assessment.</p>\r\n\r\n<p><br />\r\nIf the product is confirmed to have a manufacturing fault, we will replace the product or refund the price of the product to your original payment method at your request. If the product is found not to have a defect or deemed out of warranty, we will ship the product back to you.</p>\r\n\r\n<p><br />\r\nIt does not constitute a defect, if in our reasonable opinion, the product has, following the sale to you, become of unacceptable quality due to fair wear and tear, misuse or failure to use in accordance with care for instructions.</p>\r\n\r\n<p>Please see our full Returns Policy for more information.</p>\r\n\r\n<p>GIFT CARDS</p>\r\n\r\n<p>Gift Cards may only be redeemed at on the SIR the label website and Manly Boutique. Gift Cards are not valid to be redeemed at any SIR. stockist. Gift Cards are valid for three (3) years from the date of purchase. Gift Cards are not redeemable for cash. Unfortunately, SIR the label does not take responsibility for any lost or stolen Gift Cards. Gift cards cannot be redeemed for cash. If an order is made using a gift card and is then cancelled or returned, the portion of the purchase attributable to the gift card will be refunded as a store credit only. Gift card purchases may be subject to security checks from time to time, resulting in longer processing time.</p>\r\n\r\n<p>STORE CREDIT</p>\r\n\r\n<p>Store credits are applied to the account registered with the same email address used to place your order. Store credits cannot be transferred to other accounts. Store credit is valid for&nbsp;three&nbsp;(3) years. Any balance that remains after the 3 years will not be available for use. Store credit does not accrue interest nor can it be redeemed or refunded for cash. If an order made using store credit is cancelled or returned, the portion of the purchase attributable to the store credit will be restored to your account only.&nbsp;</p>\r\n\r\n<p>PROMOTIONAL CODES</p>\r\n\r\n<p>SIR the label occasionally has special offers that can be applied to your order by using a promotional code. In order to take advantage of these promotions, you must enter the promotional code in the space provided during the checkout process and hit the &quot;apply&quot; button. The value of the promotion will be applied to your order automatically.</p>\r\n\r\n<p>If you have not applied the promotional code but order was placed during the event contact our team straight after you&rsquo;ve placed your order. It is up to SIR the label&rsquo;s discretion to refund you the discounted amount.</p>\r\n\r\n<p>Please note, only one promotional code may be used per transaction. Unless otherwise specified each promotional code may only be used once per customer.</p>\r\n\r\n<p>WEBSITE SECURITY</p>\r\n\r\n<p>http://sirthelabel.com is protected by SSL (Secure Socket Layer) encryption. SSL is a security device that ensures that any data, which you enter into a secure area of the website, is encrypted during transmission over the Internet. SSL utilises data encryption to create a secure environment for you to conduct your online transactions. In order for SSL to be effective, you must be using an SSL compliant browser.</p>\r\n\r\n<p>SIR the label does not store or keep credit card numbers from online transactions. The last four numbers and the expiry date of your credit card number are kept for order verification and identification purposes only. In the event a credit card is used without the holder&#39;s authorisation, the cardholder must notify their credit card provider in accordance with their reporting rules and procedures.</p>\r\n\r\n<p>LIMITATION OF LIABILITY</p>\r\n\r\n<p>SIR the label has provided information on this website as accurately as possible. We take all precautions possible to keep the details of your orders and payment secure, but in the absence of negligence on our part, we cannot be held liable for any loss you may suffer if a third party acquires unauthorised access to any data you provide when accessing or ordering from the website.</p>\r\n\r\n<p>To the extent permitted by law, all guarantees, warranties or representations which are not specifically stated in this Agreement are excluded. If SIR the label is liable for breach of an obligatory guarantee or implied warranty or representation, SIR the label&rsquo;s obligation is, at its option limited to the replacement of the products or the supply of equivalent products, the repair of the products or the payment of having the products replaced or repaired.</p>\r\n\r\n<p>INTELLECTUAL PROPERTY</p>\r\n\r\n<p>SIR the label owns the intellectual property in its garment designs, fabric designs and images. SIR the label forbids the use of its designs and images for any purpose without prior written consent from SIR the label.</p>\r\n\r\n<p>WEBSITE AVAILABILITY</p>\r\n\r\n<p>On the rare occasion, http://sirthelabel.com could require some down-time, either scheduled or unscheduled. SIR the label will try to ensure the amount of down-time is limited. SIR the label will not be held liable for any consequences during down-time.</p>\r\n\r\n<p>PRIVACY POLICY</p>\r\n\r\n<p>Please see our privacy policy&nbsp;<a href=\"http://www.theiconic.com.au/privacy-policy/\">(</a><a href=\"https://sir-the-label.myshopify.com/pages/privacy-policy\">click here)</a></p>\r\n\r\n<p>YOUR USE OF THE WEBSITE</p>\r\n\r\n<p>You agree that you will use this website in accordance with these terms and conditions and that you will not use this website for any unlawful purpose.</p>\r\n\r\n<p>You will not violate or attempt to violate the security of this website. You will not hack into this website, SIR the label&rsquo;s computer systems or the computer systems of other users of this website. Hacking means unauthorised access, malicious damage and/or interference.</p>\r\n\r\n<p>As you browse SIR the label, advertising cookies will be placed on your computer so that we can personalise your shopping experience.</p>\r\n\r\n<p>By entering this website you agree to these terms and conditions. From time to time, this Agreement will be reviewed and may be revised. SIR the label reserves the right to change this Agreement at any time. Any such changes will be posted on this website.</p>\r\n\r\n<p>TERMINATION</p>\r\n\r\n<p>SIR the label reserves the right to terminate the agreement to supply products to you at any time before the products are dispatched. SIR the label will not be liable to you for any expenses or damages whatsoever for terminating this Agreement.</p>\r\n\r\n<p>If the product has not been delivered to you prior to any termination of this Agreement, SIR the label will refund any payment you have made prior to termination.</p>\r\n\r\n<p>SIR the label may terminate the agreement under which you can use this website immediately without notice if you are in breach of our website term and conditions.</p>\r\n\r\n<p>FULL AGREEMENT</p>\r\n\r\n<p>This Terms of Sale and Use of Website Agreement together with the other policies on this website are the entire agreement between us (SIR the label) and the user (yourself).</p>\r\n\r\n<p>SEVERABILITY</p>\r\n\r\n<p>If any provision of these Terms and Conditions is held to be unlawful, invalid or unenforceable, that provision shall be deemed severed and where capable the validity and enforceability of the remaining provisions of these Terms and Conditions shall not be affected.</p>\r\n\r\n<p>GOVERNING LAW</p>\r\n\r\n<p>These Terms and Conditions (and all non-contractual relationships between you and us) shall be governed by and construed in accordance with the law of New South Wales and both parties hereby submit to the jurisdiction of the courts of New South Wales.</p>\r\n\r\n<p>SIGN UP AND FIRST PURCHASE OFFER</p>\r\n\r\n<p>We offer 10% off to customers who sign up to our email database. Offer is only valid to first time customers only and cannot be used in conjunction with any other promo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>RESORT &rsquo;22 COMP | WIN A $2000 WARDROBE</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>The promoter of this promotion is SIR the label Pty Ltd (&ldquo;the Promoter&rdquo;) (ABN 13600 727 680) of 2D Hayes Road, Rosebery, NSW 2018, Australia, 02 91910245.</p>\r\n	</li>\r\n	<li>\r\n	<p>Entry is free and open to Australian residents of all ages. Employees of the Promoter and their immediate families and the suppliers and agencies associated with this competition are ineligible to enter.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>This competition is a game of chance.&nbsp;&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Information on how to enter this competition (Competition) forms part of the terms of entry, which includes these terms and conditions (Terms). Entry into the competition is deemed acceptance of these terms.</p>\r\n	</li>\r\n	<li>\r\n	<p>This competition commences Thursday 16th&nbsp;September 2021 and ends at 11:59PM AEST Thursday the 30th&nbsp;September, 2021 (&ldquo;Competition Period&rdquo;). You can enter multiple times per person, using different email addresses. Late, incomplete, incorrectly submitted, delayed, illegible, corrupted or misdirected responses will be deemed invalid.</p>\r\n	</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>\r\n	<p>To enter this competition entrants must:</p>\r\n	</li>\r\n	<li>\r\n	<p>Register by filling out signup form</p>\r\n	</li>\r\n	<li>\r\n	<p>By entering the competition entrants agree to be available to claim prize for the duration of the sale. $2000 giveaway will only be valid to use on the SIR. online store and a gift pack to view the premiere of SIR.&rsquo;s new Resort &rsquo;22 Collection.</p>\r\n	</li>\r\n	<li>\r\n	<p>The winning entry will be selected at the end of the Promotion Period, on Friday the 1st&nbsp;of October, 2021 at the Promoters address. The Winner will be contacted via email at Friday the 1st&nbsp;of October, 2021, and listed on the Promoters website.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>There will be one (1) winner in total (&ldquo;the Winner&rdquo;).&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Prize; $2000 wardrobe to spend on SIR.&rsquo;s online store and a gift pack to view the premiere of SIR.&rsquo;s new Resort &rsquo;22 Collection.</p>\r\n	</li>\r\n	<li>\r\n	<p>The Winner will receive a $2000 gift card via email and gift pack will be sent to nominated address. The Promoter is not liable for any other additional costs associated with winning this competition or the prizes that comprise this competition.</p>\r\n	</li>\r\n	<li>\r\n	<p>If the prize remains unclaimed for the duration of 3 months (30th&nbsp;December 2021), the Promoter may deem that the winner ineligible to receive the prize and select the next best entry Friday 31st&nbsp;December 2021.</p>\r\n	</li>\r\n	<li>\r\n	<p>The prize is not transferable or exchangeable and cannot be redeemed for cash. The Promoter accepts no responsibility for any variation in the value of prize.</p>\r\n	</li>\r\n	<li>\r\n	<p>Entry into the competition is deemed an acknowledgment and acceptance of these terms and conditions.</p>\r\n	</li>\r\n	<li>\r\n	<p>The Promoter reserves the right, at any time, to verify the validity of entries and the identity of entrants. Proof of entry and identity will only be deemed as sufficient at the discretion of the Promoter.</p>\r\n	</li>\r\n	<li>\r\n	<p>The Promoter of this competition has the right to extend the closing date in its sole and absolute discretion.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Personal information provided by entrants will be used by the Promoter for the purpose of conducting this competition and otherwise in accordance with contestants&rsquo; consent. The Promoter&rsquo;s privacy policy is available at&nbsp;<a href=\"http://www.sirthelabel.com/\">com</a></p>\r\n	</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Any tax liability arising as a result of accepting the prize is the responsibility of the winner.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>The Promoter accepts no responsibility for any late, lost or misdirected entries due to technical disruptions, network congestion or for any other reason.</p>\r\n	</li>\r\n	<li>\r\n	<p>The Promoter reserves the right to verify the validity of entries and to disqualify any entry which, in the opinion of the Promoter, includes objectionable content, profanity, potentially insulting, inflammatory or defamatory statements, disqualify any entrant who tampers with the entry process, who submits an entry that is not in accordance with these Terms or who has, in the sole opinion of the Promoter, engaged in conduct in entering the Competition which is fraudulent, misleading, deceptive or generally damaging to the goodwill or reputation of the Competition and/or Promoter. This includes but not limited to entrants and households using multiple email addresses, postal addresses, PO Box addresses or SIM cards to register single or multiple purchases.</p>\r\n	</li>\r\n	<li>\r\n	<p>Entrants warrant that their entry in the Competition does not breach the intellectual property rights of any third party nor breach the Competition and Consumer Act 2010 (Cth) (CCA). The entrant indemnifies and will keep the Promoter and its associated agencies indemnified against any loss, costs (including legal costs), expenses or liability the Promoter and its associated agencies may suffer arising out of any breach by the entrant of this clause.</p>\r\n	</li>\r\n	<li>\r\n	<p>If for any reason an entrant does not take a prize (or an element of the prize) at/by the time stipulated by the Promoter, then the prize (or that element of the prize) will be forfeited.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>If any prize (or part of any prize) is unavailable, the Promoter, in its discretion, reserves the right to substitute the prize (or that part of the prize) with a prize to the equal value and/or specification, subject to any written directions from a regulatory authority.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>The Promoter&rsquo;s decision is final, and the Promoter will not enter into correspondence regarding the Competition result.</p>\r\n	</li>\r\n	<li>\r\n	<p>The Promoter reserves the right to request the Winner to provide proof of identity and proof of residency. Proof of identification, residency and entry considered suitable for verification may be requested at the sole discretion of the Promoter. In the event that a Winner cannot provide suitable proof, the Winner will forfeit the Prize in whole and no substitute will be offered.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>The Prize will be awarded to the person named in the entry only. Should an entrant&rsquo;s contact details change during the Promotional Period, it is the entrant&rsquo;s responsibility to notify the Promoter and modify their entry as appropriate. If the winner advises that they do not want to accept the prize, it will be forfeited and awarded to the next eligible entry as Judged by the Promoter.</p>\r\n	</li>\r\n	<li>\r\n	<p>By accepting the Prize, Winners agree to participate in and cooperate as required with all reasonable media editorial requests relating to the Prize, including but not limited to, being interviewed and photographed and/or filmed.</p>\r\n	</li>\r\n	<li>\r\n	<p>Winners should seek independent financial advice as tax implications may arise as a result of accepting the Prize.</p>\r\n	</li>\r\n	<li>\r\n	<p>In the case of; The intervention of any outside act, agent or event which prevents or significantly hinders the Promoter&rsquo;s ability to proceed with the Competition on the dates and in the manner described in these Terms, including but not limited to vandalism, power failures, tempests, natural disasters, acts of God, civil unrest, strike, war, act of terrorism; or The Promoter being unable to run the Competition as planned due to infection by computer virus, bugs, tampering, unauthorised intervention, fraud, technical failures or any causes beyond the control of the Promoter, which corrupt or affect the administration, security, fairness or integrity or proper conduct of this Competition, the Promoter may in its absolute discretion take any action that may be available, and to cancel, terminate, modify or suspend the Competition.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>The Promoter shall not be liable for any loss or damage whatsoever which is suffered (including but not limited to indirect or consequential loss) or for any personal injury suffered or sustained in connection with any Prize except for any liability which cannot be excluded by law (including the CCA).&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>The Promoter is not responsible for any incorrect or inaccurate information, either caused by the phone user or for any of the equipment or programming associated with or utilised in this Competition, or for any technical error, or any combination thereof that may occur in the course of the administration of this Competition including any omission, interruption, deletion, defect, delay in operation or transmission, communications line or telephone, mobile or satellite network failure, theft or destruction or unauthorised access to or alteration of entries.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>The Promoter reserves the right in its sole discretion to disqualify any individual who the Promoter has reason to believe has breached any of these Terms or engaged in any unlawful or other improper misconduct of the Competition.</p>\r\n	</li>\r\n	<li>\r\n	<p>These Terms are governed by the laws of Australia.</p>\r\n	</li>\r\n</ol>', '2022-03-28 12:02:21', '2022-03-28 16:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `designer_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `price_range_id` int(11) DEFAULT NULL,
  `new_arrivals` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `engraving` int(11) NOT NULL DEFAULT 0,
  `trending` int(11) NOT NULL DEFAULT 0,
  `official_online_partner` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `shipping_time` int(11) DEFAULT NULL,
  `title_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `offer_before_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `product_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `description` longtext DEFAULT NULL,
  `product_features_fit` longtext DEFAULT NULL,
  `fabric_care_instructions` text DEFAULT NULL,
  `rich_spices` text DEFAULT NULL,
  `quotes` text DEFAULT NULL,
  `origins` text DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `view_count`, `category_id`, `sub_category_id`, `designer_id`, `brand_id`, `user_id`, `price_range_id`, `new_arrivals`, `featured`, `engraving`, `trending`, `official_online_partner`, `title`, `slug`, `sku`, `shipping_time`, `title_tag`, `meta_description`, `price`, `offer_before_price`, `product_discount`, `description`, `product_features_fit`, `fabric_care_instructions`, `rich_spices`, `quotes`, `origins`, `video_type`, `video_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 36, NULL, NULL, 4, NULL, 1, 5, 1, 0, 0, 0, 0, 'Snow & Camel Printed Georgette Embroidered Saree Set', 'Snow-&-Camel-Printed-Georgette-Embroidered-Saree-Set', '7867434', 2, 'Snow & Camel Printed Georgette Embroidered Saree Set', 'this is best Snow & Camel Printed Georgette Embroidered Saree Set', '25075.00', '0.00', '60.00', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.</p>', '<p>It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', '<p>hjklhjklhlkkl</p>', NULL, NULL, NULL, 'upload_video', NULL, 1, '2023-01-13 04:04:32', '2023-04-12 08:55:04'),
(2, 73, NULL, NULL, 5, NULL, 1, 1, 0, 0, 0, 0, 0, 'Beige Gold Printed Saree', 'Beige-Gold-Printed-Saree', '768675', 2, 'Beige Gold Printed Saree', 'this is best Beige Gold Printed Saree', '22900.00', '0.00', '20.00', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2023-01-13 05:35:52', '2023-04-11 13:53:54'),
(3, 78, NULL, NULL, 2, NULL, 1, 2, 0, 0, 0, 0, 0, 'Daffodil Yellow Pre-Stitched Draped Saree Set', 'daffodil-yellow-pre-stitched-draped-saree-set', '3456566', 2, 'Daffodil Yellow Pre-Stitched Draped Saree Set', 'this is best Daffodil Yellow Pre-Stitched Draped Saree Set', '32522.00', '0.00', '30.00', '<p>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2023-01-13 05:37:48', '2023-04-08 01:21:49'),
(4, 79, NULL, NULL, 3, NULL, 1, 1, 0, 0, 0, 0, 0, 'Deep Purple Pure Katan Silk Handloom Banarasi Saree', 'deep-purple-pure-katan-silk-handloom-banarasi-saree', '5656634', 1, 'Deep Purple Pure Katan Silk Handloom Banarasi Saree', 'this is best Deep Purple Pure Katan Silk Handloom Banarasi Saree', '32000.00', '0.00', '10.00', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2023-01-13 05:41:58', '2023-04-12 12:11:23'),
(5, 131, NULL, NULL, 3, NULL, 1, 3, 0, 0, 0, 0, 0, 'Light Grey Embroidered Lehenga Set', 'light-grey-embroidered-lehenga-set', '2424454', 1, 'Light Grey Embroidered Lehenga Set', 'this is best Light Grey Embroidered Lehenga Set', '85000.00', '0.00', '40.00', '<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', '<p>The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2023-01-04 05:45:21', '2023-04-11 14:48:35'),
(6, 75, NULL, NULL, 4, NULL, 1, 2, 0, 0, 0, 0, 0, 'Apricot & Camel Printed Lehenga Look', 'apricot-camel-printed-lehenga-look', '998676', 2, 'Apricot & Camel Printed Lehenga Look', 'this is best Apricot & Camel Printed Lehenga Look', '27625.00', '0.00', '30.00', '<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2022-12-20 05:47:04', '2023-04-11 15:45:16'),
(7, 74, NULL, NULL, 5, NULL, 1, 1, 0, 0, 0, 0, 0, 'Red Embroidered Lehenga Set', 'red-embroidered-lehenga-set', '756756', 1, 'Red Embroidered Lehenga Set', 'this is best Red Embroidered Lehenga Set', '35199.00', '0.00', '20.00', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English.</p>', '<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2022-12-20 05:50:35', '2023-04-11 22:51:13'),
(8, 82, NULL, NULL, 1, NULL, 1, 5, 0, 1, 0, 0, 0, 'Sky Blue Net Embroidered Lehenga Set', 'sky-blue-net-embroidered-lehenga-set', '3453543', 3, 'Sky Blue Net Embroidered Lehenga Set', 'this is best Sky Blue Net Embroidered Lehenga Set', '120000.00', '0.00', '60.00', '<p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.&nbsp;</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2022-12-20 05:52:49', '2023-04-12 16:53:07'),
(9, 81, NULL, NULL, 2, NULL, 1, 4, 0, 1, 0, 0, 0, 'Green Raw Silk Embroidered Lehenga Set', 'green-raw-silk-embroidered-lehenga-set', '345354', 2, 'Green Raw Silk Embroidered Lehenga Set', 'this is best Green Raw Silk Embroidered Lehenga Set', '95000.00', '0.00', '50.00', '<p>It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2022-12-21 14:44:49', '2023-04-12 18:57:55'),
(10, 101, NULL, NULL, 3, NULL, 1, 1, 0, 0, 1, 0, 0, 'Emerald Green Printed Lehenga Set', 'emerald-green-printed-lehenga-set', '354345345', 3, 'Emerald Green Printed Lehenga Set', 'this is best Emerald Green Printed Lehenga Set', '29250.00', '0.00', '20.00', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2022-12-21 14:48:03', '2023-09-04 11:32:18'),
(11, 84, NULL, NULL, 4, NULL, 1, 3, 0, 1, 1, 0, 0, 'Multi-Colored Satin Silk Saree Set', 'multi-colored-satin-silk-saree-set', '23454234', 2, 'Multi-Colored Satin Silk Saree Set', 'this is best Multi-Colored Satin Silk Saree Set', '30500.00', '0.00', '40.00', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>', '<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2022-12-21 14:58:40', '2023-04-12 10:19:09'),
(12, 169, NULL, NULL, 5, NULL, 1, 2, 0, 1, 1, 0, 0, 'Dark Olive Georgette Ruffled Saree Set', 'dark-olive-georgette-ruffled-saree-set', '234234', 1, 'Dark Olive Georgette Ruffled Saree Set', 'this is best Dark Olive Georgette Ruffled Saree Set', '27200.00', '0.00', '30.00', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>', '<p>The model (height 5&#39;7) is wearing a size S.</p>', NULL, NULL, NULL, NULL, 'upload_video', NULL, 1, '2022-12-21 15:00:17', '2023-09-04 11:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `products_colours`
--

CREATE TABLE `products_colours` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `colour_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_colours`
--

INSERT INTO `products_colours` (`id`, `product_id`, `colour_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2022-12-20 04:04:32', '2022-12-27 22:12:54'),
(2, 2, 1, '2022-12-20 05:35:52', '2022-12-20 05:35:52'),
(3, 3, 3, '2022-12-20 05:37:48', '2022-12-27 22:12:22'),
(4, 4, 1, '2022-12-20 05:41:58', '2022-12-20 05:41:58'),
(5, 5, 6, '2022-12-20 05:45:21', '2022-12-27 22:14:33'),
(6, 6, 4, '2022-12-20 05:47:04', '2022-12-27 22:14:28'),
(7, 7, 1, '2022-12-20 05:50:35', '2022-12-20 05:50:35'),
(8, 8, 3, '2022-12-20 05:52:49', '2022-12-27 22:13:59'),
(9, 9, 2, '2022-12-21 14:44:49', '2022-12-27 22:13:40'),
(10, 10, 1, '2022-12-21 14:48:03', '2022-12-21 14:48:03'),
(11, 11, 2, '2022-12-21 14:58:40', '2022-12-27 22:12:04'),
(12, 12, 1, '2022-12-21 15:00:17', '2022-12-21 15:00:17'),
(13, 13, 2, '2022-12-27 17:22:39', '2022-12-27 17:22:39'),
(14, 13, 1, '2023-01-24 18:55:23', '2023-01-24 18:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `products_fabrics`
--

CREATE TABLE `products_fabrics` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `fabric_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_fabrics`
--

INSERT INTO `products_fabrics` (`id`, `product_id`, `fabric_id`, `created_at`, `updated_at`) VALUES
(18, 3, 1, '2021-12-13 18:14:09', '2021-12-13 18:14:09'),
(19, 3, 3, '2021-12-13 18:14:09', '2021-12-13 18:14:09'),
(20, 17, 1, '2022-03-08 05:27:07', '2022-03-08 05:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `products_filter_categories`
--

CREATE TABLE `products_filter_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `filter_category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_filter_categories`
--

INSERT INTO `products_filter_categories` (`id`, `product_id`, `filter_category_id`, `created_at`, `updated_at`) VALUES
(38, 2, 1, '2021-12-13 18:10:25', '2021-12-13 18:10:25'),
(39, 2, 4, '2021-12-13 18:10:25', '2021-12-13 18:10:25'),
(40, 3, 1, '2021-12-13 18:14:09', '2021-12-13 18:14:09'),
(41, 3, 7, '2021-12-13 18:14:09', '2021-12-13 18:14:09'),
(42, 3, 13, '2021-12-13 18:14:09', '2021-12-13 18:14:09'),
(47, 14, 1, '2022-03-07 15:54:10', '2022-03-07 15:54:10'),
(48, 17, 1, '2022-03-08 05:27:07', '2022-03-08 05:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `products_occasions`
--

CREATE TABLE `products_occasions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `occasion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_occasions`
--

INSERT INTO `products_occasions` (`id`, `product_id`, `occasion_id`, `created_at`, `updated_at`) VALUES
(172, 13, 1, '2023-01-24 18:55:23', '2023-01-24 18:55:23'),
(211, 11, 1, '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(212, 11, 2, '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(240, 12, 1, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(241, 12, 3, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(242, 12, 6, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(243, 12, 8, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(244, 12, 10, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(245, 12, 12, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(246, 12, 14, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(247, 12, 16, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(248, 12, 18, '2023-04-12 18:26:06', '2023-04-12 18:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `products_reviews`
--

CREATE TABLE `products_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ratting` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_reviews`
--

INSERT INTO `products_reviews` (`id`, `product_id`, `name`, `email`, `ratting`, `title`, `comments`, `created_at`, `updated_at`) VALUES
(1, 5, 'Ushalakshmi Kundurti', 'parihar.ravindra23@gmail.com', 5, 'Beautiful', 'It’s a beautiful piece. Loved it', '2023-01-10 21:32:28', '2023-01-10 21:32:28'),
(2, 12, 'Ushalakshmi Kundurti', 'UshalakshmiKundurti23@gmail.com', 4, 'Beautiful', 'It’s a beautiful piece. Loved it', '2023-01-20 19:41:47', '2023-01-20 19:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `products_sizes`
--

CREATE TABLE `products_sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_sizes`
--

INSERT INTO `products_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(194, 14, 1, '2022-03-07 15:54:10', '2022-03-07 15:54:10'),
(195, 14, 2, '2022-03-07 15:54:10', '2022-03-07 15:54:10'),
(196, 14, 3, '2022-03-07 15:54:10', '2022-03-07 15:54:10'),
(197, 14, 4, '2022-03-07 15:54:10', '2022-03-07 15:54:10'),
(198, 15, 5, '2022-03-07 15:58:48', '2022-03-07 15:58:48'),
(199, 15, 6, '2022-03-07 15:58:48', '2022-03-07 15:58:48'),
(200, 15, 7, '2022-03-07 15:58:48', '2022-03-07 15:58:48'),
(201, 15, 8, '2022-03-07 15:58:48', '2022-03-07 15:58:48'),
(202, 15, 9, '2022-03-07 15:58:48', '2022-03-07 15:58:48'),
(203, 16, 13, '2022-03-07 16:03:54', '2022-03-07 16:03:54'),
(204, 16, 14, '2022-03-07 16:03:54', '2022-03-07 16:03:54'),
(205, 16, 15, '2022-03-07 16:03:54', '2022-03-07 16:03:54'),
(206, 16, 16, '2022-03-07 16:03:54', '2022-03-07 16:03:54'),
(207, 17, 5, '2022-03-08 05:27:07', '2022-03-08 05:27:07'),
(208, 17, 6, '2022-03-08 05:27:07', '2022-03-08 05:27:07'),
(209, 17, 7, '2022-03-08 05:27:07', '2022-03-08 05:27:07'),
(210, 17, 8, '2022-03-08 05:27:07', '2022-03-08 05:27:07'),
(211, 17, 9, '2022-03-08 05:27:07', '2022-03-08 05:27:07'),
(828, 13, 1, '2023-01-24 18:55:23', '2023-01-24 18:55:23'),
(868, 11, 5, '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(869, 11, 7, '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(870, 11, 8, '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(871, 11, 9, '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(872, 10, 6, '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(873, 10, 7, '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(874, 10, 8, '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(875, 10, 9, '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(876, 9, 5, '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(877, 9, 7, '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(878, 9, 8, '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(879, 9, 9, '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(880, 8, 5, '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(881, 8, 8, '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(882, 8, 9, '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(883, 7, 5, '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(884, 7, 6, '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(885, 7, 9, '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(886, 6, 5, '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(887, 6, 6, '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(888, 5, 6, '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(889, 5, 8, '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(890, 4, 6, '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(891, 4, 8, '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(892, 4, 9, '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(893, 3, 6, '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(894, 3, 7, '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(895, 3, 8, '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(896, 2, 5, '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(897, 2, 6, '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(906, 1, 5, '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(907, 1, 6, '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(908, 1, 7, '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(909, 1, 9, '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(918, 12, 6, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(919, 12, 7, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(920, 12, 8, '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(921, 12, 9, '2023-04-12 18:26:06', '2023-04-12 18:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(11, 11, '8', '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(12, 10, '9', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(13, 9, '9', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(14, 8, '9', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(15, 7, '9', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(16, 6, '9', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(17, 5, '9', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(18, 4, '8', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(19, 3, '8', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(20, 2, '8', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(24, 1, '8', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(29, 12, '2', '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(30, 12, '8', '2023-04-12 18:26:06', '2023-04-12 18:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_featured_images`
--

CREATE TABLE `product_featured_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) NOT NULL,
  `featured_image` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_featured_images`
--

INSERT INTO `product_featured_images` (`id`, `product_id`, `product_color_id`, `featured_image`, `alt`, `created_at`, `updated_at`) VALUES
(49, 12, 12, 'product/1673423876_3.front-1.webp', 'first', '2023-01-11 14:57:56', '2023-01-17 15:44:49'),
(50, 12, 12, 'product/1673423876_6.back-1.webp', 'second', '2023-01-11 14:57:56', '2023-01-17 19:09:04'),
(63, 11, 11, 'product/1673425746_TBAV0322150_1.webp', 'first', '2023-01-11 15:29:06', '2023-01-17 19:09:28'),
(64, 11, 11, 'product/1673425746_TBAV0322150_2.webp', 'second', '2023-01-11 15:29:06', '2023-01-17 19:09:28'),
(65, 11, 11, 'product/1673425746_TBAV0322150_3.webp', 'thild', '2023-01-11 15:29:06', '2023-01-17 19:09:28'),
(66, 11, 11, 'product/1673425746_TBAV0322150_4.jpg', 'fourth', '2023-01-11 15:29:06', '2023-01-17 19:09:28'),
(67, 12, 12, 'product/1673426036_1.cover_1.webp', 'thild', '2023-01-11 15:33:56', '2023-01-17 19:09:04'),
(68, 12, 12, 'product/1673426036_2.close_up.webp', 'fourth', '2023-01-11 15:33:56', '2023-01-17 19:09:04'),
(69, 12, 12, 'product/1673426036_4.close_up-2.webp', 'fifth', '2023-01-11 15:33:56', '2023-01-17 19:09:04'),
(70, 4, 4, 'product/1673428899_DVSH082205_1.avif', NULL, '2023-01-11 16:21:39', '2023-01-11 16:21:39'),
(71, 4, 4, 'product/1673428899_DVSH082205_2.avif', NULL, '2023-01-11 16:21:39', '2023-01-11 16:21:39'),
(72, 4, 4, 'product/1673428899_DVSH082205_3.webp', NULL, '2023-01-11 16:21:39', '2023-01-11 16:21:39'),
(73, 3, 3, 'product/1673429302_ISTC052211_1.avif', NULL, '2023-01-11 16:28:22', '2023-01-11 16:28:22'),
(74, 3, 3, 'product/1673429302_ISTC052211_2.avif', NULL, '2023-01-11 16:28:22', '2023-01-11 16:28:22'),
(75, 3, 3, 'product/1673429302_ISTC052211_3.avif', NULL, '2023-01-11 16:28:22', '2023-01-11 16:28:22'),
(76, 2, 2, 'product/1673429943_AVNC062126_1.webp', NULL, '2023-01-11 16:39:03', '2023-01-11 16:39:03'),
(77, 2, 2, 'product/1673429943_AVNC062126_2.webp', NULL, '2023-01-11 16:39:03', '2023-01-11 16:39:03'),
(78, 2, 2, 'product/1673429943_AVNC062126_3.webp', NULL, '2023-01-11 16:39:03', '2023-01-11 16:39:03'),
(79, 2, 2, 'product/1673429943_AVNC062126_4.webp', NULL, '2023-01-11 16:39:03', '2023-01-11 16:39:03'),
(80, 1, 1, 'product/1673430067_hetc082254_2.webp', NULL, '2023-01-11 16:41:07', '2023-01-11 16:41:07'),
(81, 1, 1, 'product/1673430067_hetc082254_3.webp', NULL, '2023-01-11 16:41:07', '2023-01-11 16:41:07'),
(82, 1, 1, 'product/1673430067_hetc082254_4.webp', NULL, '2023-01-11 16:41:07', '2023-01-11 16:41:07'),
(83, 1, 1, 'product/1673430067_hetc082254_5.webp', NULL, '2023-01-11 16:41:07', '2023-01-11 16:41:07'),
(84, 1, 1, 'product/1673430067_hetc082254_6.webp', NULL, '2023-01-11 16:41:07', '2023-01-11 16:41:07'),
(85, 10, 10, 'product/1673430864_FSPC072220_1.avif', 'first', '2023-01-11 16:54:24', '2023-01-17 19:09:48'),
(86, 10, 10, 'product/1673430864_FSPC072220_2.avif', 'second', '2023-01-11 16:54:24', '2023-01-17 19:09:48'),
(87, 10, 10, 'product/1673430864_FSPC072220_3.avif', 'thild', '2023-01-11 16:54:24', '2023-01-17 19:09:48'),
(88, 10, 10, 'product/1673430864_FSPC072220_4.webp', 'fourth', '2023-01-11 16:54:24', '2023-01-17 19:10:02'),
(89, 9, 9, 'product/1673430986_HOUS122119_1.webp', NULL, '2023-01-11 16:56:26', '2023-01-11 16:56:26'),
(90, 9, 9, 'product/1673430986_HOUS122119_2.webp', NULL, '2023-01-11 16:56:26', '2023-01-11 16:56:26'),
(91, 9, 9, 'product/1673430986_HOUS122119_3.webp', NULL, '2023-01-11 16:56:26', '2023-01-11 16:56:26'),
(92, 9, 9, 'product/1673430986_HOUS122119_4.webp', NULL, '2023-01-11 16:56:26', '2023-01-11 16:56:26'),
(93, 8, 8, 'product/1673431683_TPKC092228_1.webp', NULL, '2023-01-11 17:08:03', '2023-01-11 17:08:03'),
(94, 8, 8, 'product/1673431683_TPKC092228_2.webp', NULL, '2023-01-11 17:08:03', '2023-01-11 17:08:03'),
(95, 8, 8, 'product/1673431683_TPKC092228_3.webp', NULL, '2023-01-11 17:08:03', '2023-01-11 17:08:03'),
(96, 8, 8, 'product/1673431683_TPKC092228_4.webp', NULL, '2023-01-11 17:08:03', '2023-01-11 17:08:03'),
(97, 7, 7, 'product/1673431985_ANBP082214_1.webp', NULL, '2023-01-11 17:13:05', '2023-01-11 17:13:05'),
(98, 7, 7, 'product/1673431985_parul_gg_fe3h1557.webp', NULL, '2023-01-11 17:13:05', '2023-01-11 17:13:05'),
(99, 7, 7, 'product/1673431985_ANBP082214_3.avif', NULL, '2023-01-11 17:13:05', '2023-01-11 17:13:05'),
(101, 6, 6, 'product/1673433080_hetc082268_1.webp', NULL, '2023-01-11 17:31:20', '2023-01-11 17:31:20'),
(102, 6, 6, 'product/1673433080_hetc082268_2.webp', NULL, '2023-01-11 17:31:20', '2023-01-11 17:31:20'),
(103, 6, 6, 'product/1673433080_hetc082268_3.webp', NULL, '2023-01-11 17:31:20', '2023-01-11 17:31:20'),
(104, 6, 6, 'product/1673433080_hetc082268_4.webp', NULL, '2023-01-11 17:31:20', '2023-01-11 17:31:20'),
(105, 6, 6, 'product/1673433080_hetc082268_5.webp', NULL, '2023-01-11 17:31:20', '2023-01-11 17:31:20'),
(106, 6, 6, 'product/1673433080_hetc082268_6.webp', NULL, '2023-01-11 17:31:20', '2023-01-11 17:31:20'),
(107, 5, 5, 'product/1673433257_TIBC042101_1.webp', NULL, '2023-01-11 17:34:17', '2023-01-11 17:34:17'),
(108, 5, 5, 'product/1673433257_TIBC042101_2.jpg', NULL, '2023-01-11 17:34:17', '2023-01-11 17:34:17'),
(109, 5, 5, 'product/1673433257_TIBC042101_3.webp', NULL, '2023-01-11 17:34:17', '2023-01-11 17:34:17'),
(110, 5, 5, 'product/1673433257_TIBC042101_4.webp', NULL, '2023-01-11 17:34:17', '2023-01-11 17:34:17'),
(111, 13, 14, 'product/1674561323_Chrysanthemum.jpg', 'c', '2023-01-24 18:55:23', '2023-01-24 18:55:23'),
(112, 13, 14, 'product/1674561323_Desert.jpg', 'd', '2023-01-24 18:55:23', '2023-01-24 18:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `product_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(9, 25, 1, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(10, 25, 2, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(11, 32, 1, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(12, 32, 2, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(19, 17, 1, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(20, 17, 3, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(25, 1, 1, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(26, 1, 2, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(37, 39, 1, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(38, 39, 2, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(41, 45, 1, '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(42, 45, 2, '2021-11-08 20:29:55', '2021-11-08 20:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_gifts_by_occasions`
--

CREATE TABLE `product_gifts_by_occasions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `gifts_by_occasion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_gifts_by_occasions`
--

INSERT INTO `product_gifts_by_occasions` (`id`, `product_id`, `gifts_by_occasion_id`, `created_at`, `updated_at`) VALUES
(50, 39, 1, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(51, 39, 2, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(52, 39, 4, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(53, 31, 1, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(54, 31, 3, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(55, 31, 5, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(56, 31, 7, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(57, 31, 9, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(58, 31, 11, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(59, 24, 2, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(60, 24, 4, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(61, 24, 6, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(62, 24, 8, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(63, 24, 11, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(64, 16, 1, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(65, 16, 3, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(66, 16, 5, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(67, 16, 7, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(68, 16, 9, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(69, 16, 11, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(72, 45, 1, '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(73, 45, 2, '2021-11-08 20:29:55', '2021-11-08 20:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_ingredients`
--

CREATE TABLE `product_ingredients` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_ingredients`
--

INSERT INTO `product_ingredients` (`id`, `product_id`, `quantity`, `value`, `created_at`, `updated_at`) VALUES
(71, 3, '1.5 oz', 'Johnnie Walker Black Label', '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(72, 3, '6 oz', 'Club soda', '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(75, 4, '1.5 oz', 'Johnnie Walker Aged 18 Years', '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(76, 4, NULL, 'Ice Cubes (optional)', '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(77, 5, NULL, NULL, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(78, 6, NULL, NULL, '2021-09-13 18:42:17', '2021-09-13 18:42:17'),
(79, 7, NULL, NULL, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(80, 8, NULL, NULL, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(84, 9, NULL, NULL, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(85, 10, NULL, NULL, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(87, 11, NULL, NULL, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(89, 13, NULL, NULL, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(90, 14, NULL, NULL, '2021-09-14 12:14:12', '2021-09-14 12:14:12'),
(91, 15, NULL, NULL, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(103, 12, NULL, NULL, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(109, 18, '2 oz.', 'Woodford Reserve Double Oaked Kentucky Straight Bourbon Whiskey', '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(110, 18, '1/2 oz.', 'Demerara Syrup', '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(111, 18, '3 Dashes', 'Angostura® Bitters', '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(112, 18, '2 Dashes', 'Regans’ No. 6® orange bitters', '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(113, 18, 'Garnish', 'Orange Peel', '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(114, 19, '2 oz', 'Woodford Reserve Kentucky Straight Bourbon Whiskey', '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(115, 19, '1/2 oz', 'Demerara Syrup', '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(116, 19, '3 Dashes', 'Angostura® Bitters', '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(117, 19, '2 Dashes', 'Angostura® Bitters', '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(118, 19, '2 Dashes', 'Regans’ No. 6® Orange Bitters', '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(119, 19, 'Garnish', 'Orange Peel', '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(124, 20, '2 oz', 'Woodford Reserve® Bourbon', '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(125, 20, '3/4 oz', 'Sweet Vermouth', '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(126, 20, '3 dashes', 'Angostura Bitters', '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(127, 20, 'One', 'Cherry', '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(128, 21, NULL, NULL, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(129, 22, NULL, NULL, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(130, 23, NULL, NULL, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(133, 26, NULL, NULL, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(135, 28, NULL, NULL, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(140, 33, NULL, NULL, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(141, 34, NULL, NULL, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(142, 35, NULL, NULL, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(144, 36, NULL, NULL, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(145, 37, NULL, NULL, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(173, 25, NULL, NULL, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(174, 32, NULL, NULL, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(188, 2, NULL, NULL, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(189, 17, '2 oz.', 'Woodford Reserve Kentucky Straight Bourbon Whiskey', '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(190, 17, '1/2 oz.', 'Demerara Syrup', '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(191, 17, '3 Dashes', 'Angostura® Bitters', '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(192, 17, '2 Dashes', 'Regans’ No. 6® Orange Bitters', '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(193, 17, 'Garnish', 'Orange Peel', '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(200, 1, '1.5 oz.', 'Johnnie Walker Blue Label', '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(201, 1, '1 tail', 'Glass of chilled water', '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(218, 39, NULL, NULL, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(219, 31, NULL, NULL, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(220, 24, NULL, NULL, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(221, 16, '1.5 parts', 'The Glenlivet Founder\'s Reserve', '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(222, 16, '1 part', 'Lilet Blanc or Cocchi Americano', '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(223, 16, '1 Dash', 'Orange and Angostura bitters', '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(229, 42, NULL, NULL, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(230, 41, NULL, NULL, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(231, 40, NULL, NULL, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(232, 38, NULL, NULL, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(233, 30, NULL, NULL, '2021-10-04 13:11:50', '2021-10-04 13:11:50'),
(234, 29, NULL, NULL, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(235, 27, NULL, NULL, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(236, 44, NULL, NULL, '2021-11-08 20:23:54', '2021-11-08 20:23:54'),
(239, 45, '12', 'fgsdfg', '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(240, 45, '13', 'dfghdfgh', '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(254, 43, NULL, NULL, '2021-11-29 08:36:56', '2021-11-29 08:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_price_ranges`
--

CREATE TABLE `product_price_ranges` (
  `id` int(11) NOT NULL,
  `price_range` varchar(50) NOT NULL,
  `price_range_array` varchar(255) NOT NULL,
  `price_range_string` varchar(255) NOT NULL,
  `sub_category_price_range_string` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_price_ranges`
--

INSERT INTO `product_price_ranges` (`id`, `price_range`, `price_range_array`, `price_range_string`, `sub_category_price_range_string`, `created_at`, `updated_at`) VALUES
(1, '0% - 20%', '[0,50]', 'Under $50', 'Under 50', '2021-08-17 14:15:11', '2023-01-20 09:54:39'),
(2, '21% - 30%', '[50,100]', '$50 to $100', '50 to 100', '2021-08-17 14:15:11', '2023-01-20 09:54:45'),
(3, '31% - 40%', '[100,200]', '$100 to $200', '100 to 200', '2021-08-17 14:15:31', '2023-01-20 09:54:52'),
(4, '41% - 50%', '[200,500]', '$200 to $500', '200 to 500', '2021-08-17 14:15:31', '2023-01-20 09:55:04'),
(5, 'Above 50%', '[500,1000000000]', '$500 & Up', '500 & Up', '2021-08-17 14:15:40', '2023-01-20 09:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_recipes`
--

CREATE TABLE `product_recipes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `step` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_recipes`
--

INSERT INTO `product_recipes` (`id`, `product_id`, `step`, `created_at`, `updated_at`) VALUES
(454, 13, 'Saree Fabric: Pure Georgette', '2023-01-24 18:55:23', '2023-01-24 18:55:23'),
(485, 11, 'Saree Fabric: Pure Georgette', '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(486, 11, 'Blouse Fabric: Pure Georgette', '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(487, 11, 'Gentle Hand Wash', '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(488, 10, 'Saree Fabric: Georgette', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(489, 10, 'Blouse Fabric: Georgette', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(490, 10, 'Dry Clean Only', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(491, 9, 'Saree Fabric: Pure Georgette', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(492, 9, 'Blouse Fabric: Pure Georgette', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(493, 9, 'Gentle Hand Wash', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(494, 8, 'Saree Fabric: Georgette', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(495, 8, 'Blouse Fabric: Georgette', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(496, 8, 'Dry Clean Only', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(497, 7, 'Saree Fabric: Pure Cotton', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(498, 7, 'Blouse Fabric: Pure Cotton', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(499, 7, 'Gentle Hand Wash', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(500, 6, 'Saree Fabric: Cotton', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(501, 6, 'Blouse Fabric: Cotton', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(502, 6, 'Gentle Hand Wash', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(503, 5, 'Saree Fabric: Pure Cotton', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(504, 5, 'Blouse Fabric: Pure Cotton', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(505, 5, 'Gentle Machine Wash', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(506, 4, 'Saree Fabric: Pure Cotton', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(507, 4, 'Blouse Fabric: Pure Cotton', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(508, 4, 'Gentle Hand Wash', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(509, 3, 'Saree Fabric: Chiffon', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(510, 3, 'Blouse Fabric: Pure Georgette', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(511, 3, 'Gentle Hand Wash', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(512, 2, 'Saree Fabric: Pure Cotton', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(513, 2, 'Blouse Fabric: Pure Cotton', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(514, 2, 'Gentle Machine Wash', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(521, 1, 'Saree Fabric: Pure Cotton', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(522, 1, 'Blouse Fabric: Pure Cotton', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(523, 1, 'Gentle Machine Wash', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(530, 12, 'Saree Fabric: Pure Georgette', '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(531, 12, 'Blouse Fabric: Pure Georgette', '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(532, 12, 'Gentle Hand Wash', '2023-04-12 18:26:06', '2023-04-12 18:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `specifications` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `product_id`, `specifications`, `created_at`, `updated_at`) VALUES
(876, 13, 'Saree Pattern: Printed', '2023-01-24 18:55:23', '2023-01-24 18:55:23'),
(939, 11, 'Saree Pattern: Solid', '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(940, 11, 'Blouse Pattern: Embellished', '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(941, 11, 'Print and Pattern Type: Solid', '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(942, 11, 'Saree Style: Stitched Ruffle Saree', '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(943, 10, 'Saree Pattern: Solid With Embellished Zari Border', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(944, 10, 'Blouse Pattern: Embellished', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(945, 10, 'Print and Pattern Type: Solid', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(946, 10, 'Saree Style: Ready to Wear', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(947, 10, 'Occasion: Party Wear', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(948, 10, 'Disclaimer: The model is wearing the stitched blouse that', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(949, 10, 'comes with the saree.', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(950, 9, 'Saree Pattern: Solid', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(951, 9, 'Blouse Pattern: Embellished', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(952, 9, 'Print and Pattern Type: Solid', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(953, 9, 'Saree Style: Palazzo Saree', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(954, 9, 'Occasion: Party Wear', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(955, 9, 'Disclaimer: The saree comes with an stitched blouse piece.', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(956, 8, 'Saree Pattern: Solid With Embellished Zari Border', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(957, 8, 'Blouse Pattern: Embellished', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(958, 8, 'Print and Pattern Type: Solid', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(959, 8, 'Saree Style: Ready to Wear', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(960, 8, 'Occasion: Party Wear', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(961, 8, 'Disclaimer: The model is wearing the stitched blouse that comes with the saree.', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(962, 7, 'Saree Pattern: Printed', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(963, 7, 'Blouse Pattern: Printed', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(964, 7, 'Print and Pattern Type: Floral Print', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(965, 7, 'Saree Style: Regular Saree', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(966, 7, 'Occasion: Casual Wear', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(967, 7, 'Disclaimer: The saree comes with an unstitched blouse piece, Check the image of the blouse piece to understand how the actual blouse piece looks like.', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(968, 6, 'Saree Pattern: Woven Design', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(969, 6, 'Blouse Pattern: Solid', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(970, 6, 'Print and Pattern Type: Geometric', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(971, 6, 'Saree Style: Regular Saree', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(972, 6, 'Occasion: Daily Wear', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(973, 6, 'Disclaimer: The saree comes with an unstitched blouse piece, Check the image of the blouse piece to understand how the actual blouse piece looks like.', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(974, 5, 'Saree Pattern: Printed', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(975, 5, 'Blouse Pattern: Printed', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(976, 5, 'Print and Pattern Type: Batik', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(977, 5, 'Saree Style: Regular Saree', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(978, 5, 'Occasion: Daily Wear', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(979, 5, 'Disclaimer: The saree comes with an unstitched blouse piece, Check the image of the blouse piece to understand how the actual blouse piece looks like.', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(980, 4, 'Saree Pattern: Printed', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(981, 4, 'Blouse Pattern: Solid', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(982, 4, 'Print and Pattern Type: Ethnic Motifs', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(983, 4, 'Saree Style: Regular Saree', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(984, 4, 'Occasion: Casual Wear', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(985, 4, 'Disclaimer: The saree comes with an unstitched blouse piece, Check the image of the blouse piece to understand how the actual blouse piece looks like.', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(986, 3, 'Saree Pattern: Printed', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(987, 3, 'Blouse Pattern: Solid', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(988, 3, 'Print and Pattern Type: Floral', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(989, 3, 'Saree Style: Regular Saree', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(990, 3, 'Occasion: Casual Wear', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(991, 3, 'Disclaimer: The saree comes with an unstitched blouse piece, Check the image of the blouse piece to understand how the actual blouse piece looks like.', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(992, 2, 'Saree Pattern: Printed', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(993, 2, 'Blouse Pattern: Solid', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(994, 2, 'Print and Pattern Type: Paisley', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(995, 2, 'Saree Style: Regular Saree', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(996, 2, 'Occasion: Daily Wear', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(997, 2, 'Disclaimer: The saree comes with an unstitched blouse piece, Check the image of the blouse piece to understand how the actual blouse piece looks like.', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(1010, 1, 'Saree Pattern: Printed', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(1011, 1, 'Blouse Pattern: Printed', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(1012, 1, 'Print and Pattern Type: Geometric Print', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(1013, 1, 'Saree Style: Regular Saree', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(1014, 1, 'Occasion: Daily Wear', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(1015, 1, 'Disclaimer: The saree comes with an unstitched blouse piece, Check the image of the blouse piece to understand how the actual blouse piece looks like.', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(1028, 12, 'Saree Pattern: Self Design', '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(1029, 12, 'Blouse Pattern: Embellished', '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(1030, 12, 'Print and Pattern Type: Self Design', '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(1031, 12, 'Saree Style: Stitched Saree', '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(1032, 12, 'Occasion: Party Wear', '2023-04-12 18:26:06', '2023-04-12 18:26:06'),
(1033, 12, 'Disclaimer: The saree comes with an stitched blouse piece.', '2023-04-12 18:26:06', '2023-04-12 18:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_spirited_changes`
--

CREATE TABLE `product_spirited_changes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `spirited_change_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_spirited_changes`
--

INSERT INTO `product_spirited_changes` (`id`, `product_id`, `spirited_change_id`, `created_at`, `updated_at`) VALUES
(4, 39, 1, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(5, 39, 2, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(6, 31, 1, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(7, 31, 2, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(8, 24, 1, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(9, 24, 2, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(10, 16, 1, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(11, 16, 2, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(14, 45, 1, '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(15, 45, 2, '2021-11-08 20:29:55', '2021-11-08 20:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_states`
--

CREATE TABLE `product_states` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_states`
--

INSERT INTO `product_states` (`id`, `product_id`, `state_id`, `created_at`, `updated_at`) VALUES
(224, 3, 3924, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(225, 3, 3926, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(226, 3, 3929, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(227, 3, 3930, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(228, 3, 3939, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(229, 3, 3949, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(230, 3, 3950, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(231, 3, 3951, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(232, 3, 3955, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(233, 3, 3962, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(234, 3, 3975, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(235, 3, 3978, '2021-09-13 17:40:15', '2021-09-13 17:40:15'),
(272, 4, 3921, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(273, 4, 3922, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(274, 4, 3924, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(275, 4, 3926, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(276, 4, 3927, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(277, 4, 3928, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(278, 4, 3929, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(279, 4, 3930, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(280, 4, 3934, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(281, 4, 3935, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(282, 4, 3936, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(283, 4, 3938, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(284, 4, 3939, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(285, 4, 3941, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(286, 4, 3942, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(287, 4, 3943, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(288, 4, 3946, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(289, 4, 3948, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(290, 4, 3949, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(291, 4, 3950, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(292, 4, 3951, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(293, 4, 3952, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(294, 4, 3953, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(295, 4, 3955, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(296, 4, 3957, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(297, 4, 3958, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(298, 4, 3960, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(299, 4, 3962, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(300, 4, 3965, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(301, 4, 3966, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(302, 4, 3967, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(303, 4, 3970, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(304, 4, 3973, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(305, 4, 3975, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(306, 4, 3977, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(307, 4, 3978, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(308, 5, 3920, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(309, 5, 3921, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(310, 5, 3924, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(311, 5, 3926, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(312, 5, 3927, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(313, 5, 3928, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(314, 5, 3929, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(315, 5, 3930, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(316, 5, 3934, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(317, 5, 3935, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(318, 5, 3936, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(319, 5, 3938, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(320, 5, 3939, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(321, 5, 3941, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(322, 5, 3942, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(323, 5, 3943, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(324, 5, 3946, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(325, 5, 3948, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(326, 5, 3949, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(327, 5, 3950, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(328, 5, 3951, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(329, 5, 3952, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(330, 5, 3953, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(331, 5, 3956, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(332, 5, 3957, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(333, 5, 3958, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(334, 5, 3966, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(335, 5, 3970, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(336, 5, 3973, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(337, 5, 3975, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(338, 5, 3977, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(339, 5, 3978, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(340, 6, 3929, '2021-09-13 18:42:17', '2021-09-13 18:42:17'),
(341, 6, 3930, '2021-09-13 18:42:17', '2021-09-13 18:42:17'),
(342, 6, 3939, '2021-09-13 18:42:17', '2021-09-13 18:42:17'),
(343, 6, 3950, '2021-09-13 18:42:17', '2021-09-13 18:42:17'),
(344, 6, 3978, '2021-09-13 18:42:17', '2021-09-13 18:42:17'),
(345, 7, 3921, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(346, 7, 3922, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(347, 7, 3924, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(348, 7, 3926, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(349, 7, 3927, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(350, 7, 3928, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(351, 7, 3929, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(352, 7, 3930, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(353, 7, 3934, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(354, 7, 3935, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(355, 7, 3936, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(356, 7, 3938, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(357, 7, 3939, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(358, 7, 3941, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(359, 7, 3942, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(360, 7, 3943, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(361, 7, 3946, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(362, 7, 3948, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(363, 7, 3949, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(364, 7, 3950, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(365, 7, 3951, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(366, 7, 3952, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(367, 7, 3953, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(368, 7, 3955, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(369, 7, 3956, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(370, 7, 3957, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(371, 7, 3958, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(372, 7, 3960, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(373, 7, 3962, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(374, 7, 3965, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(375, 7, 3966, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(376, 7, 3967, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(377, 7, 3970, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(378, 7, 3975, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(379, 7, 3977, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(380, 7, 3978, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(381, 8, 3921, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(382, 8, 3922, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(383, 8, 3924, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(384, 8, 3926, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(385, 8, 3927, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(386, 8, 3928, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(387, 8, 3929, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(388, 8, 3930, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(389, 8, 3935, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(390, 8, 3936, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(391, 8, 3939, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(392, 8, 3941, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(393, 8, 3942, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(394, 8, 3943, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(395, 8, 3946, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(396, 8, 3948, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(397, 8, 3949, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(398, 8, 3950, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(399, 8, 3951, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(400, 8, 3952, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(401, 8, 3953, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(402, 8, 3955, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(403, 8, 3956, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(404, 8, 3957, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(405, 8, 3958, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(406, 8, 3960, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(407, 8, 3962, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(408, 8, 3966, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(409, 8, 3967, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(410, 8, 3970, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(411, 8, 3973, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(412, 8, 3975, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(413, 8, 3977, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(414, 8, 3978, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(523, 9, 3921, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(524, 9, 3922, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(525, 9, 3924, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(526, 9, 3926, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(527, 9, 3927, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(528, 9, 3928, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(529, 9, 3929, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(530, 9, 3930, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(531, 9, 3934, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(532, 9, 3935, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(533, 9, 3936, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(534, 9, 3938, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(535, 9, 3939, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(536, 9, 3941, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(537, 9, 3942, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(538, 9, 3943, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(539, 9, 3946, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(540, 9, 3948, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(541, 9, 3949, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(542, 9, 3950, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(543, 9, 3951, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(544, 9, 3952, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(545, 9, 3953, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(546, 9, 3955, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(547, 9, 3956, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(548, 9, 3957, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(549, 9, 3958, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(550, 9, 3960, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(551, 9, 3962, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(552, 9, 3966, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(553, 9, 3967, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(554, 9, 3970, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(555, 9, 3973, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(556, 9, 3975, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(557, 9, 3977, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(558, 9, 3978, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(559, 10, 3921, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(560, 10, 3922, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(561, 10, 3924, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(562, 10, 3926, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(563, 10, 3927, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(564, 10, 3928, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(565, 10, 3929, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(566, 10, 3930, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(567, 10, 3934, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(568, 10, 3935, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(569, 10, 3936, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(570, 10, 3939, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(571, 10, 3941, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(572, 10, 3942, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(573, 10, 3943, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(574, 10, 3946, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(575, 10, 3948, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(576, 10, 3949, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(577, 10, 3950, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(578, 10, 3951, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(579, 10, 3952, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(580, 10, 3953, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(581, 10, 3955, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(582, 10, 3956, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(583, 10, 3957, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(584, 10, 3958, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(585, 10, 3960, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(586, 10, 3962, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(587, 10, 3965, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(588, 10, 3966, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(589, 10, 3967, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(590, 10, 3970, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(591, 10, 3973, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(592, 10, 3975, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(593, 10, 3977, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(594, 10, 3978, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(628, 11, 3921, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(629, 11, 3922, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(630, 11, 3924, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(631, 11, 3926, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(632, 11, 3927, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(633, 11, 3928, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(634, 11, 3929, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(635, 11, 3930, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(636, 11, 3934, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(637, 11, 3935, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(638, 11, 3936, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(639, 11, 3941, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(640, 11, 3943, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(641, 11, 3946, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(642, 11, 3948, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(643, 11, 3949, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(644, 11, 3950, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(645, 11, 3951, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(646, 11, 3952, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(647, 11, 3953, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(648, 11, 3955, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(649, 11, 3957, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(650, 11, 3958, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(651, 11, 3960, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(652, 11, 3962, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(653, 11, 3965, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(654, 11, 3966, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(655, 11, 3967, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(656, 11, 3970, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(657, 11, 3973, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(658, 11, 3975, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(659, 11, 3977, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(660, 11, 3978, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(673, 13, 3920, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(674, 13, 3921, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(675, 13, 3922, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(676, 13, 3924, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(677, 13, 3927, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(678, 13, 3928, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(679, 13, 3931, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(680, 13, 3933, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(681, 13, 3937, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(682, 13, 3979, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(683, 13, 3947, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(684, 13, 3951, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(685, 13, 3956, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(686, 13, 3957, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(687, 13, 3958, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(688, 13, 3962, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(689, 13, 3965, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(690, 13, 3969, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(691, 13, 3970, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(692, 13, 3973, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(693, 13, 3975, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(694, 13, 3976, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(695, 13, 3977, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(696, 13, 3978, '2021-09-14 12:01:54', '2021-09-14 12:01:54'),
(697, 14, 3934, '2021-09-14 12:14:12', '2021-09-14 12:14:12'),
(698, 15, 3920, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(699, 15, 3921, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(700, 15, 3922, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(701, 15, 3924, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(702, 15, 3926, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(703, 15, 3927, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(704, 15, 3928, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(705, 15, 3929, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(706, 15, 3930, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(707, 15, 3934, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(708, 15, 3935, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(709, 15, 3939, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(710, 15, 3941, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(711, 15, 3948, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(712, 15, 3949, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(713, 15, 3950, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(714, 15, 3951, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(715, 15, 3952, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(716, 15, 3953, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(717, 15, 3955, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(718, 15, 3956, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(719, 15, 3957, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(720, 15, 3958, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(721, 15, 3960, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(722, 15, 3966, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(723, 15, 3967, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(724, 15, 3970, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(725, 15, 3973, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(726, 15, 3975, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(727, 15, 3977, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(728, 15, 3978, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(803, 12, 3922, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(804, 12, 3930, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(805, 12, 3934, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(806, 12, 3935, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(807, 12, 3939, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(808, 12, 3948, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(809, 12, 3950, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(810, 12, 3951, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(811, 12, 3953, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(812, 12, 3955, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(813, 12, 3960, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(814, 12, 3973, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(840, 18, 3921, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(841, 18, 3922, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(842, 18, 3924, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(843, 18, 3926, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(844, 18, 3927, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(845, 18, 3928, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(846, 18, 3929, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(847, 18, 3935, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(848, 18, 3939, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(849, 18, 3942, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(850, 18, 3943, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(851, 18, 3951, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(852, 18, 3956, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(853, 18, 3957, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(854, 18, 3958, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(855, 18, 3960, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(856, 18, 3962, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(857, 18, 3965, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(858, 18, 3966, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(859, 18, 3967, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(860, 18, 3969, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(861, 18, 3973, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(862, 18, 3975, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(863, 18, 3977, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(864, 18, 3978, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(865, 19, 3921, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(866, 19, 3924, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(867, 19, 3926, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(868, 19, 3927, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(869, 19, 3928, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(870, 19, 3929, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(871, 19, 3930, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(872, 19, 3934, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(873, 19, 3935, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(874, 19, 3936, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(875, 19, 3939, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(876, 19, 3941, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(877, 19, 3942, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(878, 19, 3943, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(879, 19, 3946, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(880, 19, 3948, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(881, 19, 3949, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(882, 19, 3957, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(883, 19, 3958, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(884, 19, 3966, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(885, 19, 3967, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(886, 19, 3970, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(887, 19, 3974, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(888, 19, 3977, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(889, 19, 3978, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(921, 20, 3921, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(922, 20, 3922, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(923, 20, 3924, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(924, 20, 3926, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(925, 20, 3927, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(926, 20, 3929, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(927, 20, 3930, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(928, 20, 3935, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(929, 20, 3936, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(930, 20, 3939, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(931, 20, 3942, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(932, 20, 3943, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(933, 20, 3948, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(934, 20, 3949, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(935, 20, 3950, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(936, 20, 3951, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(937, 20, 3952, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(938, 20, 3953, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(939, 20, 3955, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(940, 20, 3957, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(941, 20, 3958, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(942, 20, 3962, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(943, 20, 3963, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(944, 20, 3965, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(945, 20, 3966, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(946, 20, 3967, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(947, 20, 3970, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(948, 20, 3973, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(949, 20, 3975, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(950, 20, 3977, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(951, 20, 3978, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(952, 21, 3921, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(953, 21, 3926, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(954, 21, 3927, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(955, 21, 3928, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(956, 21, 3929, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(957, 21, 3930, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(958, 21, 3936, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(959, 21, 3942, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(960, 21, 3946, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(961, 21, 3948, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(962, 21, 3949, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(963, 21, 3950, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(964, 21, 3951, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(965, 21, 3952, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(966, 21, 3953, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(967, 21, 3957, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(968, 21, 3958, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(969, 21, 3960, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(970, 21, 3962, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(971, 21, 3965, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(972, 21, 3966, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(973, 21, 3967, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(974, 21, 3970, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(975, 21, 3973, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(976, 21, 3975, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(977, 21, 3977, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(978, 21, 3978, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(979, 22, 3921, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(980, 22, 3922, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(981, 22, 3924, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(982, 22, 3926, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(983, 22, 3927, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(984, 22, 3928, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(985, 22, 3929, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(986, 22, 3930, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(987, 22, 3934, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(988, 22, 3935, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(989, 22, 3937, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(990, 22, 3938, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(991, 22, 3939, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(992, 22, 3941, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(993, 22, 3942, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(994, 22, 3980, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(995, 22, 3948, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(996, 22, 3949, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(997, 22, 3951, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(998, 22, 3952, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(999, 22, 3953, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1000, 22, 3955, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1001, 22, 3956, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1002, 22, 3957, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1003, 22, 3958, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1004, 22, 3960, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1005, 22, 3962, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1006, 22, 3965, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1007, 22, 3966, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1008, 22, 3967, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1009, 22, 3970, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1010, 22, 3973, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1011, 22, 3975, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1012, 22, 3977, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1013, 22, 3978, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(1014, 23, 3921, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1015, 23, 3924, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1016, 23, 3926, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1017, 23, 3927, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1018, 23, 3928, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1019, 23, 3929, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1020, 23, 3930, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1021, 23, 3938, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1022, 23, 3939, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1023, 23, 3943, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1024, 23, 3948, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1025, 23, 3949, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1026, 23, 3950, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1027, 23, 3952, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1028, 23, 3953, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1029, 23, 3955, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1030, 23, 3956, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1031, 23, 3958, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1032, 23, 3960, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1033, 23, 3975, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1034, 23, 3977, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(1062, 26, 3921, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1063, 26, 3924, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1064, 26, 3926, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1065, 26, 3927, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1066, 26, 3929, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1067, 26, 3930, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1068, 26, 3939, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1069, 26, 3942, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1070, 26, 3949, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1071, 26, 3950, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1072, 26, 3951, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1073, 26, 3952, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1074, 26, 3957, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1075, 26, 3958, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1076, 26, 3965, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1077, 26, 3966, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1078, 26, 3970, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1079, 26, 3973, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1080, 26, 3974, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1081, 26, 3977, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1082, 26, 3978, '2021-09-15 13:38:52', '2021-09-15 13:38:52'),
(1099, 28, 3921, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1100, 28, 3924, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1101, 28, 3926, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1102, 28, 3927, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1103, 28, 3929, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1104, 28, 3930, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1105, 28, 3936, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1106, 28, 3941, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1107, 28, 3949, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1108, 28, 3950, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1109, 28, 3952, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1110, 28, 3953, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1111, 28, 3957, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1112, 28, 3958, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1113, 28, 3960, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1114, 28, 3965, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1115, 28, 3966, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1116, 28, 3967, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1117, 28, 3974, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1118, 28, 3975, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1119, 28, 3977, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1120, 28, 3978, '2021-09-15 13:59:07', '2021-09-15 13:59:07'),
(1170, 33, 3921, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1171, 33, 3924, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1172, 33, 3926, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1173, 33, 3927, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1174, 33, 3929, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1175, 33, 3943, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1176, 33, 3979, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1177, 33, 3949, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1178, 33, 3950, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1179, 33, 3951, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1180, 33, 3952, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1181, 33, 3953, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1182, 33, 3955, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1183, 33, 3957, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1184, 33, 3958, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1185, 33, 3962, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1186, 33, 3965, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1187, 33, 3966, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1188, 33, 3967, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1189, 33, 3977, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1190, 33, 3978, '2021-09-15 14:49:30', '2021-09-15 14:49:30'),
(1191, 34, 3921, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1192, 34, 3924, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1193, 34, 3926, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1194, 34, 3927, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1195, 34, 3929, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1196, 34, 3935, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1197, 34, 3936, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1198, 34, 3939, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1199, 34, 3941, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1200, 34, 3942, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1201, 34, 3946, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1202, 34, 3948, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1203, 34, 3949, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1204, 34, 3950, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1205, 34, 3951, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1206, 34, 3952, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1207, 34, 3953, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1208, 34, 3956, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1209, 34, 3957, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1210, 34, 3958, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1211, 34, 3962, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1212, 34, 3965, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1213, 34, 3966, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1214, 34, 3967, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1215, 34, 3970, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1216, 34, 3974, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1217, 34, 3977, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1218, 34, 3978, '2021-09-15 14:55:18', '2021-09-15 14:55:18'),
(1219, 35, 3921, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1220, 35, 3922, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1221, 35, 3924, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1222, 35, 3926, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1223, 35, 3927, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1224, 35, 3935, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1225, 35, 3936, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1226, 35, 3937, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1227, 35, 3942, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1228, 35, 3948, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1229, 35, 3950, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1230, 35, 3951, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1231, 35, 3952, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1232, 35, 3953, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1233, 35, 3956, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1234, 35, 3957, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1235, 35, 3958, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1236, 35, 3962, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1237, 35, 3965, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1238, 35, 3966, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1239, 35, 3967, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1240, 35, 3975, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1241, 35, 3977, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1242, 35, 3978, '2021-09-15 15:04:37', '2021-09-15 15:04:37'),
(1269, 36, 3921, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1270, 36, 3924, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1271, 36, 3926, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1272, 36, 3927, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1273, 36, 3930, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1274, 36, 3935, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1275, 36, 3936, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1276, 36, 3941, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1277, 36, 3942, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1278, 36, 3948, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1279, 36, 3949, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1280, 36, 3950, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1281, 36, 3951, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1282, 36, 3952, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1283, 36, 3953, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1284, 36, 3955, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1285, 36, 3957, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1286, 36, 3958, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1287, 36, 3962, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1288, 36, 3966, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1289, 36, 3967, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1290, 36, 3970, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1291, 36, 3973, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1292, 36, 3974, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1293, 36, 3976, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1294, 36, 3977, '2021-09-15 15:57:29', '2021-09-15 15:57:29'),
(1295, 37, 3922, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1296, 37, 3924, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1297, 37, 3926, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1298, 37, 3929, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1299, 37, 3935, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1300, 37, 3939, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1301, 37, 3942, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1302, 37, 3949, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1303, 37, 3951, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1304, 37, 3952, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1305, 37, 3953, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1306, 37, 3955, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1307, 37, 3956, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1308, 37, 3958, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1309, 37, 3962, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1310, 37, 3966, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1311, 37, 3967, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1312, 37, 3974, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1313, 37, 3975, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1314, 37, 3977, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1315, 37, 3978, '2021-09-15 16:03:47', '2021-09-15 16:03:47'),
(1799, 25, 3921, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1800, 25, 3924, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1801, 25, 3926, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1802, 25, 3927, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1803, 25, 3929, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1804, 25, 3930, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1805, 25, 3933, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1806, 25, 3936, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1807, 25, 3939, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1808, 25, 3942, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1809, 25, 3943, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1810, 25, 3948, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1811, 25, 3950, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1812, 25, 3952, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1813, 25, 3957, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1814, 25, 3958, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1815, 25, 3966, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1816, 25, 3967, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1817, 25, 3975, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1818, 25, 3977, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(1819, 32, 3921, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1820, 32, 3926, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1821, 32, 3927, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1822, 32, 3929, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1823, 32, 3930, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1824, 32, 3935, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1825, 32, 3939, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1826, 32, 3941, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1827, 32, 3942, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1828, 32, 3943, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1829, 32, 3949, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1830, 32, 3950, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1831, 32, 3952, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1832, 32, 3953, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1833, 32, 3955, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1834, 32, 3956, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1835, 32, 3957, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1836, 32, 3958, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1837, 32, 3962, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1838, 32, 3965, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1839, 32, 3966, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1840, 32, 3967, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1841, 32, 3974, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1842, 32, 3975, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1843, 32, 3977, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1844, 32, 3978, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(1971, 2, 3919, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1972, 2, 3931, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1973, 2, 3943, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1974, 2, 3947, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1975, 2, 3952, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1976, 2, 3958, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1977, 2, 3965, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1978, 2, 3969, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1979, 2, 3975, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1980, 2, 3978, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(1981, 17, 3921, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1982, 17, 3922, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1983, 17, 3924, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1984, 17, 3926, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1985, 17, 3927, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1986, 17, 3929, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1987, 17, 3930, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1988, 17, 3936, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1989, 17, 3939, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1990, 17, 3946, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1991, 17, 3948, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1992, 17, 3949, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1993, 17, 3950, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1994, 17, 3955, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1995, 17, 3958, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1996, 17, 3975, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1997, 17, 3977, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(1998, 17, 3978, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(2084, 1, 3921, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2085, 1, 3924, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2086, 1, 3926, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2087, 1, 3927, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2088, 1, 3930, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2089, 1, 3934, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2090, 1, 3943, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2091, 1, 3949, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2092, 1, 3951, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2093, 1, 3955, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2094, 1, 3962, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2095, 1, 3975, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2096, 1, 3977, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2097, 1, 3978, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(2323, 39, 3921, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2324, 39, 3924, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2325, 39, 3927, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2326, 39, 3929, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2327, 39, 3930, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2328, 39, 3934, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2329, 39, 3935, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2330, 39, 3936, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2331, 39, 3939, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2332, 39, 3941, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2333, 39, 3948, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2334, 39, 3949, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2335, 39, 3951, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2336, 39, 3952, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2337, 39, 3953, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2338, 39, 3956, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2339, 39, 3957, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2340, 39, 3958, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2341, 39, 3962, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2342, 39, 3966, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2343, 39, 3967, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2344, 39, 3970, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2345, 39, 3975, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2346, 39, 3977, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2347, 39, 3978, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(2348, 31, 3921, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2349, 31, 3924, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2350, 31, 3927, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2351, 31, 3949, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2352, 31, 3953, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2353, 31, 3955, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2354, 31, 3965, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2355, 31, 3967, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2356, 31, 3974, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2357, 31, 3977, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(2358, 24, 3927, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(2359, 24, 3929, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(2360, 24, 3930, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(2361, 24, 3939, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(2362, 24, 3952, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(2363, 24, 3953, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(2364, 24, 3956, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(2365, 16, 3921, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2366, 16, 3922, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2367, 16, 3924, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2368, 16, 3926, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2369, 16, 3927, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2370, 16, 3928, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2371, 16, 3932, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2372, 16, 3935, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2373, 16, 3939, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2374, 16, 3941, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2375, 16, 3942, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2376, 16, 3943, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2377, 16, 3945, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2378, 16, 3946, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2379, 16, 3949, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2380, 16, 3950, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2381, 16, 3951, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2382, 16, 3952, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2383, 16, 3953, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2384, 16, 3955, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2385, 16, 3957, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2386, 16, 3958, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2387, 16, 3960, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2388, 16, 3962, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2389, 16, 3966, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2390, 16, 3967, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2391, 16, 3977, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2392, 16, 3978, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(2489, 42, 3924, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2490, 42, 3927, '2021-10-04 13:10:06', '2021-10-04 13:10:06');
INSERT INTO `product_states` (`id`, `product_id`, `state_id`, `created_at`, `updated_at`) VALUES
(2491, 42, 3928, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2492, 42, 3929, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2493, 42, 3939, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2494, 42, 3941, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2495, 42, 3942, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2496, 42, 3943, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2497, 42, 3946, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2498, 42, 3947, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2499, 42, 3948, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2500, 42, 3957, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2501, 42, 3958, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2502, 42, 3970, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2503, 42, 3975, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2504, 42, 3976, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(2505, 41, 3921, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2506, 41, 3922, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2507, 41, 3924, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2508, 41, 3929, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2509, 41, 3932, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2510, 41, 3933, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2511, 41, 3937, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2512, 41, 3939, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2513, 41, 3941, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2514, 41, 3947, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2515, 41, 3948, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2516, 41, 3949, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2517, 41, 3950, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2518, 41, 3951, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2519, 41, 3952, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2520, 41, 3953, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2521, 41, 3955, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2522, 41, 3956, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2523, 41, 3957, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2524, 41, 3962, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2525, 41, 3975, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2526, 41, 3976, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2527, 41, 3977, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(2528, 40, 3921, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2529, 40, 3924, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2530, 40, 3926, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2531, 40, 3927, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2532, 40, 3929, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2533, 40, 3930, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2534, 40, 3933, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2535, 40, 3936, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2536, 40, 3946, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2537, 40, 3949, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2538, 40, 3951, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2539, 40, 3952, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2540, 40, 3955, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2541, 40, 3956, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2542, 40, 3957, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2543, 40, 3963, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2544, 40, 3965, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2545, 40, 3967, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2546, 40, 3970, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2547, 40, 3975, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2548, 40, 3977, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(2549, 38, 3921, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2550, 38, 3924, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2551, 38, 3926, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2552, 38, 3927, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2553, 38, 3929, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2554, 38, 3935, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2555, 38, 3936, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2556, 38, 3941, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2557, 38, 3942, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2558, 38, 3948, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2559, 38, 3950, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2560, 38, 3953, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2561, 38, 3955, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2562, 38, 3956, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2563, 38, 3957, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2564, 38, 3958, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2565, 38, 3966, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2566, 38, 3967, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2567, 38, 3970, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2568, 38, 3975, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2569, 38, 3978, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(2570, 30, 3921, '2021-10-04 13:11:50', '2021-10-04 13:11:50'),
(2571, 30, 3924, '2021-10-04 13:11:50', '2021-10-04 13:11:50'),
(2572, 30, 3926, '2021-10-04 13:11:50', '2021-10-04 13:11:50'),
(2573, 30, 3951, '2021-10-04 13:11:50', '2021-10-04 13:11:50'),
(2574, 30, 3975, '2021-10-04 13:11:50', '2021-10-04 13:11:50'),
(2575, 29, 3924, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(2576, 29, 3930, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(2577, 29, 3934, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(2578, 29, 3939, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(2579, 29, 3951, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(2580, 29, 3952, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(2581, 29, 3956, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(2582, 29, 3978, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(2583, 27, 3921, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2584, 27, 3926, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2585, 27, 3927, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2586, 27, 3929, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2587, 27, 3936, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2588, 27, 3941, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2589, 27, 3942, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2590, 27, 3949, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2591, 27, 3952, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2592, 27, 3953, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2593, 27, 3956, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2594, 27, 3957, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2595, 27, 3958, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2596, 27, 3974, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2597, 27, 3977, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2598, 27, 3978, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(2601, 45, 3919, '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(2602, 45, 3920, '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(2837, 43, 3921, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2838, 43, 3922, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2839, 43, 3924, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2840, 43, 3926, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2841, 43, 3927, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2842, 43, 3930, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2843, 43, 3934, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2844, 43, 3936, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2845, 43, 3939, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2846, 43, 3951, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2847, 43, 3952, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2848, 43, 3958, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2849, 43, 3962, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2850, 43, 3963, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2851, 43, 3967, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2852, 43, 3970, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2853, 43, 3975, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(2854, 43, 3976, '2021-11-29 08:36:57', '2021-11-29 08:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_categories`
--

CREATE TABLE `product_sub_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_category_id` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sub_categories`
--

INSERT INTO `product_sub_categories` (`id`, `product_id`, `sub_category_id`, `created_at`, `updated_at`) VALUES
(43, 13, '1', '2023-01-24 18:55:23', '2023-01-24 18:55:23'),
(53, 11, '9', '2023-04-06 01:25:43', '2023-04-06 01:25:43'),
(54, 10, '4', '2023-04-06 01:25:53', '2023-04-06 01:25:53'),
(55, 9, '5', '2023-04-06 01:26:02', '2023-04-06 01:26:02'),
(56, 8, '1', '2023-04-06 01:26:16', '2023-04-06 01:26:16'),
(57, 7, '3', '2023-04-06 01:26:42', '2023-04-06 01:26:42'),
(58, 6, '4', '2023-04-06 01:26:53', '2023-04-06 01:26:53'),
(59, 5, '5', '2023-04-06 01:27:04', '2023-04-06 01:27:04'),
(60, 4, '7', '2023-04-06 01:27:14', '2023-04-06 01:27:14'),
(61, 3, '8', '2023-04-06 01:27:23', '2023-04-06 01:27:23'),
(62, 2, '9', '2023-04-06 01:27:34', '2023-04-06 01:27:34'),
(65, 1, '6', '2023-04-06 22:31:00', '2023-04-06 22:31:00'),
(67, 12, '8', '2023-04-12 18:26:06', '2023-04-12 18:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category_gifts`
--

CREATE TABLE `product_sub_category_gifts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_category_gift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sub_category_gifts`
--

INSERT INTO `product_sub_category_gifts` (`id`, `product_id`, `sub_category_gift_id`, `created_at`, `updated_at`) VALUES
(1, 12, 1, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(2, 12, 2, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(3, 12, 3, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(4, 19, 4, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(5, 19, 5, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(41, 25, 39, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(42, 25, 40, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(43, 32, 36, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(44, 32, 37, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(55, 17, 4, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(56, 17, 5, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(63, 1, 1, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(64, 1, 2, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(85, 39, 36, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(86, 39, 37, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(87, 31, 39, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(88, 31, 40, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(89, 24, 4, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(90, 24, 5, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(96, 42, 37, '2021-10-04 13:10:06', '2021-10-04 13:10:06'),
(97, 41, 39, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(98, 41, 40, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(99, 40, 39, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(100, 40, 42, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(101, 38, 36, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(102, 38, 37, '2021-10-04 13:11:16', '2021-10-04 13:11:16'),
(103, 30, 39, '2021-10-04 13:11:50', '2021-10-04 13:11:50'),
(104, 30, 40, '2021-10-04 13:11:50', '2021-10-04 13:11:50'),
(105, 29, 39, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(106, 29, 40, '2021-10-04 13:12:02', '2021-10-04 13:12:02'),
(107, 27, 39, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(108, 27, 42, '2021-10-04 13:12:34', '2021-10-04 13:12:34'),
(111, 45, 1, '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(112, 45, 2, '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(139, 43, 36, '2021-11-29 08:36:57', '2021-11-29 08:36:57'),
(140, 43, 37, '2021-11-29 08:36:57', '2021-11-29 08:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category_new_and_limiteds`
--

CREATE TABLE `product_sub_category_new_and_limiteds` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_category_new_and_limited_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sub_category_new_and_limiteds`
--

INSERT INTO `product_sub_category_new_and_limiteds` (`id`, `product_id`, `sub_category_new_and_limited_id`, `created_at`, `updated_at`) VALUES
(4, 9, 1, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(5, 9, 2, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(6, 14, 1, '2021-09-14 12:14:12', '2021-09-14 12:14:12'),
(7, 14, 2, '2021-09-14 12:14:12', '2021-09-14 12:14:12'),
(8, 15, 2, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(9, 15, 3, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(19, 18, 5, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(20, 18, 6, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(21, 19, 5, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(22, 19, 6, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(25, 20, 5, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(26, 20, 6, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(27, 21, 4, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(28, 21, 5, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(29, 22, 4, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(30, 22, 5, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(31, 22, 6, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(32, 23, 4, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(33, 23, 5, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(51, 17, 4, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(52, 17, 5, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(53, 17, 6, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(58, 1, 1, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(59, 1, 2, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(68, 24, 4, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(69, 24, 5, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(70, 16, 1, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(71, 16, 2, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(74, 45, 1, '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(75, 45, 2, '2021-11-08 20:29:55', '2021-11-08 20:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category_red_wines`
--

CREATE TABLE `product_sub_category_red_wines` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_category_red_wine_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sub_category_red_wines`
--

INSERT INTO `product_sub_category_red_wines` (`id`, `product_id`, `sub_category_red_wine_id`, `created_at`, `updated_at`) VALUES
(16, 32, 1, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(17, 32, 2, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(34, 39, 1, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(35, 39, 2, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(37, 42, 2, '2021-10-04 13:10:06', '2021-10-04 13:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category_regions`
--

CREATE TABLE `product_sub_category_regions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_category_region_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sub_category_regions`
--

INSERT INTO `product_sub_category_regions` (`id`, `product_id`, `sub_category_region_id`, `created_at`, `updated_at`) VALUES
(59, 32, 1, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(60, 32, 2, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(93, 39, 1, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(94, 39, 2, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(95, 39, 3, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(96, 39, 4, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(98, 42, 5, '2021-10-04 13:10:06', '2021-10-04 13:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category_types`
--

CREATE TABLE `product_sub_category_types` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_category_type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sub_category_types`
--

INSERT INTO `product_sub_category_types` (`id`, `product_id`, `sub_category_type_id`, `created_at`, `updated_at`) VALUES
(21, 4, 1, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(22, 4, 2, '2021-09-13 18:20:10', '2021-09-13 18:20:10'),
(23, 5, 1, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(24, 5, 3, '2021-09-13 18:35:57', '2021-09-13 18:35:57'),
(25, 6, 2, '2021-09-13 18:42:17', '2021-09-13 18:42:17'),
(26, 6, 3, '2021-09-13 18:42:17', '2021-09-13 18:42:17'),
(27, 7, 2, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(28, 7, 3, '2021-09-13 18:52:09', '2021-09-13 18:52:09'),
(29, 8, 1, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(30, 8, 3, '2021-09-13 19:04:58', '2021-09-13 19:04:58'),
(37, 9, 2, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(38, 9, 3, '2021-09-13 19:20:36', '2021-09-13 19:20:36'),
(39, 10, 2, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(40, 10, 3, '2021-09-13 19:30:30', '2021-09-13 19:30:30'),
(41, 11, 2, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(42, 11, 3, '2021-09-13 19:44:41', '2021-09-13 19:44:41'),
(45, 14, 2, '2021-09-14 12:14:12', '2021-09-14 12:14:12'),
(46, 14, 3, '2021-09-14 12:14:12', '2021-09-14 12:14:12'),
(47, 15, 2, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(48, 15, 3, '2021-09-14 12:24:38', '2021-09-14 12:24:38'),
(56, 12, 1, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(57, 12, 2, '2021-09-14 13:15:46', '2021-09-14 13:15:46'),
(60, 18, 4, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(61, 18, 5, '2021-09-14 13:54:02', '2021-09-14 13:54:02'),
(62, 19, 6, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(63, 19, 7, '2021-09-14 14:05:51', '2021-09-14 14:05:51'),
(66, 20, 5, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(67, 20, 6, '2021-09-14 14:19:02', '2021-09-14 14:19:02'),
(68, 21, 6, '2021-09-14 14:30:35', '2021-09-14 14:30:35'),
(69, 22, 5, '2021-09-14 14:41:58', '2021-09-14 14:41:58'),
(70, 23, 5, '2021-09-14 14:52:26', '2021-09-14 14:52:26'),
(87, 25, 44, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(88, 25, 45, '2021-09-20 18:27:45', '2021-09-20 18:27:45'),
(103, 2, 1, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(104, 2, 2, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(105, 2, 3, '2021-09-22 19:38:29', '2021-09-22 19:38:29'),
(106, 17, 4, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(107, 17, 5, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(108, 17, 7, '2021-09-22 19:42:51', '2021-09-22 19:42:51'),
(113, 1, 1, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(114, 1, 2, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(115, 1, 3, '2021-09-23 11:44:31', '2021-09-23 11:44:31'),
(130, 31, 44, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(131, 31, 45, '2021-09-29 18:36:51', '2021-09-29 18:36:51'),
(132, 24, 5, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(133, 24, 6, '2021-09-29 18:37:05', '2021-09-29 18:37:05'),
(134, 16, 1, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(135, 16, 2, '2021-09-29 18:37:20', '2021-09-29 18:37:20'),
(140, 41, 45, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(141, 41, 46, '2021-10-04 13:10:24', '2021-10-04 13:10:24'),
(142, 40, 45, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(143, 40, 47, '2021-10-04 13:10:37', '2021-10-04 13:10:37'),
(146, 45, 1, '2021-11-08 20:29:55', '2021-11-08 20:29:55'),
(147, 45, 2, '2021-11-08 20:29:55', '2021-11-08 20:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category_white_and_sparkling_wines`
--

CREATE TABLE `product_sub_category_white_and_sparkling_wines` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_category_white_and_sparkling_wine_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sub_category_white_and_sparkling_wines`
--

INSERT INTO `product_sub_category_white_and_sparkling_wines` (`id`, `product_id`, `sub_category_white_and_sparkling_wine_id`, `created_at`, `updated_at`) VALUES
(39, 32, 1, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(40, 32, 2, '2021-09-20 18:28:09', '2021-09-20 18:28:09'),
(65, 39, 1, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(66, 39, 2, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(67, 39, 3, '2021-09-29 18:36:38', '2021-09-29 18:36:38'),
(69, 42, 1, '2021-10-04 13:10:06', '2021-10-04 13:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `recently_viewed_products`
--

CREATE TABLE `recently_viewed_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recently_viewed_products`
--

INSERT INTO `recently_viewed_products` (`id`, `product_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 12, '106.214.9.112', '2022-12-29 22:19:18', '2022-12-29 22:19:18'),
(2, 10, '122.168.68.193', '2022-12-30 10:52:40', '2022-12-30 10:52:40'),
(3, 9, '122.168.68.193', '2022-12-30 11:37:26', '2022-12-30 11:37:26'),
(4, 5, '122.168.68.193', '2022-12-30 11:37:31', '2022-12-30 11:37:31'),
(5, 8, '122.168.68.193', '2022-12-30 11:37:43', '2022-12-30 11:37:43'),
(6, 12, '223.236.22.151', '2022-12-30 19:58:32', '2022-12-30 19:58:32'),
(7, 1, '122.170.204.55', '2023-01-02 14:18:51', '2023-01-02 14:18:51'),
(8, 10, '122.170.204.55', '2023-01-02 20:15:48', '2023-01-02 20:15:48'),
(9, 12, '49.36.17.70', '2023-01-03 11:52:01', '2023-01-03 11:52:01'),
(10, 1, '223.236.21.133', '2023-01-03 12:49:03', '2023-01-03 12:49:03'),
(11, 1, '52.114.14.71', '2023-01-03 12:49:17', '2023-01-03 12:49:17'),
(12, 11, '223.236.21.133', '2023-01-03 15:20:08', '2023-01-03 15:20:08'),
(13, 1, '182.70.189.60', '2023-01-03 18:43:10', '2023-01-03 18:43:10'),
(14, 10, '85.92.66.148', '2023-01-03 20:04:15', '2023-01-03 20:04:15'),
(15, 9, '85.92.66.148', '2023-01-03 20:04:16', '2023-01-03 20:04:16'),
(16, 8, '85.92.66.148', '2023-01-03 20:04:17', '2023-01-03 20:04:17'),
(17, 7, '85.92.66.148', '2023-01-03 20:04:18', '2023-01-03 20:04:18'),
(18, 6, '85.92.66.148', '2023-01-03 20:04:19', '2023-01-03 20:04:19'),
(19, 12, '85.92.66.148', '2023-01-03 20:04:20', '2023-01-03 20:04:20'),
(20, 11, '85.92.66.148', '2023-01-03 20:04:21', '2023-01-03 20:04:21'),
(21, 4, '85.92.66.148', '2023-01-03 20:04:22', '2023-01-03 20:04:22'),
(22, 3, '85.92.66.148', '2023-01-03 20:04:22', '2023-01-03 20:04:22'),
(23, 2, '85.92.66.148', '2023-01-03 20:04:23', '2023-01-03 20:04:23'),
(24, 5, '85.92.66.148', '2023-01-03 20:04:25', '2023-01-03 20:04:25'),
(25, 1, '85.92.66.148', '2023-01-03 20:04:27', '2023-01-03 20:04:27'),
(26, 5, '122.168.1.87', '2023-01-04 16:38:44', '2023-01-04 16:38:44'),
(27, 10, '122.168.1.87', '2023-01-04 16:45:02', '2023-01-04 16:45:02'),
(28, 5, '52.114.14.71', '2023-01-04 17:13:38', '2023-01-04 17:13:38'),
(29, 5, '49.36.19.138', '2023-01-04 17:13:49', '2023-01-04 17:13:49'),
(30, 5, '49.36.27.156', '2023-01-05 14:28:53', '2023-01-05 14:28:53'),
(31, 8, '49.36.27.156', '2023-01-05 15:07:39', '2023-01-05 15:07:39'),
(32, 12, '223.235.97.167', '2023-01-05 16:31:15', '2023-01-05 16:31:15'),
(33, 5, '223.235.97.167', '2023-01-05 21:17:41', '2023-01-05 21:17:41'),
(34, 5, '122.168.11.110', '2023-01-06 16:32:41', '2023-01-06 16:32:41'),
(35, 5, '122.162.204.68', '2023-01-09 14:55:22', '2023-01-09 14:55:22'),
(36, 10, '122.162.204.68', '2023-01-09 14:55:39', '2023-01-09 14:55:39'),
(37, 3, '122.162.204.68', '2023-01-09 17:33:57', '2023-01-09 17:33:57'),
(38, 12, '122.162.204.68', '2023-01-09 18:28:11', '2023-01-09 18:28:11'),
(39, 4, '122.162.204.68', '2023-01-09 18:28:58', '2023-01-09 18:28:58'),
(40, 11, '122.162.204.68', '2023-01-09 21:18:36', '2023-01-09 21:18:36'),
(41, 5, '223.236.38.48', '2023-01-10 14:11:24', '2023-01-10 14:11:24'),
(42, 10, '223.236.38.48', '2023-01-10 14:11:37', '2023-01-10 14:11:37'),
(43, 4, '49.36.24.183', '2023-01-10 14:28:53', '2023-01-10 14:28:53'),
(44, 5, '49.36.24.183', '2023-01-10 15:05:33', '2023-01-10 15:05:33'),
(45, 2, '49.36.24.183', '2023-01-10 15:06:06', '2023-01-10 15:06:06'),
(46, 12, '223.236.38.48', '2023-01-10 16:15:25', '2023-01-10 16:15:25'),
(47, 11, '223.236.38.48', '2023-01-10 16:15:49', '2023-01-10 16:15:49'),
(48, 3, '223.236.38.48', '2023-01-10 16:43:45', '2023-01-10 16:43:45'),
(49, 11, '49.36.24.183', '2023-01-11 14:22:52', '2023-01-11 14:22:52'),
(50, 12, '49.36.24.183', '2023-01-11 14:23:18', '2023-01-11 14:23:18'),
(51, 12, '182.77.1.232', '2023-01-11 15:15:34', '2023-01-11 15:15:34'),
(52, 11, '182.77.1.232', '2023-01-11 15:16:53', '2023-01-11 15:16:53'),
(53, 12, '52.114.32.28', '2023-01-11 15:21:36', '2023-01-11 15:21:36'),
(54, 4, '182.77.1.232', '2023-01-11 16:24:47', '2023-01-11 16:24:47'),
(55, 3, '182.77.1.232', '2023-01-11 16:30:41', '2023-01-11 16:30:41'),
(56, 7, '182.77.1.232', '2023-01-11 17:16:25', '2023-01-11 17:16:25'),
(57, 5, '182.77.1.232', '2023-01-11 17:35:09', '2023-01-11 17:35:09'),
(58, 10, '182.77.1.232', '2023-01-11 17:39:20', '2023-01-11 17:39:20'),
(59, 8, '182.77.1.232', '2023-01-11 17:39:21', '2023-01-11 17:39:21'),
(60, 9, '182.77.1.232', '2023-01-11 17:39:22', '2023-01-11 17:39:22'),
(61, 6, '182.77.1.232', '2023-01-11 17:39:25', '2023-01-11 17:39:25'),
(62, 9, '49.36.24.183', '2023-01-12 12:18:41', '2023-01-12 12:18:41'),
(63, 4, '223.236.12.243', '2023-01-13 14:31:24', '2023-01-13 14:31:24'),
(64, 1, '182.77.4.229', '2023-01-13 18:09:34', '2023-01-13 18:09:34'),
(65, 8, '182.77.4.229', '2023-01-13 19:19:57', '2023-01-13 19:19:57'),
(66, 4, '106.214.14.153', '2023-01-16 14:37:19', '2023-01-16 14:37:19'),
(67, 3, '106.214.14.153', '2023-01-16 14:37:44', '2023-01-16 14:37:44'),
(68, 5, '49.36.27.116', '2023-01-16 15:09:00', '2023-01-16 15:09:00'),
(69, 5, '106.214.14.153', '2023-01-16 15:09:17', '2023-01-16 15:09:17'),
(70, 9, '49.36.27.116', '2023-01-16 15:12:40', '2023-01-16 15:12:40'),
(71, 10, '49.36.27.116', '2023-01-16 15:23:49', '2023-01-16 15:23:49'),
(72, 7, '49.36.25.116', '2023-01-17 11:53:42', '2023-01-17 11:53:42'),
(73, 5, '122.168.225.93', '2023-01-17 20:18:49', '2023-01-17 20:18:49'),
(74, 10, '122.168.225.93', '2023-01-17 20:18:54', '2023-01-17 20:18:54'),
(75, 9, '122.168.225.93', '2023-01-17 20:19:03', '2023-01-17 20:19:03'),
(76, 12, '122.168.225.93', '2023-01-17 21:02:28', '2023-01-17 21:02:28'),
(77, 12, '182.68.157.50', '2023-01-18 17:11:49', '2023-01-18 17:11:49'),
(78, 10, '49.36.24.183', '2023-01-20 14:49:22', '2023-01-20 14:49:22'),
(79, 12, '182.68.171.111', '2023-01-20 14:55:59', '2023-01-20 14:55:59'),
(80, 11, '106.214.6.160', '2023-01-20 16:20:23', '2023-01-20 16:20:23'),
(81, 12, '223.236.18.112', '2023-01-20 18:13:29', '2023-01-20 18:13:29'),
(82, 12, '122.168.92.49', '2023-01-20 19:27:36', '2023-01-20 19:27:36'),
(83, 11, '122.168.92.49', '2023-01-20 19:46:31', '2023-01-20 19:46:31'),
(84, 10, '122.168.92.49', '2023-01-20 20:53:39', '2023-01-20 20:53:39'),
(85, 9, '122.168.92.49', '2023-01-20 20:53:41', '2023-01-20 20:53:41'),
(86, 5, '122.168.92.49', '2023-01-20 22:20:24', '2023-01-20 22:20:24'),
(87, 10, '122.168.77.98', '2023-01-23 13:19:36', '2023-01-23 13:19:36'),
(88, 11, '122.168.77.98', '2023-01-23 13:19:50', '2023-01-23 13:19:50'),
(89, 5, '122.168.77.98', '2023-01-23 19:43:41', '2023-01-23 19:43:41'),
(90, 12, '223.236.8.230', '2023-01-24 21:23:25', '2023-01-24 21:23:25'),
(91, 5, '223.236.8.230', '2023-01-24 21:24:08', '2023-01-24 21:24:08'),
(92, 6, '223.236.8.230', '2023-01-24 21:25:15', '2023-01-24 21:25:15'),
(93, 12, '182.68.158.211', '2023-01-25 13:13:38', '2023-01-25 13:13:38'),
(94, 5, '182.68.158.211', '2023-01-25 13:13:49', '2023-01-25 13:13:49'),
(95, 6, '182.68.158.211', '2023-01-25 13:13:55', '2023-01-25 13:13:55'),
(96, 6, '182.77.78.47', '2023-01-25 14:45:03', '2023-01-25 14:45:03'),
(97, 10, '182.77.78.47', '2023-01-25 14:46:18', '2023-01-25 14:46:18'),
(98, 12, '182.77.78.47', '2023-01-25 17:48:34', '2023-01-25 17:48:34'),
(99, 10, '14.169.155.172', '2023-01-26 06:48:20', '2023-01-26 06:48:20'),
(100, 9, '14.169.155.172', '2023-01-26 06:48:23', '2023-01-26 06:48:23'),
(101, 8, '14.169.155.172', '2023-01-26 06:48:27', '2023-01-26 06:48:27'),
(102, 7, '14.169.155.172', '2023-01-26 06:48:30', '2023-01-26 06:48:30'),
(103, 6, '14.169.155.172', '2023-01-26 06:48:34', '2023-01-26 06:48:34'),
(104, 12, '14.169.155.172', '2023-01-26 06:48:55', '2023-01-26 06:48:55'),
(105, 11, '14.169.155.172', '2023-01-26 06:49:01', '2023-01-26 06:49:01'),
(106, 6, '51.222.253.10', '2023-02-01 06:28:33', '2023-02-01 06:28:33'),
(107, 10, '51.222.253.14', '2023-02-01 06:35:38', '2023-02-01 06:35:38'),
(108, 9, '51.222.253.19', '2023-02-01 06:41:35', '2023-02-01 06:41:35'),
(109, 5, '51.222.253.9', '2023-02-01 06:46:17', '2023-02-01 06:46:17'),
(110, 7, '51.222.253.4', '2023-02-01 06:50:59', '2023-02-01 06:50:59'),
(111, 8, '51.222.253.12', '2023-02-01 06:55:35', '2023-02-01 06:55:35'),
(112, 2, '51.222.253.11', '2023-02-01 11:40:00', '2023-02-01 11:40:00'),
(113, 3, '51.222.253.18', '2023-02-01 11:44:58', '2023-02-01 11:44:58'),
(114, 12, '51.222.253.2', '2023-02-01 11:50:00', '2023-02-01 11:50:00'),
(115, 4, '51.222.253.3', '2023-02-01 11:55:23', '2023-02-01 11:55:23'),
(116, 11, '51.222.253.5', '2023-02-01 12:00:38', '2023-02-01 12:00:38'),
(117, 9, '51.222.253.10', '2023-02-01 12:11:47', '2023-02-01 12:11:47'),
(118, 3, '51.222.253.19', '2023-02-01 12:17:08', '2023-02-01 12:17:08'),
(119, 12, '51.222.253.17', '2023-02-01 12:22:25', '2023-02-01 12:22:25'),
(120, 4, '51.222.253.14', '2023-02-01 12:27:44', '2023-02-01 12:27:44'),
(121, 6, '51.222.253.2', '2023-02-01 12:38:01', '2023-02-01 12:38:01'),
(122, 10, '51.222.253.6', '2023-02-01 12:43:27', '2023-02-01 12:43:27'),
(123, 9, '51.222.253.12', '2023-02-01 12:49:11', '2023-02-01 12:49:11'),
(124, 5, '51.222.253.18', '2023-02-01 12:59:52', '2023-02-01 12:59:52'),
(125, 8, '51.222.253.15', '2023-02-01 13:05:24', '2023-02-01 13:05:24'),
(126, 3, '51.222.253.16', '2023-02-01 13:10:47', '2023-02-01 13:10:47'),
(127, 3, '51.222.253.20', '2023-02-01 13:16:11', '2023-02-01 13:16:11'),
(128, 12, '51.222.253.19', '2023-02-01 13:21:36', '2023-02-01 13:21:36'),
(129, 12, '51.222.253.3', '2023-02-01 13:26:43', '2023-02-01 13:26:43'),
(130, 9, '51.222.253.6', '2023-02-01 14:07:27', '2023-02-01 14:07:27'),
(131, 7, '51.222.253.6', '2023-02-01 14:13:23', '2023-02-01 14:13:23'),
(132, 2, '51.222.253.14', '2023-02-01 14:50:21', '2023-02-01 14:50:21'),
(133, 11, '51.222.253.3', '2023-02-01 14:55:55', '2023-02-01 14:55:55'),
(134, 5, '51.222.253.5', '2023-02-01 15:01:59', '2023-02-01 15:01:59'),
(135, 11, '51.222.253.7', '2023-02-01 15:14:28', '2023-02-01 15:14:28'),
(136, 3, '51.222.253.10', '2023-02-01 15:26:00', '2023-02-01 15:26:00'),
(137, 4, '51.222.253.18', '2023-02-01 10:01:43', '2023-02-01 10:01:43'),
(138, 8, '51.222.253.16', '2023-02-01 17:07:42', '2023-02-01 17:07:42'),
(139, 8, '51.222.253.7', '2023-02-01 17:12:14', '2023-02-01 17:12:14'),
(140, 5, '54.36.149.83', '2023-02-01 17:17:14', '2023-02-01 17:17:14'),
(141, 10, '51.222.253.12', '2023-02-01 17:22:01', '2023-02-01 17:22:01'),
(142, 10, '54.36.148.134', '2023-02-01 17:26:58', '2023-02-01 17:26:58'),
(143, 12, '51.222.253.1', '2023-02-01 17:31:51', '2023-02-01 17:31:51'),
(144, 3, '51.222.253.2', '2023-02-01 12:07:04', '2023-02-01 12:07:04'),
(145, 9, '51.222.253.2', '2023-02-01 17:41:03', '2023-02-01 17:41:03'),
(146, 11, '51.222.253.8', '2023-02-01 17:45:02', '2023-02-01 17:45:02'),
(147, 4, '51.222.253.5', '2023-02-01 17:52:58', '2023-02-01 17:52:58'),
(148, 8, '54.36.149.17', '2023-02-01 17:55:16', '2023-02-01 17:55:16'),
(149, 5, '51.222.253.10', '2023-02-01 12:27:55', '2023-02-01 12:27:55'),
(150, 6, '54.36.148.162', '2023-02-01 19:22:21', '2023-02-01 19:22:21'),
(151, 10, '54.36.148.166', '2023-02-01 19:26:53', '2023-02-01 19:26:53'),
(152, 7, '54.36.148.120', '2023-02-01 19:31:34', '2023-02-01 19:31:34'),
(153, 2, '54.36.148.150', '2023-02-01 20:01:56', '2023-02-01 20:01:56'),
(154, 11, '51.222.253.4', '2023-02-01 21:19:02', '2023-02-01 21:19:02'),
(155, 5, '54.36.148.216', '2023-02-01 21:24:47', '2023-02-01 21:24:47'),
(156, 5, '51.222.253.14', '2023-02-01 21:30:34', '2023-02-01 21:30:34'),
(157, 3, '51.222.253.7', '2023-02-01 21:36:08', '2023-02-01 21:36:08'),
(158, 6, '51.222.253.9', '2023-02-01 16:12:13', '2023-02-01 16:12:13'),
(159, 11, '54.36.148.85', '2023-02-01 21:48:05', '2023-02-01 21:48:05'),
(160, 4, '51.222.253.8', '2023-02-01 21:54:09', '2023-02-01 21:54:09'),
(161, 9, '51.222.253.17', '2023-02-01 21:59:43', '2023-02-01 21:59:43'),
(162, 11, '51.222.253.17', '2023-02-01 16:35:24', '2023-02-01 16:35:24'),
(163, 7, '51.222.253.13', '2023-02-01 23:42:42', '2023-02-01 23:42:42'),
(164, 2, '51.222.253.9', '2023-02-02 00:21:48', '2023-02-02 00:21:48'),
(165, 11, '51.222.253.6', '2023-02-01 18:55:54', '2023-02-01 18:55:54'),
(166, 2, '51.222.253.18', '2023-02-02 00:29:35', '2023-02-02 00:29:35'),
(167, 6, '54.36.148.213', '2023-02-02 00:32:22', '2023-02-02 00:32:22'),
(168, 10, '51.222.253.9', '2023-02-02 01:54:18', '2023-02-02 01:54:18'),
(169, 8, '51.222.253.14', '2023-02-01 20:34:16', '2023-02-01 20:34:16'),
(170, 4, '185.191.171.17', '2023-02-02 02:08:35', '2023-02-02 02:08:35'),
(171, 8, '51.222.253.4', '2023-02-02 02:09:49', '2023-02-02 02:09:49'),
(172, 8, '51.222.253.19', '2023-02-02 02:15:03', '2023-02-02 02:15:03'),
(173, 4, '51.222.253.17', '2023-02-01 20:50:40', '2023-02-01 20:50:40'),
(174, 4, '54.36.148.116', '2023-02-02 02:26:16', '2023-02-02 02:26:16'),
(175, 4, '51.222.253.2', '2023-02-01 21:01:41', '2023-02-01 21:01:41'),
(176, 6, '51.222.253.6', '2023-02-01 22:17:20', '2023-02-01 22:17:20'),
(177, 9, '51.222.253.8', '2023-02-01 22:27:09', '2023-02-01 22:27:09'),
(178, 7, '51.222.253.8', '2023-02-01 22:32:28', '2023-02-01 22:32:28'),
(179, 2, '51.222.253.17', '2023-02-01 23:00:02', '2023-02-01 23:00:02'),
(180, 6, '51.222.253.3', '2023-02-02 04:34:26', '2023-02-02 04:34:26'),
(181, 7, '54.36.148.4', '2023-02-02 04:38:53', '2023-02-02 04:38:53'),
(182, 7, '51.222.253.14', '2023-02-02 04:43:23', '2023-02-02 04:43:23'),
(183, 6, '51.222.253.18', '2023-02-02 06:22:38', '2023-02-02 06:22:38'),
(184, 5, '51.222.253.13', '2023-02-02 06:27:23', '2023-02-02 06:27:23'),
(185, 3, '51.222.253.4', '2023-02-02 01:05:02', '2023-02-02 01:05:02'),
(186, 8, '185.191.171.26', '2023-02-02 06:35:07', '2023-02-02 06:35:07'),
(187, 12, '51.222.253.7', '2023-02-02 01:13:22', '2023-02-02 01:13:22'),
(188, 11, '185.191.171.12', '2023-02-02 06:46:15', '2023-02-02 06:46:15'),
(189, 9, '51.222.253.3', '2023-02-02 01:21:41', '2023-02-02 01:21:41'),
(190, 9, '185.191.171.18', '2023-02-02 07:21:52', '2023-02-02 07:21:52'),
(191, 7, '51.222.253.2', '2023-02-02 08:03:26', '2023-02-02 08:03:26'),
(192, 6, '51.222.253.20', '2023-02-02 02:44:50', '2023-02-02 02:44:50'),
(193, 10, '51.222.253.15', '2023-02-02 02:48:40', '2023-02-02 02:48:40'),
(194, 9, '51.222.253.15', '2023-02-02 02:52:33', '2023-02-02 02:52:33'),
(195, 7, '51.222.253.9', '2023-02-02 02:56:33', '2023-02-02 02:56:33'),
(196, 8, '51.222.253.17', '2023-02-02 03:00:12', '2023-02-02 03:00:12'),
(197, 11, '51.222.253.20', '2023-02-02 03:15:37', '2023-02-02 03:15:37'),
(198, 5, '51.222.253.15', '2023-02-02 05:04:45', '2023-02-02 05:04:45'),
(199, 12, '51.222.253.16', '2023-02-02 10:39:41', '2023-02-02 10:39:41'),
(200, 2, '51.222.253.13', '2023-02-02 05:17:18', '2023-02-02 05:17:18'),
(201, 3, '51.222.253.17', '2023-02-02 05:22:41', '2023-02-02 05:22:41'),
(202, 4, '51.222.253.6', '2023-02-02 05:37:53', '2023-02-02 05:37:53'),
(203, 12, '51.222.253.12', '2023-02-02 07:05:33', '2023-02-02 07:05:33'),
(204, 7, '51.222.253.19', '2023-02-02 07:10:42', '2023-02-02 07:10:42'),
(205, 3, '51.222.253.11', '2023-02-02 07:26:55', '2023-02-02 07:26:55'),
(206, 6, '51.222.253.1', '2023-02-02 08:47:12', '2023-02-02 08:47:12'),
(207, 10, '51.222.253.20', '2023-02-02 08:53:08', '2023-02-02 08:53:08'),
(208, 9, '51.222.253.9', '2023-02-02 08:59:00', '2023-02-02 08:59:00'),
(209, 8, '51.222.253.10', '2023-02-02 09:11:50', '2023-02-02 09:11:50'),
(210, 2, '51.222.253.3', '2023-02-02 09:38:23', '2023-02-02 09:38:23'),
(211, 10, '51.222.253.13', '2023-02-02 09:46:35', '2023-02-02 09:46:35'),
(212, 3, '51.222.253.3', '2023-02-02 09:55:18', '2023-02-02 09:55:18'),
(213, 5, '51.222.253.12', '2023-02-02 10:03:45', '2023-02-02 10:03:45'),
(214, 9, '51.222.253.11', '2023-02-02 10:08:18', '2023-02-02 10:08:18'),
(215, 12, '185.191.171.40', '2023-02-02 17:00:52', '2023-02-02 17:00:52'),
(216, 5, '51.222.253.8', '2023-02-02 11:55:54', '2023-02-02 11:55:54'),
(217, 2, '51.222.253.2', '2023-02-02 12:11:06', '2023-02-02 12:11:06'),
(218, 3, '51.222.253.12', '2023-02-02 12:19:23', '2023-02-02 12:19:23'),
(219, 12, '51.222.253.14', '2023-02-02 12:34:26', '2023-02-02 12:34:26'),
(220, 6, '51.222.253.8', '2023-02-02 14:33:47', '2023-02-02 14:33:47'),
(221, 10, '51.222.253.4', '2023-02-02 14:38:34', '2023-02-02 14:38:34'),
(222, 9, '51.222.253.1', '2023-02-02 14:42:49', '2023-02-02 14:42:49'),
(223, 7, '51.222.253.16', '2023-02-02 14:47:26', '2023-02-02 14:47:26'),
(224, 8, '51.222.253.5', '2023-02-02 15:02:44', '2023-02-02 15:02:44'),
(225, 4, '51.222.253.7', '2023-02-02 16:32:49', '2023-02-02 16:32:49'),
(226, 7, '51.222.253.12', '2023-02-02 16:43:21', '2023-02-02 16:43:21'),
(227, 7, '51.222.253.3', '2023-02-02 20:50:43', '2023-02-02 20:50:43'),
(228, 5, '51.222.253.19', '2023-02-02 21:06:01', '2023-02-02 21:06:01'),
(229, 12, '51.222.253.10', '2023-02-02 21:21:20', '2023-02-02 21:21:20'),
(230, 10, '185.191.171.14', '2023-02-03 03:23:24', '2023-02-03 03:23:24'),
(231, 5, '185.191.171.43', '2023-02-03 04:05:33', '2023-02-03 04:05:33'),
(232, 2, '185.191.171.40', '2023-02-03 05:08:12', '2023-02-03 05:08:12'),
(233, 6, '185.191.171.2', '2023-02-03 06:21:57', '2023-02-03 06:21:57'),
(234, 1, '185.191.171.14', '2023-02-06 19:32:53', '2023-02-06 19:32:53'),
(235, 10, '51.222.253.3', '2023-02-09 16:30:43', '2023-02-09 16:30:43'),
(236, 7, '51.222.253.15', '2023-02-09 16:31:19', '2023-02-09 16:31:19'),
(237, 2, '51.222.253.4', '2023-02-09 16:31:20', '2023-02-09 16:31:20'),
(238, 12, '51.222.253.8', '2023-02-09 16:31:25', '2023-02-09 16:31:25'),
(239, 4, '51.222.253.1', '2023-02-09 16:31:26', '2023-02-09 16:31:26'),
(240, 11, '51.222.253.15', '2023-02-09 16:31:29', '2023-02-09 16:31:29'),
(241, 11, '51.222.253.18', '2023-02-09 21:19:07', '2023-02-09 21:19:07'),
(242, 12, '51.222.253.4', '2023-02-09 21:37:01', '2023-02-09 21:37:01'),
(243, 4, '51.222.253.13', '2023-02-09 21:57:33', '2023-02-09 21:57:33'),
(244, 10, '51.222.253.10', '2023-02-09 23:22:22', '2023-02-09 23:22:22'),
(245, 3, '51.222.253.6', '2023-02-10 00:44:06', '2023-02-10 00:44:06'),
(246, 4, '49.36.24.133', '2023-02-10 17:32:17', '2023-02-10 17:32:17'),
(247, 9, '149.57.16.5', '2023-02-21 09:11:51', '2023-02-21 09:11:51'),
(248, 3, '149.57.16.5', '2023-02-21 09:12:01', '2023-02-21 09:12:01'),
(249, 4, '149.57.16.5', '2023-02-21 09:12:08', '2023-02-21 09:12:08'),
(250, 7, '149.57.16.5', '2023-02-21 09:12:36', '2023-02-21 09:12:36'),
(251, 8, '149.57.16.5', '2023-02-21 09:12:41', '2023-02-21 09:12:41'),
(252, 10, '149.57.16.5', '2023-02-21 09:12:57', '2023-02-21 09:12:57'),
(253, 2, '149.57.16.5', '2023-02-21 09:13:01', '2023-02-21 09:13:01'),
(254, 11, '149.57.16.5', '2023-02-21 09:13:13', '2023-02-21 09:13:13'),
(255, 6, '149.57.16.5', '2023-02-21 09:13:26', '2023-02-21 09:13:26'),
(256, 12, '149.57.16.5', '2023-02-21 09:13:30', '2023-02-21 09:13:30'),
(257, 1, '149.57.16.5', '2023-02-21 09:15:24', '2023-02-21 09:15:24'),
(258, 5, '149.57.16.5', '2023-02-21 09:16:01', '2023-02-21 09:16:01'),
(259, 8, '51.222.253.18', '2023-02-21 10:36:31', '2023-02-21 10:36:31'),
(260, 6, '51.222.253.7', '2023-02-21 14:57:56', '2023-02-21 14:57:56'),
(261, 10, '51.222.253.5', '2023-02-21 15:25:31', '2023-02-21 15:25:31'),
(262, 7, '51.222.253.17', '2023-02-21 15:54:23', '2023-02-21 15:54:23'),
(263, 5, '51.222.253.3', '2023-02-22 07:17:22', '2023-02-22 07:17:22'),
(264, 2, '51.222.253.6', '2023-02-22 11:38:41', '2023-02-22 11:38:41'),
(265, 8, '51.222.253.9', '2023-02-22 12:12:43', '2023-02-22 12:12:43'),
(266, 3, '51.222.253.5', '2023-02-22 12:55:44', '2023-02-22 12:55:44'),
(267, 4, '51.222.253.10', '2023-02-22 14:27:14', '2023-02-22 14:27:14'),
(268, 11, '51.222.253.13', '2023-02-22 14:36:05', '2023-02-22 14:36:05'),
(269, 6, '51.222.253.12', '2023-02-22 14:52:37', '2023-02-22 14:52:37'),
(270, 5, '49.36.26.95', '2023-02-25 06:40:13', '2023-02-25 06:40:13'),
(271, 3, '185.191.171.44', '2023-02-25 22:48:54', '2023-02-25 22:48:54'),
(272, 4, '216.244.66.235', '2023-02-28 18:03:17', '2023-02-28 18:03:17'),
(273, 6, '216.244.66.235', '2023-02-28 18:58:41', '2023-02-28 18:58:41'),
(274, 10, '216.244.66.235', '2023-03-01 00:33:13', '2023-03-01 00:33:13'),
(275, 11, '216.244.66.235', '2023-03-01 13:46:11', '2023-03-01 13:46:11'),
(276, 12, '49.36.24.109', '2023-03-01 19:06:21', '2023-03-01 19:06:21'),
(277, 3, '49.36.24.109', '2023-03-01 19:06:37', '2023-03-01 19:06:37'),
(278, 8, '49.36.24.109', '2023-03-01 19:13:41', '2023-03-01 19:13:41'),
(279, 3, '216.244.66.235', '2023-03-01 20:57:36', '2023-03-01 20:57:36'),
(280, 2, '216.244.66.235', '2023-03-02 01:25:41', '2023-03-02 01:25:41'),
(281, 12, '216.244.66.235', '2023-03-02 05:48:00', '2023-03-02 05:48:00'),
(282, 8, '216.244.66.235', '2023-03-02 06:41:35', '2023-03-02 06:41:35'),
(283, 7, '185.191.171.18', '2023-03-02 09:45:21', '2023-03-02 09:45:21'),
(284, 10, '122.168.241.196', '2023-03-03 01:46:48', '2023-03-03 01:46:48'),
(285, 7, '216.244.66.235', '2023-03-03 07:57:09', '2023-03-03 07:57:09'),
(286, 9, '216.244.66.235', '2023-03-03 11:44:15', '2023-03-03 11:44:15'),
(287, 1, '216.244.66.235', '2023-03-04 13:29:17', '2023-03-04 13:29:17'),
(288, 5, '216.244.66.235', '2023-03-04 19:25:03', '2023-03-04 19:25:03'),
(289, 2, '51.222.253.12', '2023-03-05 20:09:17', '2023-03-05 20:09:17'),
(290, 4, '51.222.253.20', '2023-03-06 09:44:27', '2023-03-06 09:44:27'),
(291, 8, '54.36.148.188', '2023-03-08 15:11:04', '2023-03-08 15:11:04'),
(292, 9, '54.36.148.232', '2023-03-08 20:19:20', '2023-03-08 20:19:20'),
(293, 6, '54.36.149.74', '2023-03-08 21:10:32', '2023-03-08 21:10:32'),
(294, 12, '54.36.148.244', '2023-03-08 22:05:05', '2023-03-08 22:05:05'),
(295, 11, '54.36.148.191', '2023-03-08 22:28:45', '2023-03-08 22:28:45'),
(296, 12, '185.191.171.36', '2023-03-09 03:04:48', '2023-03-09 03:04:48'),
(297, 5, '185.191.171.9', '2023-03-09 15:36:10', '2023-03-09 15:36:10'),
(298, 2, '185.191.171.4', '2023-03-09 16:50:49', '2023-03-09 16:50:49'),
(299, 6, '185.191.171.14', '2023-03-09 18:32:03', '2023-03-09 18:32:03'),
(300, 11, '185.191.171.3', '2023-03-09 18:57:35', '2023-03-09 18:57:35'),
(301, 10, '185.191.171.26', '2023-03-09 20:08:54', '2023-03-09 20:08:54'),
(302, 4, '185.191.171.12', '2023-03-10 11:02:03', '2023-03-10 11:02:03'),
(303, 8, '185.191.171.8', '2023-03-10 15:33:15', '2023-03-10 15:33:15'),
(304, 9, '185.191.171.23', '2023-03-10 18:47:32', '2023-03-10 18:47:32'),
(305, 7, '54.36.148.124', '2023-03-12 05:48:12', '2023-03-12 05:48:12'),
(306, 10, '54.36.148.174', '2023-03-12 09:16:42', '2023-03-12 09:16:42'),
(307, 10, '51.222.253.18', '2023-03-12 10:08:43', '2023-03-12 10:08:43'),
(308, 4, '51.222.253.4', '2023-03-12 10:23:02', '2023-03-12 10:23:02'),
(309, 7, '51.222.253.5', '2023-03-12 10:45:05', '2023-03-12 10:45:05'),
(310, 5, '51.222.253.1', '2023-03-12 23:20:32', '2023-03-12 23:20:32'),
(311, 12, '51.222.253.5', '2023-03-13 05:14:39', '2023-03-13 05:14:39'),
(312, 9, '51.222.253.5', '2023-03-13 08:18:49', '2023-03-13 08:18:49'),
(313, 6, '51.222.253.5', '2023-03-13 09:02:14', '2023-03-13 09:02:14'),
(314, 8, '51.222.253.3', '2023-03-13 09:07:00', '2023-03-13 09:07:00'),
(315, 6, '51.222.253.13', '2023-03-13 09:23:49', '2023-03-13 09:23:49'),
(316, 2, '51.222.253.20', '2023-03-13 12:05:14', '2023-03-13 12:05:14'),
(317, 8, '51.222.253.11', '2023-03-14 09:02:36', '2023-03-14 09:02:36'),
(318, 11, '51.222.253.16', '2023-03-14 13:29:22', '2023-03-14 13:29:22'),
(319, 5, '51.222.253.11', '2023-03-14 14:04:42', '2023-03-14 14:04:42'),
(320, 10, '51.222.253.8', '2023-03-14 14:29:31', '2023-03-14 14:29:31'),
(321, 9, '51.222.253.16', '2023-03-14 14:38:09', '2023-03-14 14:38:09'),
(322, 3, '51.222.253.15', '2023-03-14 14:56:17', '2023-03-14 14:56:17'),
(323, 1, '185.191.171.5', '2023-03-14 20:20:07', '2023-03-14 20:20:07'),
(324, 4, '185.191.171.34', '2023-03-17 08:11:55', '2023-03-17 08:11:55'),
(325, 12, '185.191.171.5', '2023-03-18 06:30:27', '2023-03-18 06:30:27'),
(326, 11, '185.191.171.16', '2023-03-18 11:16:55', '2023-03-18 11:16:55'),
(327, 2, '185.191.171.2', '2023-03-18 20:17:00', '2023-03-18 20:17:00'),
(328, 3, '185.191.171.36', '2023-03-18 20:34:36', '2023-03-18 20:34:36'),
(329, 2, '54.36.148.215', '2023-03-21 19:07:32', '2023-03-21 19:07:32'),
(330, 2, '54.36.148.147', '2023-03-24 01:57:47', '2023-03-24 01:57:47'),
(331, 10, '65.109.120.58', '2023-03-26 20:16:55', '2023-03-26 20:16:55'),
(332, 9, '65.109.120.58', '2023-03-26 20:16:57', '2023-03-26 20:16:57'),
(333, 8, '65.109.120.58', '2023-03-26 20:17:00', '2023-03-26 20:17:00'),
(334, 7, '65.109.120.58', '2023-03-26 20:17:04', '2023-03-26 20:17:04'),
(335, 6, '65.109.120.58', '2023-03-26 20:17:36', '2023-03-26 20:17:36'),
(336, 12, '65.109.120.58', '2023-03-26 20:17:44', '2023-03-26 20:17:44'),
(337, 11, '65.109.120.58', '2023-03-26 20:17:48', '2023-03-26 20:17:48'),
(338, 4, '65.109.120.58', '2023-03-26 20:17:51', '2023-03-26 20:17:51'),
(339, 3, '65.109.120.58', '2023-03-26 20:17:52', '2023-03-26 20:17:52'),
(340, 2, '65.109.120.58', '2023-03-26 20:17:53', '2023-03-26 20:17:53'),
(341, 9, '51.222.253.13', '2023-03-29 21:35:04', '2023-03-29 21:35:04'),
(342, 11, '51.222.253.9', '2023-03-29 23:35:03', '2023-03-29 23:35:03'),
(343, 12, '51.222.253.20', '2023-03-30 00:33:22', '2023-03-30 00:33:22'),
(344, 10, '51.222.253.1', '2023-03-30 01:13:48', '2023-03-30 01:13:48'),
(345, 4, '51.222.253.15', '2023-03-30 20:33:06', '2023-03-30 20:33:06'),
(346, 10, '51.222.253.17', '2023-03-31 03:31:04', '2023-03-31 03:31:04'),
(347, 6, '51.222.253.11', '2023-03-31 03:55:40', '2023-03-31 03:55:40'),
(348, 4, '51.222.253.12', '2023-03-31 09:52:42', '2023-03-31 09:52:42'),
(349, 3, '51.222.253.8', '2023-03-31 10:02:18', '2023-03-31 10:02:18'),
(350, 10, '51.222.253.19', '2023-03-31 11:00:15', '2023-03-31 11:00:15'),
(351, 10, '40.77.167.210', '2023-03-31 11:02:10', '2023-03-31 11:02:10'),
(352, 3, '51.222.253.14', '2023-03-31 12:20:44', '2023-03-31 12:20:44'),
(353, 5, '51.222.253.7', '2023-04-01 22:45:22', '2023-04-01 22:45:22'),
(354, 11, '51.222.253.2', '2023-04-02 03:41:22', '2023-04-02 03:41:22'),
(355, 11, '94.130.237.182', '2023-04-02 19:13:22', '2023-04-02 19:13:22'),
(356, 4, '94.130.237.182', '2023-04-02 19:13:29', '2023-04-02 19:13:29'),
(357, 12, '94.130.237.182', '2023-04-02 19:13:35', '2023-04-02 19:13:35'),
(358, 3, '94.130.237.182', '2023-04-02 19:13:40', '2023-04-02 19:13:40'),
(359, 2, '94.130.237.182', '2023-04-02 19:13:46', '2023-04-02 19:13:46'),
(360, 6, '94.130.237.182', '2023-04-02 19:14:46', '2023-04-02 19:14:46'),
(361, 10, '94.130.237.182', '2023-04-02 19:14:55', '2023-04-02 19:14:55'),
(362, 9, '94.130.237.182', '2023-04-02 19:15:04', '2023-04-02 19:15:04'),
(363, 7, '94.130.237.182', '2023-04-02 19:15:13', '2023-04-02 19:15:13'),
(364, 8, '94.130.237.182', '2023-04-02 19:15:23', '2023-04-02 19:15:23'),
(365, 5, '51.222.253.16', '2023-04-02 19:30:49', '2023-04-02 19:30:49'),
(366, 5, '94.130.237.182', '2023-04-02 19:44:36', '2023-04-02 19:44:36'),
(367, 4, '40.77.167.102', '2023-04-02 23:43:50', '2023-04-02 23:43:50'),
(368, 2, '51.222.253.7', '2023-04-03 07:17:57', '2023-04-03 07:17:57'),
(369, 7, '185.191.171.19', '2023-04-03 12:24:41', '2023-04-03 12:24:41'),
(370, 6, '51.222.253.19', '2023-04-03 20:20:01', '2023-04-03 20:20:01'),
(371, 11, '51.222.253.1', '2023-04-03 20:54:42', '2023-04-03 20:54:42'),
(372, 11, '51.222.253.14', '2023-04-03 22:01:46', '2023-04-03 22:01:46'),
(373, 12, '122.168.90.54', '2023-04-03 23:20:29', '2023-04-03 23:20:29'),
(374, 5, '51.222.253.4', '2023-04-04 03:51:23', '2023-04-04 03:51:23'),
(375, 10, '52.167.144.149', '2023-04-04 07:58:31', '2023-04-04 07:58:31'),
(376, 3, '185.191.171.23', '2023-04-04 09:04:02', '2023-04-04 09:04:02'),
(377, 10, '37.187.75.176', '2023-04-04 11:58:08', '2023-04-04 11:58:08'),
(378, 9, '37.187.75.176', '2023-04-04 11:58:09', '2023-04-04 11:58:09'),
(379, 8, '37.187.75.176', '2023-04-04 11:58:14', '2023-04-04 11:58:14'),
(380, 7, '37.187.75.176', '2023-04-04 11:58:17', '2023-04-04 11:58:17'),
(381, 6, '37.187.75.176', '2023-04-04 11:58:42', '2023-04-04 11:58:42'),
(382, 12, '37.187.75.176', '2023-04-04 11:58:51', '2023-04-04 11:58:51'),
(383, 11, '37.187.75.176', '2023-04-04 11:58:56', '2023-04-04 11:58:56'),
(384, 4, '37.187.75.176', '2023-04-04 11:58:59', '2023-04-04 11:58:59'),
(385, 3, '37.187.75.176', '2023-04-04 11:59:00', '2023-04-04 11:59:00'),
(386, 2, '37.187.75.176', '2023-04-04 11:59:02', '2023-04-04 11:59:02'),
(387, 12, '69.160.160.54', '2023-04-05 22:58:20', '2023-04-05 22:58:20'),
(388, 4, '69.160.160.54', '2023-04-05 22:58:21', '2023-04-05 22:58:21'),
(389, 11, '69.160.160.54', '2023-04-05 22:58:22', '2023-04-05 22:58:22'),
(390, 8, '69.160.160.54', '2023-04-05 22:58:23', '2023-04-05 22:58:23'),
(391, 2, '69.160.160.54', '2023-04-05 22:58:25', '2023-04-05 22:58:25'),
(392, 10, '122.168.0.77', '2023-04-06 02:49:46', '2023-04-06 02:49:46'),
(393, 10, '182.68.166.177', '2023-04-06 03:12:27', '2023-04-06 03:12:27'),
(394, 6, '51.222.253.15', '2023-04-06 07:17:58', '2023-04-06 07:17:58'),
(395, 12, '51.222.253.6', '2023-04-06 09:24:48', '2023-04-06 09:24:48'),
(396, 11, '51.222.253.11', '2023-04-06 09:59:33', '2023-04-06 09:59:33'),
(397, 12, '182.77.76.11', '2023-04-07 01:16:14', '2023-04-07 01:16:14'),
(398, 10, '182.77.76.11', '2023-04-07 01:34:15', '2023-04-07 01:34:15'),
(399, 9, '182.77.76.11', '2023-04-07 01:34:24', '2023-04-07 01:34:24'),
(400, 4, '182.77.76.11', '2023-04-07 01:34:32', '2023-04-07 01:34:32'),
(401, 3, '182.77.76.11', '2023-04-07 01:34:35', '2023-04-07 01:34:35'),
(402, 12, '223.236.0.208', '2023-04-07 02:26:23', '2023-04-07 02:26:23'),
(403, 8, '40.77.167.231', '2023-04-07 02:41:22', '2023-04-07 02:41:22'),
(404, 2, '51.222.253.1', '2023-04-07 21:51:07', '2023-04-07 21:51:07'),
(405, 10, '37.46.113.158', '2023-04-08 01:21:34', '2023-04-08 01:21:34'),
(406, 9, '37.46.113.158', '2023-04-08 01:21:36', '2023-04-08 01:21:36'),
(407, 8, '37.46.113.158', '2023-04-08 01:21:37', '2023-04-08 01:21:37'),
(408, 7, '37.46.113.158', '2023-04-08 01:21:40', '2023-04-08 01:21:40'),
(409, 6, '37.46.113.158', '2023-04-08 01:21:41', '2023-04-08 01:21:41'),
(410, 11, '37.46.113.158', '2023-04-08 01:21:46', '2023-04-08 01:21:46'),
(411, 4, '37.46.113.158', '2023-04-08 01:21:47', '2023-04-08 01:21:47'),
(412, 3, '37.46.113.158', '2023-04-08 01:21:49', '2023-04-08 01:21:49'),
(413, 2, '37.46.113.158', '2023-04-08 01:21:50', '2023-04-08 01:21:50'),
(414, 12, '37.46.113.158', '2023-04-08 01:21:52', '2023-04-08 01:21:52'),
(415, 9, '185.191.171.42', '2023-04-08 20:26:36', '2023-04-08 20:26:36'),
(416, 5, '185.191.171.15', '2023-04-11 14:48:35', '2023-04-11 14:48:35'),
(417, 6, '185.191.171.8', '2023-04-11 15:45:16', '2023-04-11 15:45:16'),
(418, 7, '185.191.171.36', '2023-04-11 22:51:13', '2023-04-11 22:51:13'),
(419, 10, '185.191.171.9', '2023-04-11 23:39:06', '2023-04-11 23:39:06'),
(420, 1, '185.191.171.41', '2023-04-12 08:55:04', '2023-04-12 08:55:04'),
(421, 11, '185.191.171.35', '2023-04-12 10:19:09', '2023-04-12 10:19:09'),
(422, 4, '185.191.171.9', '2023-04-12 12:11:23', '2023-04-12 12:11:23'),
(423, 8, '185.191.171.23', '2023-04-12 16:53:07', '2023-04-12 16:53:07'),
(424, 10, '::1', '2023-09-04 11:32:21', '2023-09-04 11:32:21'),
(425, 12, '::1', '2023-09-04 11:36:47', '2023-09-04 11:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `returns` longtext NOT NULL,
  `return_policy` longtext NOT NULL,
  `make_a_return` longtext DEFAULT NULL,
  `return_via_post` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `returns`, `return_policy`, `make_a_return`, `return_via_post`, `created_at`, `updated_at`) VALUES
(1, '<p>We want you to be completely satisfied with your online purchase, so we offer 14 day returns from the delivery date.</p>\r\n\r\n<ul>\r\n</ul>', '<h2>RETURN POLICY</h2>\r\n\r\n<p>Please note, due to recent NSW COVID restrictions there will be an additional 2-3 day delay in processing your return.&nbsp;</p>\r\n\r\n<p>We want you to be completely satisfied with your online purchase.</p>\r\n\r\n<p>If you change your mind for any reason, you are welcome to return it back to us within 14 days of receiving it. We offer refunds, exchanges and store credits subject to the following conditions:</p>\r\n\r\n<h3>RETURNING CONDITION</h3>\r\n\r\n<p>Item/s must be returned in original condition, unworn, unaltered, unwashed and with their tags attached. If merchandise is returned despite these conditions your return will be sent back to you at an additional charge;</p>\r\n\r\n<h3>REFUNDS</h3>\r\n\r\n<p>Full-priced items are eligible for a full refund, unless purchased with Klarna;</p>\r\n\r\n<h3>KLARNA</h3>\r\n\r\n<p>Orders placed with&nbsp;Klarna&nbsp;are only eligible for a store credit or exchange;</p>\r\n\r\n<h3>FULL-PRICED</h3>\r\n\r\n<p>Full-priced items are eligible for refund, exchange or store credit;</p>\r\n\r\n<h3>SALE ITEMS</h3>\r\n\r\n<p>Sale items&nbsp;or&nbsp;items purchased during a flash sale/promotional event&nbsp;are only eligible for a store credit or exchange;</p>\r\n\r\n<h3>FINAL SALE</h3>\r\n\r\n<p>Item/s marked as&nbsp;&quot;final sale - no returns or exchanges&quot; cannot be returned.&nbsp;If merchandise is returned despite this policy, items will be sent back to you at an additional charge;</p>\r\n\r\n<h3>PROMOTIONAL CODE</h3>\r\n\r\n<p>Orders placed with a promo code that discounts the order (excluding our Welcome 10% Offer) are only eligible for a store credit or exchange;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>SWIM</h3>\r\n\r\n<p>All swimwear must be tried on wearing undergarments, the protective hygiene strip must remain in place and will not be accepted if removed or altered;</p>\r\n\r\n<h3>GIFT CARDS</h3>\r\n\r\n<p>Gift Cards may not be returned;</p>\r\n\r\n<h3>RETURN SHIPPING</h3>\r\n\r\n<p>We suggest all items are tried on as soon as they are received to ensure you are able to return items within the return&rsquo;s timeframe. Store-credit notes are valid for 3 years from the date of issue.</p>\r\n\r\n<p>We offer international return shipping for $35, please&nbsp;<a href=\"https://appnosoft.com/sirthelabel/pages/shipping\">click here</a>&nbsp;to purchase your shipping label. At checkout enter the address the item will be picked up from and once you finalise the order, our team will send you your shipping label. Please note that our&nbsp;Customer Care office hours are from 9am - 4pm AEST and not available over the weekend but will send your label as soon as possible.&nbsp;</p>\r\n\r\n<p>Original shipping charges and duties and taxes are non-refundable and charges for returned items are the responsibility of the customer. SIR takes no responsibility for missing incoming deliveries of a return. We encourage you to return your item/s via registered or traceable postal services as return parcels remain the responsibility of the customer until received by SIR.</p>\r\n\r\n<h3>PROCESSING TIME FOR RETURNS</h3>\r\n\r\n<p>We endeavour to process refunds daily but please allow up to 3-5 business days for your return to be processed.&nbsp;You will receive email notification of when our team has received your return and again when it has been processed.&nbsp;</p>\r\n\r\n<h3>FAULTY ITEMS</h3>\r\n\r\n<p>We sincerely apologise for any inconvenience caused by receiving a faulty garment. Please contact our Customer Care team&nbsp;info@sirthelabel.com&nbsp;with your order number and images of the fault&nbsp;and we will work with you to resolve it as soon as possible.&nbsp;<br />\r\n<br />\r\nPlease note that faulty items purchased from a SIR stockist are required to returned to the place of purchase.</p>', '<h2>ONLINE RETURN PORTAL</h2>\r\n\r\n<p>Ensure your return meets the conditions of our Returns Policy and complies with the below points before lodging your return.</p>\r\n\r\n<h3>STEP 1</h3>\r\n\r\n<p>Item/s must be returned within 14 days of delivery.</p>\r\n\r\n<h3>STEP 2</h3>\r\n\r\n<p>Item must be unworn with original tags attached.</p>\r\n\r\n<h3>STEP 3</h3>\r\n\r\n<p>Items must be returned in their original packaging.</p>', '<h2>RETURN VIA POST</h2>\r\n\r\n<h3>STEP 1</h3>\r\n\r\n<p>Ensure your return meets the conditions of our policy.<br />\r\nRead&nbsp;<a href=\"https://appnosoft.com/sirthelabel/pages/returns\">Return Policy</a></p>\r\n\r\n<h3>STEP 2</h3>\r\n\r\n<p>Login to the Returns Portal and follow the steps to completion.</p>\r\n\r\n<h3>STEP 3</h3>\r\n\r\n<p>An email will be sent to you with returns address.</p>\r\n\r\n<h3>REUSABLE POST SATCHELS</h3>\r\n\r\n<p>Our post satchels are 100% compostable and can be reused for your return. Add SIR.&#39;s returns address to the bag and reseal with the additional adhesive strip.</p>', '2022-03-29 18:17:33', '2022-04-04 12:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `return_via_post_steps`
--

CREATE TABLE `return_via_post_steps` (
  `id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `step` text DEFAULT NULL,
  `step_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_and_deliveries`
--

CREATE TABLE `shipping_and_deliveries` (
  `id` int(11) NOT NULL,
  `shipping_and_delivery` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_and_deliveries`
--

INSERT INTO `shipping_and_deliveries` (`id`, `shipping_and_delivery`, `created_at`, `updated_at`) VALUES
(1, '<h1>SHIPPING</h1>\r\n\r\n<p>We offer free express worldwide shipping on all orders! Please note duties and tax charges might be incurred at checkout depending on shipping location. Check services below for more details.</p>\r\n\r\n<h2>INTERNATIONAL&nbsp;SERVICES</h2>\r\n\r\n<p>Due to the new NSW COVID restrictions please allow an additional 5-10 days for dispatch of your order.&nbsp;</p>\r\n\r\n<table style=\"width:551px\">\r\n	<thead>\r\n		<tr>\r\n			<th>\r\n			<p>SERVICES</p>\r\n			</th>\r\n			<th>\r\n			<p>DELIVERY</p>\r\n			</th>\r\n			<th>\r\n			<p>COST</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>United States DHL Express Shipping</p>\r\n			</td>\r\n			<td>\r\n			<p>3-6 Business Days</p>\r\n			</td>\r\n			<td>\r\n			<p>FREE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>UK + Europe DHL Express Shipping</p>\r\n			</td>\r\n			<td>\r\n			<p>3-5 Business Days</p>\r\n			</td>\r\n			<td>\r\n			<p>FREE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Rest Of World DHL Express Shipping</p>\r\n			</td>\r\n			<td>\r\n			<p>3-6 Business Days</p>\r\n			</td>\r\n			<td>\r\n			<p>FREE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Israel &amp; United Arab Emirates DHL Express Shipping</p>\r\n			</td>\r\n			<td>\r\n			<p>3-8 Business Days</p>\r\n			</td>\r\n			<td>\r\n			<p>FREE</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>PROCESSING TIME</h3>\r\n\r\n<p>Please allow 1-2 days for our team to pick and pack you order. Shipping timeframes are in addition to our processing times.</p>\r\n\r\n<p>Orders will be delivered between 8am &ndash; 6pm Monday to Friday. Please ensure that someone is available at your delivery address as a signature will be requested upon delivery. If an authorised person is not able to sign for your delivery the driver will leave a card and the delivery will be returned to the nearest collection centre for you to collect.</p>\r\n\r\n<p>Please note that once your order is on its way, we are unable to change the shipping address.</p>\r\n\r\n<h3>POSSIBLE DELAYS</h3>\r\n\r\n<p>We do our best to ensure the timely delivery of all orders, please bear in mind that we are only provided with an estimated delivery date from our carriers. On a rare occasion, your order can arrive outside of the estimated timeframe.</p>\r\n\r\n<h3>TRACKING YOUR ORDER</h3>\r\n\r\n<p>You can track your order via our shipping confirmation email and from your &quot;My Account&quot;. If you do not receive your tracking details, please contact our team directly.</p>\r\n\r\n<h3>DUTIES &amp; TAXES</h3>\r\n\r\n<p>Taxes and duties are calculated at checkout according to your shipping destination and itemised on the order summary page. We ship on a DDP (Delivery Duty Paid) basis, which means that all relevant import taxes and duties will paid at the time of purchase.&nbsp;Note that duties and taxes are non-refundable.</p>\r\n\r\n<h3>CHANGING OR CANCELLING AN ORDER</h3>\r\n\r\n<p>If you need to change or cancel your order please contact our team straight away&nbsp;by clicking&nbsp;<a href=\"https://appnosoft.com/sirthelabel/pages/contact-us\">here</a>.</p>\r\n\r\n<p>We unfortunately cannot make any changes or cancel your order after it has left our premises.&nbsp;We pack and ship orders daily so cannot guarantee your requests can be made.</p>\r\n\r\n<h3>ORDER INSURANCE - WITH ROUTE PACKAGE PROTECTION</h3>\r\n\r\n<p>Route Package Protection is a service that insures your order during transit and can be added to your order checkout. SIR. is not liable for any lost, damaged or stolen parcels during transit. Route is not refundable. &nbsp;<br />\r\nIf you need to lodge an undelivered order, file a claim on their website at&nbsp;<a href=\"https://help.route.com/\" target=\"_blank\">help.route.com</a>.</p>\r\n\r\n<h3>GIFT WRAPPING &amp; MESSAGE</h3>\r\n\r\n<p>SIR. offers signature gift wrapping at checkout which can be added to your order for $10 USD. Wrapping includes box,&nbsp;tissue paper, SIR sticker wrapped in a ribbon, personal note can also be added on a handwritten printed SIR. card.</p>\r\n\r\n<p>If you require presents to be separately wrapped we&nbsp;require you to place&nbsp;separate orders.&nbsp;</p>\r\n\r\n<h3>PRE-ORDER</h3>\r\n\r\n<p>Pre-order items will be processed like a normal order but shipped at a later date. Date will be specified on the product page and you will receive a confirmation once your order has been shipped.&nbsp;</p>\r\n\r\n<p> For orders that contain an in-stock&nbsp;item/s&nbsp;your order will be&nbsp;shipped separately so you receive your in-stock item/s straight away. No additional postage charged will be incurred in these circumstances.</p>\r\n\r\n<p>NEED HELP?</p>\r\n\r\n<ul>\r\n	<li>&nbsp;info@sirthelabel.com</li>\r\n	<li>&nbsp;+61 2 9191 0245</li>\r\n	<li><a href=\"https://appnosoft.com/sirthelabel/pages/contact-us\">&nbsp;live chat</a></li>\r\n</ul>', '2022-03-29 14:19:27', '2022-03-31 18:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_times`
--

CREATE TABLE `shipping_times` (
  `id` int(11) NOT NULL,
  `shipping_time` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_times`
--

INSERT INTO `shipping_times` (`id`, `shipping_time`, `created_at`, `updated_at`) VALUES
(1, '7 Days', '2022-12-23 13:22:43', '2022-12-23 13:22:43'),
(2, '10 Days', '2022-12-23 13:22:43', '2022-12-23 13:22:43'),
(3, '1-2 Weeks', '2022-12-23 13:22:43', '2022-12-23 13:22:43'),
(4, '2-3 Weeks', '2022-12-23 13:22:43', '2022-12-23 13:22:43'),
(5, '3-4 Weeks', '2022-12-23 13:22:43', '2022-12-23 13:22:43'),
(6, '4-5 Weeks', '2022-12-23 13:22:43', '2022-12-23 13:22:43'),
(7, 'Above 5 Weeks', '2022-12-23 13:22:43', '2022-12-23 13:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 'XS', '2021-11-29 13:28:16', '2022-12-30 10:33:37'),
(2, 'S', '2021-11-29 13:28:16', '2022-12-30 10:33:37'),
(3, 'M', '2021-11-29 13:28:16', '2022-12-30 10:33:37'),
(4, 'L', '2021-11-29 13:28:16', '2022-12-30 10:33:37'),
(5, 'XL', '2021-11-29 13:29:40', '2022-12-30 10:33:37'),
(6, 'XXL', '2021-11-29 13:29:40', '2022-12-30 10:34:46'),
(7, '3XXL', '2021-11-29 13:29:40', '2022-12-30 10:34:46'),
(8, '4XXL', '2021-11-29 13:29:40', '2022-12-30 10:34:46'),
(9, '5XXL', '2021-11-29 13:29:40', '2022-12-30 10:34:46'),
(10, '6XXL', '2021-12-03 09:01:35', '2022-12-30 10:34:46'),
(11, 'One Size', '2021-12-03 09:01:35', '2022-12-30 10:36:09'),
(12, 'Free Size', '2021-12-03 09:01:35', '2022-12-30 10:36:09'),
(13, 'Custom Tailored', '2021-12-03 09:01:35', '2022-12-30 10:36:37'),
(14, '1-2 years', '2021-12-03 09:01:35', '2022-12-30 10:38:49'),
(15, '2-3 years', '2021-12-03 09:01:35', '2022-12-30 10:38:57'),
(16, '3-4 years', '2021-12-03 09:01:35', '2022-12-30 10:39:05'),
(17, '4-5 years', '2022-12-30 10:41:15', '2022-12-30 10:41:15'),
(18, '5-6 years', '2022-12-30 10:41:15', '2022-12-30 10:41:15'),
(19, '6-7 years', '2022-12-30 10:41:15', '2022-12-30 10:41:15'),
(20, '7-8 years', '2022-12-30 10:41:15', '2022-12-30 10:41:15'),
(21, '8-9 years', '2022-12-30 10:41:15', '2022-12-30 10:41:15'),
(22, '9-10 years', '2022-12-30 10:41:15', '2022-12-30 10:41:15'),
(23, '10-11 years', '2022-12-30 10:43:04', '2022-12-30 10:43:04'),
(24, '11-12 years', '2022-12-30 10:43:04', '2022-12-30 10:43:04'),
(25, '12-13 years', '2022-12-30 10:43:04', '2022-12-30 10:43:04'),
(26, '13-14 years', '2022-12-30 10:43:04', '2022-12-30 10:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `slider_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `category_id`, `slider_image`, `created_at`, `updated_at`) VALUES
(4, NULL, '1642058638_HOLIDAY-MOCK-3_1536x.jpg', '2022-01-13 14:23:58', '2022-01-13 14:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `social_profiles`
--

CREATE TABLE `social_profiles` (
  `id` int(11) NOT NULL,
  `social_icon` varchar(255) NOT NULL,
  `social_name` varchar(255) NOT NULL,
  `social_link` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_profiles`
--

INSERT INTO `social_profiles` (`id`, `social_icon`, `social_name`, `social_link`, `created_at`, `updated_at`) VALUES
(1, '1648017127_instagram-1464538-1239449.webp', 'INSTAGRAM', 'https://www.instagram.com/sir_thelabel/?hl=en', '2022-03-23 13:16:10', '2022-03-23 13:32:07'),
(2, '1648016441_pinterest.png', 'PINTEREST', 'https://www.pinterest.com.au/sir_thelabel/_created/', '2022-03-23 13:20:41', '2022-03-23 13:31:02'),
(3, '1648017025_facebook.png', 'FACEBOOK', 'https://www.facebook.com/sirthelabel/', '2022-03-23 13:30:25', '2022-03-23 13:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `spirited_changes`
--

CREATE TABLE `spirited_changes` (
  `id` int(11) NOT NULL,
  `spirited_change` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spirited_changes`
--

INSERT INTO `spirited_changes` (`id`, `spirited_change`, `created_at`, `updated_at`) VALUES
(1, 'Black Owned', '2021-09-29 08:47:13', '2021-09-29 08:47:13'),
(2, 'Women Owned', '2021-09-29 08:47:13', '2021-09-29 08:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` mediumint(8) UNSIGNED NOT NULL,
  `country_code` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fips_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag` tinyint(1) NOT NULL DEFAULT 1,
  `wikiDataId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_address` text NOT NULL,
  `store_time` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `store_name`, `store_image`, `store_address`, `store_time`, `created_at`, `updated_at`) VALUES
(1, 'PERTH SUMMER POP-UP', '1648717637_586e032f-0b7c-44f7-843f-48de0211c296_1200x.webp', 'Shop 161 Claremont Quarter 9 Bayview Terrace, Claremont, WA, 6010', '<p>Mon, Tues, Wed, Fri, Sat: 9:30AM - 5:5PM</p>\r\n\r\n<p>Thurs: 9:30AM - 7PM</p>\r\n\r\n<p>Sun: 11AM - 4PM</p>\r\n\r\n<p>Email: claremontboutique@sirthelabel.com</p>\r\n\r\n<p>Call: +61 448 750 820</p>', '2022-03-31 03:37:17', '2022-03-31 17:41:43'),
(2, 'MANLY BOUTIQUE', '1648718601_143A1180_1200x.webp', '85/87 Pittwater Rd, Manly NSW', '<p>Mon - Sat: 10am - 5pm</p>\r\n\r\n<p>Sun: 10am - 4pm</p>\r\n\r\n<p>Email: manlyboutique@sirthelabel.com</p>\r\n\r\n<p>Call: +61 29191 0245</p>', '2022-03-31 03:53:21', '2022-03-31 17:41:34'),
(3, 'BONDI FLAGSHIP STORE', '1648718763_sir-the-label-bondi_1000x.webp', '81a Gould Street, Bondi NSW 2026', '<p>Mon - Sat: 10am - 5pm</p>\r\n\r\n<p>Sun: 10am - 4pm</p>\r\n\r\n<p>Email: manlyboutique@sirthelabel.com</p>\r\n\r\n<p>Call: +61 29191 0245</p>', '2022-03-31 03:56:03', '2022-03-31 17:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'parihar.ravindra23@gmail.com', '2021-12-03 12:37:53', '2021-12-03 12:37:53'),
(2, 'ravi.imenso@gmail.com', '2021-12-03 12:38:07', '2021-12-03 12:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `sub_category_slug` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category`, `sub_category_slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 'bridal lehenga', 'bridal-lehenga', 1, '2022-12-20 00:19:35', '2022-12-29 17:30:43'),
(3, 9, 'embroidered lehenga', 'embroidered-lehenga', 1, '2022-12-20 00:43:13', '2022-12-29 17:30:38'),
(4, 9, 'printed lehenga', 'printed-lehenga', 1, '2022-12-20 00:48:50', '2022-12-29 17:30:34'),
(5, 9, 'bridesmaid lehenga', 'bridesmaid-lehenga', 1, '2022-12-20 00:49:39', '2023-04-06 01:28:30'),
(6, 8, 'embroidered saree', 'embroidered-saree', 1, '2022-12-20 00:50:38', '2022-12-30 22:22:00'),
(7, 8, 'Printed Saree', 'printed-saree', 1, '2022-12-20 00:51:16', '2022-12-29 17:30:17'),
(8, 8, 'cocktail saree', 'cocktail-saree', 1, '2022-12-20 00:51:58', '2023-04-01 03:57:39'),
(9, 8, 'silk saree', 'silk-saree', 1, '2022-12-20 00:52:44', '2022-12-30 22:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_gifts`
--

CREATE TABLE `sub_category_gifts` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_category_gift` varchar(255) NOT NULL,
  `gift_brand_product_heading` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category_gifts`
--

INSERT INTO `sub_category_gifts` (`id`, `sub_category_id`, `sub_category_gift`, `gift_brand_product_heading`, `created_at`, `updated_at`) VALUES
(1, 1, 'Custom Engraved', 'Custom Engraved Scotch', '2021-09-11 09:36:04', '2021-09-29 14:10:50'),
(2, 1, 'Accessories', 'Scotch and Accessories', '2021-09-11 09:36:04', '2021-09-29 14:19:32'),
(3, 1, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 09:36:15', '2021-09-29 14:05:33'),
(4, 2, 'Custom Engraved', 'Custom Engraved Bourbon', '2021-09-11 09:38:55', '2021-09-29 14:10:50'),
(5, 2, 'Accessories', 'Bourbon and Accessories', '2021-09-11 09:38:55', '2021-09-29 14:19:32'),
(6, 2, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 09:38:55', '2021-09-29 14:05:33'),
(7, 3, 'Custom Engraved', 'Custom Engraved Whiskey & Rye', '2021-09-11 09:38:55', '2021-09-29 14:10:50'),
(8, 3, 'Accessories', 'Whiskey and Accessories', '2021-09-11 10:18:27', '2021-09-29 14:19:32'),
(9, 3, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:18:27', '2021-09-29 14:05:33'),
(10, 4, 'Custom Engraved', 'Custom Engraved Tequila', '2021-09-11 10:18:27', '2021-09-29 14:10:50'),
(11, 4, 'Accessories', 'Tequila and Accessories', '2021-09-11 10:18:27', '2021-09-29 14:19:32'),
(12, 4, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:18:27', '2021-09-29 14:05:33'),
(13, 5, 'Custom Engraved', 'Custom Engraved Mezcal & Agave Spirits', '2021-09-11 10:18:27', '2021-09-29 14:10:50'),
(14, 5, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:24:01', '2021-09-29 14:05:33'),
(15, 6, 'Custom Engraved', 'Custom Engraved Cognac & Brandy', '2021-09-11 10:24:01', '2021-09-29 14:10:50'),
(16, 6, 'Accessories', 'Cognac and Accessories', '2021-09-11 10:24:01', '2021-09-29 14:19:32'),
(17, 6, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:24:01', '2021-09-29 14:05:33'),
(18, 7, 'Custom Engraved', 'Custom Engraved Vodka', '2021-09-11 10:24:01', '2021-09-29 14:10:50'),
(19, 7, 'Accessories', 'Vodka and Accessories', '2021-09-11 10:24:01', '2021-09-29 14:19:32'),
(20, 7, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:27:27', '2021-09-29 14:05:33'),
(21, 8, 'Custom Engraved', 'Custom Engraved Gin', '2021-09-11 10:27:27', '2021-09-29 14:10:50'),
(22, 8, 'Accessories', 'Gin and Accessories', '2021-09-11 10:27:27', '2021-09-29 14:19:32'),
(23, 8, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:27:27', '2021-09-29 14:05:33'),
(24, 9, 'Custom Engraved', 'Custom Engraved Rum', '2021-09-11 10:29:44', '2021-09-29 14:10:50'),
(25, 9, 'Accessories', 'Rum and Accessories', '2021-09-11 10:29:44', '2021-09-29 14:19:32'),
(26, 9, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:29:44', '2021-09-29 14:07:01'),
(27, 10, 'Custom Engraved', 'Custom Engraved Liqueur', '2021-09-11 10:29:44', '2021-09-29 14:14:00'),
(28, 10, 'Gift Sets', 'Liqueur Gift Sets', '2021-09-11 10:29:44', '2021-09-29 14:29:46'),
(29, 10, 'Accessories', 'Liqueur and Accessories', '2021-09-11 10:32:25', '2021-09-29 14:23:08'),
(30, 10, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:32:25', '2021-09-29 14:07:01'),
(31, 11, 'Multi-Bottle', 'Ready To Drink', '2021-09-11 10:32:25', '2021-09-29 14:31:40'),
(32, 12, 'Accessories', 'Moonshine and Accessories', '2021-09-11 10:32:25', '2021-09-29 14:23:08'),
(33, 12, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:32:25', '2021-09-29 14:07:01'),
(34, 13, 'Custom Engraved', 'Custom Engraved Cocktail Mixers', '2021-09-11 10:33:49', '2021-09-29 14:14:00'),
(35, 13, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-11 10:33:49', '2021-09-29 14:07:01'),
(36, 15, 'Custom Engraved', 'Custom Engraved Wine', '2021-09-16 13:42:21', '2021-09-29 14:14:00'),
(37, 15, 'Wine Gift Sets', 'Wine Gift Sets', '2021-09-16 13:42:21', '2021-09-29 14:29:46'),
(38, 15, 'Wine Accessories', 'Wine and Accessories', '2021-09-16 13:42:21', '2021-09-29 14:23:08'),
(39, 14, 'Custom Engraved', 'Custom Engraved Champagne', '2021-09-17 08:43:15', '2021-09-29 14:14:00'),
(40, 14, 'Gift Sets', 'Champagne Gift Sets', '2021-09-17 08:43:15', '2021-09-29 14:29:46'),
(41, 14, 'Accessories', 'Champagne and Accessories', '2021-09-17 08:43:15', '2021-09-29 14:23:08'),
(42, 14, 'Corporate Gifts', 'Corporate Gift Guide', '2021-09-17 08:43:15', '2021-09-29 14:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_new_and_limiteds`
--

CREATE TABLE `sub_category_new_and_limiteds` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_category_typenew_and_limited` varchar(255) NOT NULL,
  `brand_product_heading` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category_new_and_limiteds`
--

INSERT INTO `sub_category_new_and_limiteds` (`id`, `sub_category_id`, `sub_category_typenew_and_limited`, `brand_product_heading`, `created_at`, `updated_at`) VALUES
(1, 1, 'New Releases', 'New and Limited Scotch', '2021-09-11 09:36:04', '2021-09-29 12:56:10'),
(2, 1, 'Limited Editions', 'Scotch Limited Editions', '2021-09-11 09:36:04', '2021-09-29 12:56:10'),
(3, 1, 'Celebrity Scotch Brands', 'Celebrity Scotch Brands', '2021-09-11 09:36:15', '2021-09-29 12:56:10'),
(4, 2, 'New Releases', 'New and Limited Bourbon', '2021-09-11 09:38:55', '2021-09-29 13:20:01'),
(5, 2, 'Limited Editions', 'Bourbon Limited Editions', '2021-09-11 09:38:55', '2021-09-29 13:20:01'),
(6, 2, 'Celebrity Bourbon Brands', 'Celebrity Bourbon Brands', '2021-09-11 09:38:55', '2021-09-29 13:20:01'),
(7, 3, 'New Releases', 'New and Limited Whiskey', '2021-09-11 09:38:55', '2021-09-29 13:24:24'),
(8, 3, 'Limited Editions', 'Whiskey & Rye Limited Editions', '2021-09-11 10:18:27', '2021-09-29 13:24:24'),
(9, 3, 'Celebrity Whiskey Brands', 'Celebrity Whiskey Brands', '2021-09-11 10:18:27', '2021-09-29 13:24:24'),
(10, 4, 'New Releases', 'New and Limited Tequila', '2021-09-11 10:18:27', '2021-09-29 13:27:08'),
(11, 4, 'Limited Editions', 'Tequila Limited Editions', '2021-09-11 10:18:27', '2021-09-29 13:28:24'),
(12, 4, 'Celebrity Tequila Brands', 'Celebrity Tequila Brands', '2021-09-11 10:18:27', '2021-09-29 13:27:08'),
(13, 5, 'New Releases', 'New Releases', '2021-09-11 10:18:27', '2021-09-29 13:31:41'),
(14, 5, 'Limited Editions', 'Limited Editions', '2021-09-11 10:24:01', '2021-09-29 13:31:41'),
(15, 5, 'Celebrity Mezcal Brands', 'Celebrity & Entertainment', '2021-09-11 10:24:01', '2021-09-29 13:31:41'),
(16, 6, 'New Releases', 'New and Limited Cognac', '2021-09-11 10:24:01', '2021-09-29 13:35:14'),
(17, 6, 'Limited Editions', 'Cognac Limited Editions', '2021-09-11 10:24:01', '2021-09-29 13:35:23'),
(18, 6, 'Celebrity Cognac', 'Celebrity Cognac Brands', '2021-09-11 10:24:01', '2021-09-29 13:35:25'),
(19, 7, 'New Releases', 'New and Limited Vodka', '2021-09-11 10:24:01', '2021-09-29 13:38:36'),
(20, 7, 'Limited Editions', 'Vodka Limited Editions', '2021-09-11 10:27:27', '2021-09-29 13:38:36'),
(21, 7, 'Celebrity Vodka Brands', 'Celebrity Vodka Brands', '2021-09-11 10:27:27', '2021-09-29 13:38:36'),
(22, 8, 'New Releases', 'New and Limited Gin', '2021-09-11 10:27:27', '2021-09-29 13:46:07'),
(23, 8, 'Limited Editions', 'Gin Limited Editions', '2021-09-11 10:27:27', '2021-09-29 13:46:07'),
(24, 8, 'Celebrity Gin Brands', 'Celebrity Gin Brands', '2021-09-11 10:29:44', '2021-09-29 13:46:07'),
(25, 9, 'New Releases', 'New and Limited Rum', '2021-09-11 10:29:44', '2021-09-29 13:47:07'),
(26, 9, 'Limited Editions', 'Rum Limited Editions', '2021-09-11 10:29:44', '2021-09-29 13:48:53'),
(27, 9, 'Celebrity Rum Brands', 'Celebrity Rum Brands', '2021-09-11 10:29:44', '2021-09-29 13:48:53'),
(28, 10, 'New Releases', 'New and Limited Liqueur', '2021-09-11 10:29:44', '2021-09-29 13:52:25'),
(29, 10, 'Limited Editions', 'Liqueur Limited Editions', '2021-09-11 10:32:25', '2021-09-29 13:52:25'),
(30, 12, 'New Releases', 'New and Limited Moonshine', '2021-09-11 10:32:25', '2021-09-29 13:54:59'),
(31, 12, 'Limited Editions', 'Moonshine Limited Editions', '2021-09-11 10:32:25', '2021-09-29 13:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_red_wines`
--

CREATE TABLE `sub_category_red_wines` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_category_red_wine` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category_red_wines`
--

INSERT INTO `sub_category_red_wines` (`id`, `sub_category_id`, `sub_category_red_wine`, `created_at`, `updated_at`) VALUES
(1, 15, 'Cabernet Sauvignon', '2021-09-17 06:18:32', '2021-09-17 06:18:32'),
(2, 15, 'Malbec', '2021-09-17 06:18:32', '2021-09-17 06:18:32'),
(3, 15, 'Merlot', '2021-09-17 06:18:32', '2021-09-17 06:18:32'),
(4, 15, 'Pinot Noir', '2021-09-17 06:18:32', '2021-09-17 06:18:32'),
(5, 15, 'All Red Wine', '2021-09-17 06:18:32', '2021-09-17 06:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_regions`
--

CREATE TABLE `sub_category_regions` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_category_region` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category_regions`
--

INSERT INTO `sub_category_regions` (`id`, `sub_category_id`, `sub_category_region`, `created_at`, `updated_at`) VALUES
(1, 15, 'France', '2021-09-16 08:38:12', '2021-09-16 08:38:12'),
(2, 15, 'Italy', '2021-09-16 08:38:12', '2021-09-16 08:38:12'),
(3, 15, 'Spain', '2021-09-16 08:38:12', '2021-09-16 08:38:12'),
(4, 15, 'United States', '2021-09-16 08:38:12', '2021-09-16 08:38:12'),
(5, 15, 'South America', '2021-09-16 08:38:12', '2021-09-16 08:38:12'),
(6, 15, 'Australia/New Zealand', '2021-09-16 08:38:12', '2021-09-16 08:38:12'),
(7, 15, 'South Africa', '2021-09-16 08:38:12', '2021-09-16 08:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_types`
--

CREATE TABLE `sub_category_types` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_category_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category_types`
--

INSERT INTO `sub_category_types` (`id`, `sub_category_id`, `sub_category_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Luxury', '2021-09-11 09:36:04', '2021-09-11 09:36:04'),
(2, 1, 'Single Malt Scotch', '2021-09-11 09:36:04', '2021-09-11 09:36:04'),
(3, 1, 'Blended Scotch', '2021-09-11 09:36:15', '2021-09-11 09:36:15'),
(4, 2, 'Cask Strength Bourbon', '2021-09-11 09:38:55', '2021-09-11 09:38:55'),
(5, 2, 'Flavored', '2021-09-11 09:38:55', '2021-09-11 09:38:55'),
(6, 2, 'Single Barrel Bourbon', '2021-09-11 09:38:55', '2021-09-11 09:38:55'),
(7, 2, 'Double Barrel Bourbon', '2021-09-11 09:38:55', '2021-09-11 09:38:55'),
(8, 3, 'American Whiskey', '2021-09-11 10:18:27', '2021-09-11 10:18:27'),
(9, 3, 'American Single Malt Whiskey', '2021-09-11 10:18:27', '2021-09-11 10:18:27'),
(10, 3, 'Canadian Whisky', '2021-09-11 10:18:27', '2021-09-11 10:18:27'),
(11, 3, 'Irish Whiskey', '2021-09-11 10:18:27', '2021-09-11 10:18:27'),
(12, 3, 'Bourbon', '2021-09-11 10:18:27', '2021-09-11 10:18:27'),
(13, 3, 'Rye Whiskey', '2021-09-11 10:18:27', '2021-09-11 10:18:27'),
(14, 4, 'Luxury', '2021-09-11 10:24:01', '2021-09-11 10:24:01'),
(15, 4, 'Sipping Tequila', '2021-09-11 10:24:01', '2021-09-11 10:24:01'),
(16, 4, 'Añejo', '2021-09-11 10:24:01', '2021-09-11 10:24:01'),
(17, 4, 'Blanco', '2021-09-11 10:24:01', '2021-09-11 10:24:01'),
(18, 4, 'Reposado', '2021-09-11 10:24:01', '2021-09-11 10:24:32'),
(19, 4, 'Mezcal', '2021-09-11 10:24:01', '2021-09-11 10:24:27'),
(20, 6, 'Luxury', '2021-09-11 10:27:27', '2021-09-11 10:27:27'),
(21, 6, 'VS', '2021-09-11 10:27:27', '2021-09-11 10:27:27'),
(22, 6, 'VSOP', '2021-09-11 10:27:27', '2021-09-11 10:27:27'),
(23, 6, 'XO', '2021-09-11 10:27:27', '2021-09-11 10:27:27'),
(24, 7, 'Luxury', '2021-09-11 10:29:44', '2021-09-11 10:29:44'),
(25, 7, 'Flavored Vodka', '2021-09-11 10:29:44', '2021-09-11 10:29:44'),
(26, 7, 'Botanical', '2021-09-11 10:29:44', '2021-09-11 10:29:44'),
(27, 7, 'Organic', '2021-09-11 10:29:44', '2021-09-11 10:29:44'),
(28, 7, 'American Vodka', '2021-09-11 10:29:44', '2021-09-11 10:29:44'),
(29, 9, 'Luxury', '2021-09-11 10:32:25', '2021-09-11 10:32:25'),
(30, 9, 'Flavored Rum', '2021-09-11 10:32:25', '2021-09-11 10:32:25'),
(31, 9, 'Spiced Rum', '2021-09-11 10:32:25', '2021-09-11 10:32:25'),
(32, 9, 'Black Rum', '2021-09-11 10:32:25', '2021-09-11 10:32:25'),
(33, 9, 'XO', '2021-09-11 10:32:25', '2021-09-11 10:32:25'),
(34, 10, 'Luxury', '2021-09-11 10:33:49', '2021-09-11 10:33:49'),
(35, 10, 'Flavored Liqueur', '2021-09-11 10:33:49', '2021-09-11 10:33:49'),
(36, 11, 'Glass Cocktails', '2021-09-11 10:34:57', '2021-09-11 10:34:57'),
(37, 11, 'Canned Cocktails', '2021-09-11 10:34:57', '2021-09-11 10:34:57'),
(38, 12, 'Flavored Moonshine', '2021-09-11 10:38:47', '2021-09-11 10:38:47'),
(39, 12, 'Distillery Flavors', '2021-09-11 10:38:47', '2021-09-11 10:38:47'),
(40, 13, 'Tonics', '2021-09-11 10:40:45', '2021-09-11 10:40:45'),
(41, 13, 'Mixer', '2021-09-11 10:40:45', '2021-09-11 10:40:45'),
(42, 13, 'Syrup', '2021-09-11 10:41:08', '2021-09-11 10:41:08'),
(43, 13, 'Bitters', '2021-09-11 10:41:08', '2021-09-11 10:41:08'),
(44, 14, 'Luxury', '2021-09-17 08:24:52', '2021-09-17 08:24:52'),
(45, 14, 'Brut', '2021-09-17 08:24:52', '2021-09-17 08:24:52'),
(46, 14, 'Rosé', '2021-09-17 08:24:52', '2021-09-17 08:24:52'),
(47, 14, 'Sparkling Wine', '2021-09-17 08:24:52', '2021-09-17 08:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_white_and_sparkling_wines`
--

CREATE TABLE `sub_category_white_and_sparkling_wines` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_category_white_and_sparkling_wine` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category_white_and_sparkling_wines`
--

INSERT INTO `sub_category_white_and_sparkling_wines` (`id`, `sub_category_id`, `sub_category_white_and_sparkling_wine`, `created_at`, `updated_at`) VALUES
(1, 15, 'Chardonnay', '2021-09-16 08:43:03', '2021-09-16 08:43:03'),
(2, 15, 'Sauvignon Blanc', '2021-09-16 08:43:03', '2021-09-16 08:43:03'),
(3, 15, 'Pinot Grigio/Gris/Bianco', '2021-09-16 08:43:03', '2021-09-16 08:43:03'),
(4, 15, 'All Sparkling Wine', '2021-09-16 08:43:03', '2021-09-16 08:43:03'),
(5, 15, 'All White Wine', '2021-09-16 08:43:03', '2021-09-16 08:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_tokens` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_order_discount` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `device_tokens`, `device_type`, `first_order_discount`, `type`, `name`, `last_name`, `email`, `mobile`, `image`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 0, 1, 'admin', NULL, 'admin@gmail.com', '1234567890', '1632546351.jpeg', 1, '$2y$10$1uDPgTC7iHeFjaXarOweF.m6n7LIf7o6WB80e6GTBNB8Ac3SWUsBa', 'xbpSTlhuVSK1x7LmZXbnDafcV6UGc16gUBvRdaRcqdFpoHpX5zVTgwaOWd2V', '2021-08-03 06:20:54', '2021-09-25 12:05:51'),
(2, NULL, NULL, 1, 2, 'ravi', 'parihar', 'ravi.imenso@gmail.com', '9907629428', '1636357805.jpeg', 1, '$2y$10$zeTA0LGHmmlcBwn3DrEeheaT74meegTZDsIS8FuMEAGsolFN37cyy', 'yLGaM0nWRZEw3YSDPnqyc3wKwjzJbNS0eDTMzdxDS9xjcat3w8MMrISMELSU', '2021-08-11 07:09:45', '2023-01-20 20:42:12'),
(3, NULL, NULL, 1, 2, 'ravindra', 'parihar', 'parihar.ravindra23@gmail.com', '6265832070', '1636357834.jpeg', 1, '$2y$10$QriKXGLFGpmIefNdgtA5yOnaUyP9nOJjm3xjtKjdkkf26uobcO.Nu', 'tLNjFj3fTrVlW0e6D9s6IWSwmMOlwRnRXjhJEYWwBaMGErtZC74WtBj1wcqU', '2021-08-11 07:11:51', '2023-01-06 16:33:44'),
(7, NULL, NULL, 0, 2, 'ravindra', 'parihar', 'kapil@gmail.com', '', NULL, 1, '$2y$10$t29IrslDzwtEEDCCtFmq5eyHF6TkQHXAsJCxYfmRPk58lE7rTnRsK', 'wNd357ryDKvX4ApEfs4NI52aphwBMNnNQ4iKRBjw1Ooc9Tj8YK1rmxvCjuKD', '2021-12-18 21:15:21', '2021-12-18 21:15:21'),
(8, NULL, NULL, 0, 3, 'sub', 'admin', 'sub.admin@gmail.com', '', NULL, 1, '$2y$10$mEUiNADvXtE8qe.gzpP7YeDl.UwvmJncaPT0OgbMXkUKxQmb1Lh3W', 'FF26Mj928sw87SfjTICZanDTToEhPt18Z0WI0N8SWSptx5Xpm5qFB9ko4nyg', '2023-04-02 00:12:00', '2023-04-02 00:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_billing_informations`
--

CREATE TABLE `user_billing_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billingAddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept` int(11) NOT NULL,
  `news_and_offers` int(11) NOT NULL DEFAULT 0,
  `next_time` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_billing_informations`
--

INSERT INTO `user_billing_informations` (`id`, `user_id`, `first_name`, `last_name`, `company`, `apartment`, `country`, `state_id`, `zip_code`, `email`, `mobile`, `address`, `city`, `billingAddress`, `accept`, `news_and_offers`, `next_time`, `created_at`, `updated_at`) VALUES
(1, 3, 'ravindra', 'parihar', NULL, NULL, 'United States', 3920, '451115', 'parihar.ravindra23@gmail.com', 9907629428, 'indore mp', 'indore', NULL, 0, 0, 0, '2021-08-16 18:32:35', '2021-11-02 19:43:47'),
(2, 2, 'ravi', NULL, NULL, NULL, NULL, NULL, NULL, 'ravi.imenso@gmail.com', 6265832070, 'indore mp', 'indore', NULL, 0, 0, 0, '2021-08-18 13:33:39', '2021-08-28 19:56:26'),
(3, 4, 'kamal', 'raj', NULL, NULL, 'United States', 3919, '451115', 'kamal@gmail.com', 9907629428, 'bhopal mp', 'bhopal', NULL, 0, 0, 0, '2021-08-28 20:31:09', '2021-09-17 19:16:01'),
(6, 5, 'ravindra', 'parihar', 'web', 'b-8,402 suryansh deep parisar bicholi mardana', 'United States', 3935, '451115', NULL, 9907629428, 'indore mp', 'indore', NULL, 0, 0, 0, '2021-09-09 18:23:20', '2021-09-09 18:38:12'),
(7, 3, 'ravindra', 'parihar', NULL, 'suryansh deep parisar', '101', 4039, '451115', 'parihar.ravindra23@gmail.com', 9907629428, 'b-8,402', 'indore', 'Same as shipping address', 1, 1, 1, '2021-12-16 18:36:55', '2023-01-09 14:57:11'),
(8, 1, 'Hussain', 'Bohara', NULL, 'vcvcxvxv', '80', 2669, '452001', 'hussain@gmail.com', 789654123, '15 Street Road', 'Indore', 'Same as shipping address', 1, 0, 0, '2022-01-10 17:17:30', '2022-01-10 17:17:30'),
(9, 2, 'ravindra', 'parihar', NULL, 'suryansh deep parisar', '101', 4039, '45111', 'parihar.ravindra23@gmail.com', 919907629428, 'b-8,402', 'indore', 'Same as shipping address', 1, 0, 1, '2022-04-04 18:50:48', '2023-01-11 22:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_billing_information_websites`
--

CREATE TABLE `user_billing_information_websites` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_shipping_informations`
--

CREATE TABLE `user_shipping_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_shipping_informations`
--

INSERT INTO `user_shipping_informations` (`id`, `user_id`, `first_name`, `last_name`, `company`, `apartment`, `country`, `state_id`, `zip_code`, `mobile`, `address`, `city`, `created_at`, `updated_at`) VALUES
(1, 3, 'ravindra', 'parihar', 'test', 'suryansh deep parisar', '2', 1, '451115', 9907629428, 'b-8,402', 'indore', '2021-12-16 18:36:55', '2021-12-16 18:36:55'),
(2, 3, 'ravindra', 'parihar', 'test', 'suryansh deep parisar', '2', 2, '451115', 9907629428, 'b-8,402', 'indore', '2021-12-16 20:39:26', '2021-12-16 20:39:26'),
(3, 3, 'ravindra', 'parihar', 'test', 'suryansh deep parisar', '2', 2, '451115', 9907629428, 'b-8,402', 'indore', '2021-12-16 20:50:00', '2021-12-16 20:50:00'),
(4, 3, 'ravindra', 'parihar', 'test', 'suryansh deep parisar', '199', 4649, '451115', 9907629428, 'b-8,402', 'indore', '2021-12-17 16:07:41', '2021-12-17 16:07:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_user_carts`
--
ALTER TABLE `api_user_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD UNIQUE KEY `category_slug` (`category_slug`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_uses`
--
ALTER TABLE `contact_uses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Code` (`Code`),
  ADD KEY `coupons_ibfk_1` (`CouponTypeId`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CouponId` (`CouponId`),
  ADD KEY `CategoryId` (`CategoryId`) USING BTREE;

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`ProductId`),
  ADD KEY `coupon_products_ibfk_1` (`CouponId`);

--
-- Indexes for table `coupon_types`
--
ALTER TABLE `coupon_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designers`
--
ALTER TABLE `designers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designer_slug` (`designer_slug`);

--
-- Indexes for table `discount_offers`
--
ALTER TABLE `discount_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabrics`
--
ALTER TABLE `fabrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter_categories`
--
ALTER TABLE `filter_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_terms`
--
ALTER TABLE `flash_sale_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gifts_by_occasions`
--
ALTER TABLE `gifts_by_occasions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `make_a_return_steps`
--
ALTER TABLE `make_a_return_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`return_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `need_helps`
--
ALTER TABLE `need_helps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note_footers`
--
ALTER TABLE `note_footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occasions`
--
ALTER TABLE `occasions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `OrderStatus` (`OrderStatus`),
  ADD KEY `AdminOrderStatus` (`AdminOrderStatus`),
  ADD KEY `UserBillingInformationId` (`UserBillingInformationId`),
  ADD KEY `CouponId` (`CouponId`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrderId` (`OrderId`),
  ADD KEY `ProductId` (`ProductId`),
  ADD KEY `ProductColorId` (`ProductColorId`),
  ADD KEY `ProductSizeId` (`ProductSizeId`);

--
-- Indexes for table `order_shipment_detail`
--
ALTER TABLE `order_shipment_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_shipping_realtion` (`order_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `payment_responses`
--
ALTER TABLE `payment_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ORDERID` (`ORDERID`);

--
-- Indexes for table `privacy_policy_and_terms_and_conditions`
--
ALTER TABLE `privacy_policy_and_terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `products_colours`
--
ALTER TABLE `products_colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_fabrics`
--
ALTER TABLE `products_fabrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_filter_categories`
--
ALTER TABLE `products_filter_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_occasions`
--
ALTER TABLE `products_occasions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_reviews`
--
ALTER TABLE `products_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_sizes`
--
ALTER TABLE `products_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_featured_images`
--
ALTER TABLE `product_featured_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_gifts_by_occasions`
--
ALTER TABLE `product_gifts_by_occasions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_price_ranges`
--
ALTER TABLE `product_price_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_recipes`
--
ALTER TABLE `product_recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_spirited_changes`
--
ALTER TABLE `product_spirited_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_states`
--
ALTER TABLE `product_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_sub_category_gifts`
--
ALTER TABLE `product_sub_category_gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_sub_category_new_and_limiteds`
--
ALTER TABLE `product_sub_category_new_and_limiteds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_sub_category_red_wines`
--
ALTER TABLE `product_sub_category_red_wines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_sub_category_regions`
--
ALTER TABLE `product_sub_category_regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_sub_category_types`
--
ALTER TABLE `product_sub_category_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `product_sub_category_white_and_sparkling_wines`
--
ALTER TABLE `product_sub_category_white_and_sparkling_wines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`product_id`);

--
-- Indexes for table `recently_viewed_products`
--
ALTER TABLE `recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_via_post_steps`
--
ALTER TABLE `return_via_post_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProductId` (`return_id`);

--
-- Indexes for table `shipping_and_deliveries`
--
ALTER TABLE `shipping_and_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_times`
--
ALTER TABLE `shipping_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_profiles`
--
ALTER TABLE `social_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spirited_changes`
--
ALTER TABLE `spirited_changes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_region` (`country_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_gifts`
--
ALTER TABLE `sub_category_gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_new_and_limiteds`
--
ALTER TABLE `sub_category_new_and_limiteds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_red_wines`
--
ALTER TABLE `sub_category_red_wines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_regions`
--
ALTER TABLE `sub_category_regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_types`
--
ALTER TABLE `sub_category_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_white_and_sparkling_wines`
--
ALTER TABLE `sub_category_white_and_sparkling_wines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_billing_informations`
--
ALTER TABLE `user_billing_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_shipping_informations`
--
ALTER TABLE `user_shipping_informations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_user_carts`
--
ALTER TABLE `api_user_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `contact_uses`
--
ALTER TABLE `contact_uses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `coupon_products`
--
ALTER TABLE `coupon_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_types`
--
ALTER TABLE `coupon_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designers`
--
ALTER TABLE `designers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discount_offers`
--
ALTER TABLE `discount_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fabrics`
--
ALTER TABLE `fabrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `filter_categories`
--
ALTER TABLE `filter_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `flash_sale_terms`
--
ALTER TABLE `flash_sale_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gifts_by_occasions`
--
ALTER TABLE `gifts_by_occasions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `make_a_return_steps`
--
ALTER TABLE `make_a_return_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `need_helps`
--
ALTER TABLE `need_helps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `note_footers`
--
ALTER TABLE `note_footers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `occasions`
--
ALTER TABLE `occasions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_shipment_detail`
--
ALTER TABLE `order_shipment_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_responses`
--
ALTER TABLE `payment_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `privacy_policy_and_terms_and_conditions`
--
ALTER TABLE `privacy_policy_and_terms_and_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products_colours`
--
ALTER TABLE `products_colours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_fabrics`
--
ALTER TABLE `products_fabrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products_filter_categories`
--
ALTER TABLE `products_filter_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `products_occasions`
--
ALTER TABLE `products_occasions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `products_reviews`
--
ALTER TABLE `products_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_sizes`
--
ALTER TABLE `products_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=922;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_featured_images`
--
ALTER TABLE `product_featured_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_gifts_by_occasions`
--
ALTER TABLE `product_gifts_by_occasions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `product_price_ranges`
--
ALTER TABLE `product_price_ranges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_recipes`
--
ALTER TABLE `product_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1034;

--
-- AUTO_INCREMENT for table `product_spirited_changes`
--
ALTER TABLE `product_spirited_changes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_states`
--
ALTER TABLE `product_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2855;

--
-- AUTO_INCREMENT for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `product_sub_category_gifts`
--
ALTER TABLE `product_sub_category_gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `product_sub_category_new_and_limiteds`
--
ALTER TABLE `product_sub_category_new_and_limiteds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `product_sub_category_red_wines`
--
ALTER TABLE `product_sub_category_red_wines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_sub_category_regions`
--
ALTER TABLE `product_sub_category_regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `product_sub_category_types`
--
ALTER TABLE `product_sub_category_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `product_sub_category_white_and_sparkling_wines`
--
ALTER TABLE `product_sub_category_white_and_sparkling_wines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `recently_viewed_products`
--
ALTER TABLE `recently_viewed_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `return_via_post_steps`
--
ALTER TABLE `return_via_post_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_and_deliveries`
--
ALTER TABLE `shipping_and_deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_times`
--
ALTER TABLE `shipping_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_profiles`
--
ALTER TABLE `social_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `spirited_changes`
--
ALTER TABLE `spirited_changes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5066;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_category_gifts`
--
ALTER TABLE `sub_category_gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sub_category_new_and_limiteds`
--
ALTER TABLE `sub_category_new_and_limiteds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sub_category_red_wines`
--
ALTER TABLE `sub_category_red_wines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_category_regions`
--
ALTER TABLE `sub_category_regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_category_types`
--
ALTER TABLE `sub_category_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sub_category_white_and_sparkling_wines`
--
ALTER TABLE `sub_category_white_and_sparkling_wines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_billing_informations`
--
ALTER TABLE `user_billing_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_shipping_informations`
--
ALTER TABLE `user_shipping_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `country_region_final` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
