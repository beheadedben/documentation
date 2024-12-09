
# React Native QuickStart

### Table of Contents
1. [Preface](#preface)
2. [Why React Native](#why-react-native)
3. [Development Environment Setup](#development-environment-setup)
4. [Creating Your First Project](#creating-your-first-project)

### 1. Preface <a name="preface"></a>
This cookbook is helpful to get you started with React Native development.
You can follow along with any popular operating system like MacOs, Windows or Linux, but
it is highly recommended that you have atleast a basic understanding of vanilla Javascript, and that you are already a little comfortable with the terminal of your OS.

In a few pages you'll be able to quickstart your project and get an idea
of the development pattern to follow. Step by step.
You will also benefit of this book for further reference and lookup, the same goes for the official [React Native Documentation](https://reactnative.dev/docs/environment-setup)
which should be the first place you look for when encountering a problem.

### 2. Why React Native <a name="why-react-native"></a>

Why should you use React Native for your next project? React Native is a Javascript framework for building web apps and
native mobile applications for Android and iOS that will feel truly 'native', using real mobile UI components.
With React Native you don't have to worry about mantaining three different codebases for the web, iOS and Android,
instead you create one single codebase and build for the three platforms.

### 3. Development Environment Setup <a name="development-environment-setup"></a>

Install Node and Npm
> NodeJs is a server-side JavaScript runtime environment. __React Native is a frontend framework__,
> but we are going to need NodeJs to use its package manager `npm`

> Windows
>
> Download and execute the installer from the [NodeJs website](https://nodejs.org).
> It will also install npm.



> Debian / Ubuntu
> ```
> $ sudo apt update && sudo apt upgrade
> ```
> ```
> $ sudo apt install nodejs npm -y
> ```

> To verify the installation on any OS
> ```
> $ node -v
> ```
> ```
> $ npm -v
> ```

Install the npm Expo package
> Expo is a set of tools to help you develop a react-native application efficently.
> Thanks to Expo Go you are also able to use your mobile phone to visualize your app without the need
> of an emulator.

> Any OS
> ```
> $ npm install create-expo-app
> ```


You can use your favourite text-editor or IDE
> Make sure you have access to an Android or iOS device to test the mobile builds.
> You can also install an Android Emulator / Virtual Machine on your PC if you don't have access to a phone
> or you simply prefer keeping your environment entirely on your computer.
> My personal favourites text-editors are [Notepadqq](https://notepadqq.com/s/) and [Geany](https://www.geany.org/),
> or the terminal-based [neovim](https://neovim.io/).

Simply use [Android Studio](https://developer.android.com/studio)
> If you are already using many closed-source software, don't care about the Google telemetry and licensing,
> and you don't have any preferences regarding your IDE, then this might be the easiest option as it comes with an Android Emulator out of the box.
> Android Studio is based on the IntelliJ Idea IDE, so choosing a lighter text-editor is preferred if you have a low-end PC.

If you (like me) don't want to download any Android/iOS Emulator,
download __Expo Go__ on your Android/iOS phone directly from your store.

### 4. Creating Your First Project <a name="creating-your-first-project"></a>
To initialize a project using Expo simply run the following command,
where <PROJECT_NAME> will be the name of the project's root folder.

Any OS
> ```
> $ npx create-expo-app <PROJECT_NAME>
> ```

Now open <PROJECT_NAME> with your IDE. This is a sample application that shows you
the ideal file structure for a React Native app.

To run the sample app execute the following command.
> ```
> $ npm start
> ```

Now follow the instructions in your terminal to visualize it on your phone or browser.
At this point you can clone the folder so you can keep an eye on this example application while developing yours.

Run the following command to reset the project to a blank and barebones app.
> ```
> $ npm run reset-project
> ```

#### A very concise project structure

1. /app
    > /app/index.tsx <br> /app/_layout.tsx <br>
    > This is the folder containing all the pages and the `_layout.tsx` file,
    > we'll need to set up the routing.
2. /components
    > This folder will contain one file for each component. What are [components](#components)?
3. /assets
    > /assets/images <br> /assets/fonts <br>
    > The place for all your images, icons, banners, custom fonts

The use of other folders like /constants and /hooks is secondary for now.

### 5. Native Components - ```<Text>Hello World!</Text>```  
You are going to place your tabs(pages) in the /app folder, and the first file you want to edit is `/app/index.tsx` <br>
React Native utilizes `TSX` which is a syntax that lets you write elements inside TypeScript like 

```<Text>Hello World!</Text>```

These elements are called [Core Components](https://reactnative.dev/docs/intro-react-native-components).   

| React Native Ui Component     	| Web Analog              	        |
|----------------------------   	|--------------------------	        |
| ```<Text>```                     	| ```<p>```                     	|
| ```<View>```                     	| non scrolling ```<div>```<br> 	|
| ```<ScrollView>```               	| ```<div>```                   	|
| ```<Image>```                    	| ```<img>```                   	|
| ```<TextInput>```                	| ```<input type="text">```    	    |

Example
``` index.tsx ```

>```
> import 'ScrollView, Text, StyleSheet' from 'react-native';
> const 

s/images <br> /assets/fonts

>```

### 6. Components <a name="components"></a>
React Native is based on components. What does this mean?
Components are a piece of reusable code that can be shared across different pages or
created with different options inside a page. 
A component can either require `Props` or not.

##### What are Props?

Properties are the data received by a component when it gets instantiated.
They are usually shortened to `Props` in component-based frontend frameworks.

If you have already taken a look at the file

Example
```

```
### 7. Routing <a name="routing"></a>
[Docs](https://reactnative.dev/docs/navigation#usage)
