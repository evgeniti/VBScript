
'A real-life example of a function best solved using iteration

'This file has been saved with Unicode, in order to support the greek characters Θ and Φ,
'which still can be used only in comments :(

Class Function123

    Private x, y, z 'definitions below
    Private c

    Private Sub Class_Initialize

     ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '
     '
     '  Given:
     '
     '     A man's wife is about to give birth in a few days and she wants him
     '     to move the birthing tub into the back bedroom if possible. He suspects
     '     that it will not fit because it is so big and the hallway into the bedroom
     '     is so narrow. In order to get a good idea of whether it will fit before he
     '     tries to move it, he makes a diagram and takes some measurements, coming up
     '     with the following equation describing the maximum angle that the tub
     '     would make as it passes through the doorway.
     '
     '     The equation:  y·cosΘ - x·sinΘ - z = 0
     '
     '     where
           x = 6.9  'inches; thickness of wall
           y = 29.5 'inches; width of doorway
           z = 25.5 'inches; depth of tub
     '
     '  Required:
     '
     '     Solve for Θ
     '
     '     If this angle is less than the angle directly calculated using ComputePsi.vbs,
     '     then the birthing tub will not fit through the door. Psi (Φ) represents the
     '     final angle that the tub can make as it gets stuck (or not) in the narrow hallway.
     '
     '  Solution:
     '
     '     The husband was unable to solve the equation above for Θ, so he used the script
     '     IteratingSolver.wsf together with the function f(theta) below to find Θ by
     '     iteration, outputting the values of f(Θ) for different values of Θ, and noting
     '     the angle, Θ, where the function yielded a value of zero.
     '
     '     ComputePsi.vbs and EstimateTheta.vbs may be found in the parent folder.
     '
     '  Conclusion:
     '
     '     If the tub had been rolled into the hallway, it could only have turned from 90
     '     to 48.6 degrees, as shown by ComputePsi.wsf. In order to fit into the doorway,
     '     it would have needed to turn from 90 to 19.5 degrees as shown by IteratingSolver.wsf.
     '     The combination of narrow hallway, narrow doorway, and big deep tub made it
     '     necessary to for hustband's wifie pi to give birth to Phoebe in the living room.
     '
     ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' ' '

        With CreateObject("includer") : On Error Resume Next
            ExecuteGlobal(.read("MathConstants")) 'include dependent script
        End With : On Error Goto 0

        Set c = New MathConstants
    End Sub

    'The following function can be used to solve for Θ by iteration

    'Method: f
    'Paramater: angle in degrees
    'Return: y·cosΘ - x·sinΘ - z, where x=6.9, y=29.5, and z=25.5
    'Remark: This is an example of a function best solved for Θ by using iteration

    Public Default Function f(theta)   'theta (Θ) in degrees

       f = y * cos(theta * c.pi / 180) - x * sin(theta * c.pi / 180) - z 'convert to radians before calculating trig functions

    End Function

    'Note: This file forms part of a VBScript library that also contains MathConstants.vbs,
    '      which provides the value for pi. Pi is needed to convert degrees to radians
    '      because the VBScript native trig functions expect angle measurements in radians.

    'Other measurements
    'Diameter at lip of tub, accounting for eccentricity
    '  d1 = 62  'inches; tub diameter 1
    '  d1 = 69  'inches; tub diameter 2

End Class