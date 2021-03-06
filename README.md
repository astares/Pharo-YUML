# Pharo-YUML
Simple YUML Link generator to document class hierarchies in [Pharo](http://www.pharo.org).

## Introduction

Sometimes it is helpful to create a simple class hierarchy diagram within your documentation. There is an online service [yuml.me](http://yuml.me) which is able to generate diagrams based on given URL parameters.

At it is cumbersome to write the URL pattern manually this little utility project allows you to directly generate a link from a given Pharo class to display a diagram of the subclass hierarchy.

## Quick Start 

You can load the project from Pharo catalog or via the following load script:

```Smalltalk
Metacello new 
	repository: 'github://astares/Pharo-YUML/src';
	baseline: 'YUML';
	load
```


## Documentation

The project includes a simple class that you can use to generate the link by giving the start of the hierarchy. For example the expression:

```Smalltalk
YUMLGenerator new generateHierarchyFor: String
```

will return a URL string for [yuml.me](http://yuml.me) service:

```
https://yuml.me/diagram/class/class/[String],[String]%5E-[ByteString],[String]%5E-[Symbol],[Symbol]%5E-[ByteSymbol],[Symbol]%5E-[WideSymbol],[String]%5E-[WideString]
```

which you can open in a browser manually but also easily embedd into your documentation.

![String hierarchy](https://yuml.me/diagram/class/class/[String],[String]%5E-[ByteString],[String]%5E-[Symbol],[Symbol]%5E-[ByteSymbol],[Symbol]%5E-[WideSymbol],[String]%5E-[WideString])

If you want to check directly you can evaluate:

```Smalltalk
YUMLGenerator open: String
```

while will open your local webbrowser on the generated URL link

