
With CreateObject("includer")
	Execute(.read("DocGenerator"))
End With

With New DocGenerator
    .SetTitle "Karl's VBScript utilities"
    .SetScriptFolder "../class" 'folders are set relative to this script file's location
    .SetDocFolder ".."
    .SetFilesToDocument(".*\.(vbs|wsf|wsc)")
    .SetDocName "TheDocs.html"
    .Generate
    .View
End With
