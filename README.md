# jtribe-style

*The coding style used at jtribe*

Put { in a new line. We use Allman Style for curly brackets [see wikipedia](http://en.wikipedia.org/wiki/Indent_style)

Use camelCase for variables/properties

Use long naming conventions. If it's a view controller then use ViewController.

Internal methods start with underscore

enums should start with k then the Name of the type. kPersonGender...

Name methods like this `<return_object>With<first_argument>`

Use multi-line argument formatting when more than 2 arguments.

Objective-C uses YES and NO. Therefore true and false are incorrect. Also since nil resolves to NO it is unnecessary to compare it in conditions. No need to do if (self != nil)

Keep the app delegate clean and lean. Use a RootViewController if you need to handle general routing logic across the app. (ask a jtribe developer about RootViewControllers and how to use them)

Remove the delegate methods that are not used. A good developer will know how to find them in the header file when needed.

There should not be any reason to use iVars. Use properties instead.

Use simple model names. Person is the model for a person. No need to use JTRPerson.

Avoid iVars. Why don't we use undescore iVars? _firstName = firstName; There is some disucssion that using self. in the initialiser could lead to unexpected behaviour. In the past 8 year I have not experienced that ever. Using _firstName however relies on a convention that synthesized properties have always an underlying ivar that starts with '_'. That is an assumption and should not be relied on. So, please use self. EVERYWHERE when you deal with properties - even in the initaliser.

delegates MUST be weak

delegates usually deal with lifecycle and therefore will use names liked: didFinish<DoingSomthing>, didSelect<Something>, etc

view controllers MUST have at least one setup method. Setup methods are useful for storyboard apps. In prepareForSegue the destintion view controller  must be setup. Do not configure a destintion view controller via properties as this makes tracabilty of variations impossible (you will understand once yu have dealt with a very complex app)

Use setup method to pass in a view model

Use a category for local properties. Avoid exposing properties in the header file if possible

Use designated setup method to set the view model in the view controller. See http://www.objc.io/issue-13/mvvm.html for details around MMVC

Use pragma marks to structure code. All internal methods should be behind the Internal Methods pragma mark.
