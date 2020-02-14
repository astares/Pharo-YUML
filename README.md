# Pharo-YUML
Simple YUML Link generator to document classes in Pharo

## Quick Start 

```Smalltalk
Metacello new 
	repository: 'github://astares/Pharo-YUML/src';
	baseline: 'YUML';
	load
```


## Documentation

```Smalltalk
YUMLGenerator new generateHierarchyFor: String
```

```
https://yuml.me/diagram/class/class/[String],[String]%5E-[ByteString],[String]%5E-[Symbol],[Symbol]%5E-[ByteSymbol],[Symbol]%5E-[WideSymbol],[String]%5E-[WideString]
```

which you then can embedd into your documentation

![String hierarchy](https://yuml.me/diagram/class/class/[String],[String]%5E-[ByteString],[String]%5E-[Symbol],[Symbol]%5E-[ByteSymbol],[Symbol]%5E-[WideSymbol],[String]%5E-[WideString])

If you want to check directly you can evaluate:

```Smalltalk
YUMLGenerator open: String
```

while will open your local webbrowser on the given URL

