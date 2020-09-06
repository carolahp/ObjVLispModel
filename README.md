# ObjVLispModel

```smalltalk
objVLisp := OLObjVLisp new name: #ObjVLisp; yourself.
objVLisp loadTonelRepository: './bootstrap/language-definitions/ObjVLispModel'.
objVLisp loadCustomClasses.
objVLisp test.
objVLisp prepareBuilder.
objVLisp spurImage testStub.
"objVLisp evaluateLoadingMissingDefinitionsFromPharo: objVLisp hookEntryPoint code."
 "hookEntryPoint code.
objVLisp debugCode: objVLisp hookEntryPoint code. "
"objVLisp evaluateLoadingMissingDefinitionsFromPharo: 'Class start'."
objVLisp spurImage testStub.
objVLisp builder installClasses.
objVLisp builder installMethods.
objVLisp builder installProcess.
objVLisp spurImage testClasses.

imageFileObjVlisp := objVLisp writeImage.
imageFileObjVlisp runBashScript.
```
