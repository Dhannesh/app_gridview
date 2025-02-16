# Introducing the Grid View Widget

The GridView displays a two-dimensional array of widgets. Now, in our GridView demo, we're going to be using many images, so the images sub-folder inside my Flutter Project has a number of images that have placed in there, make sure that your pubspec.yaml file has an assets specification and point to your images sub-folder, Now, in this GridView demo, I'm going to do something a little different. I'm going to have my main widget within the main.dart file. This is the MyStore StatelessWidget. This MyStore StatelessWidget displays a list of products. I set the body of the scaffold to the ProductsView.But I'm going to define this ProductsView in a separate file. So, open up the left navigation pane and create a new sub-folder within the lib folder that contains the main.dart file.

I'm going to name this New Directory that I create views because this directory that I'm about to create will hold the views that I display in my app. So, I have the views directory under the lib sub-folder and under the views directory, I'm going to create a New Dart File called products.dart. This products.dart file is what will contain the widget products view which will display a GridView of products. Now, all changes that I make to my app will be to this products.dart file. I won't be changing main.dart at all. Now, in order to be able to reference this class in the main.dart file, I need to add in an import statement. Let's head back to products.dart and see how we can set up a GridView to display products. Now, the main axis of the GridView is the direction in which the GridView scrolls, which is vertical by default. I've set the crossAxisCount to be 2 to indicate that I want to display 2 grids per row. The children property of the GridView are all containers. Every container has a slightly different background and has a text field as a child which displays different product categories. For example, this first GridItem displays the product Breakfast and Dairy. And if, we scroll down,

the second GridItem displays Fresh Vegetables, and so on. I've just hardcoded a whole number of containers here that make up the different widgets displayed within my GridView. You can use the crossAxisCount to control how many grid elements you want to see in a particular grid row. 

Now, this was a very simple GridView. Let's make this GridView a little better by having the GridView display GridItem widgets.
I've updated the ProductsView class. The crossAxisCount is set to 2, that's what looked good on our device. I have a little padding around the GridView, I use List.generate to generate the items that will be displayed in this GridView. I have a variable called products which represents the products that I'm going to show. For each product, we'll instantiate a custom GridItem widget. The Product class is defined  a title and a subtitle. This List comprises of a number of different products. The title has the Product name and the subtitle has the Product category. Every Product will be displayed within a GridView using the GridItem custom widget The getRandomColor helper method generates a color at random. This is the color that we'll use as the background for each GridItem Card. I have the Widget tree for each GridItem. Every GridItem is represented using the Card Widget. I assign the color to the Card using getRandomColor so we have each Card in a different color. And then the child of this Card is a centered widget which contains a column and this column contains the product title and the product subtitle for each product.


Now, the colors for each of these cards are generated using our random object. So, if you hit hot reload each time, you'll find that the colors and the cards are different. So, if you're wondering why the colors on the cards keep changing each time you hot reload your app, well, that's the reason because the colors are being randomly generated. Well, I have quite a bit of fun playing around with these colors and that's why I tend to play around with the hot reload really often. You can scroll around and see what your GridView looks like.

I've increased the padding from 15 to 20 pixels, so you should find that there is now more space around the GridView and you can see this change in the emulator. Padding allows you to change the spacing around the GridItem from the GridView.

crossAxisSpacing will allow you to control the spacing along the cross axis. The cross axis in a vertically scrolling GridView is the horizontal axis. And you can see from the update that the horizontal elements are now further apart, they're 15 pixels apart. Cross axis always refers to the non-scrolling axis. If you want to change the spacing between the widgets on the main axis, set the mainAxisSpacing property. I've set it to 15. The main axis here is the vertical axis because our GridView scrolls vertically. Just wait for the app to be reloaded and you can see that the widgets are now placed further apart along the vertical axis. The GridView also allows you to change the scrollDirection. Set the scrollDirection property to Axis.horizontal. This will switch your GridView over, so that, you can now scroll horizontally. The main axis now is the horizontal axis and the cross axis is the vertical axis when you have a horizontally scrolling GridView.

## Displaying Images Using the GridView

I return a GridView using the GridView.count constructor. I've said this earlier, the GridView.count constructor is the easiest way to create a GridView, but there are other constructors and we'll get to those in a little bit. The crossAxisCount is 2, so we'll see two items for every row in the grid. Since, I haven't explicitly specified a scroll property, this grid will scroll vertically by default. The cross axis and mainAxisSpacing have both been set to 15 pixels. And you can see that the children of this GridView has been assigned using an array of images. I've used the spread operator here the three dots. You'll be able to see the images variable. This is merely a List of Image widgets. Every image is set to an AssetImage, that is, this is an image that is packaged into a asset bundle and part of our Flutter project. The images have been initialized and set up as a List.

Let's go ahead and run this code and take a look at our GridView that displays images. Well, this GridView looks pretty good, but the first thing that ought to strike you is that all of these images are of different shapes and different aspect ratios. We'll fix that in a bit, but before that you can see that I can just add more images to this grid view by adding more images to the list here. Now, you can see all of the images on screen, but they all have different sizes and different aspect ratios and the grid looks kind of ugly.