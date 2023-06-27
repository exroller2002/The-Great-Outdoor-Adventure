1. 'Imports System.IO
2. 'Declare global variables
3. Public Class GreatOutdoorAdventure
4. Private Const AreaMax As Integer = 500
5. Private Const DifficultyMax As Integer = 5
6. Private AreasVisited(AreaMax) As Boolean
7. Private DifficultyLevel As Integer
8. Private currentArea As Integer
9.
10. 'Methods to initialize the game
11. Public Sub New()
12. 	'Reset all areas to false
13. 	For i As Integer = 0 To AreaMax
14. 		AreasVisited(i) = False
15. 	Next
16. 	
17. 	'Set starting area 
18. 	currentArea = 0
19. 	
20. 	'Set difficulty level
21. 	DifficultyLevel = 1
22. End Sub
23.
24. 'Methods to display the Great Outdoor Adventure
25. Public Sub DisplayAdventure()
26. 	Console.WriteLine("Welcome to the Great Outdoor Adventure!")
27. 	Console.WriteLine("You start in area {0}.", currentArea)
28. 	Console.WriteLine("There are {0} areas to explore.", AreaMax)
29. 	Console.WriteLine("The current difficulty level is {0}", DifficultyLevel)
30. 	
31. 	For i As Integer = 0 To AreaMax
32. 		If AreasVisited(i) Then
33. 			Console.WriteLine("You have already visited area {0}.", i)
34. 		Else
35. 			Console.WriteLine("You have not yet visited area {0}.", i)
36. 		End If
37. 	Next
38. End Sub
39.
40. 'Methods to move the character around the game area
41. Public Sub MoveCharacter(ByVal destination As Integer)
42. 	If destination < 0 OrElse destination >= AreaMax Then 
43. 		Throw New ArgumentOutOfRangeException("destination")
44. 	End If
45. 	
46. 	If (DifficultyLevel = destination) Then 
47. 		Console.WriteLine("You have successfully reached area {0}!", destination)
48. 		currentArea = destination
49. 		AreasVisited(destination) = True
50. 	Else
51. 		Console.WriteLine("You have failed to reach area {0}. Try again.", destination)
52. 	End If
53. End Sub
54.
55. 'Methods to increase the difficulty
56. Public Sub IncreaseDifficulty()
57. 	If DifficultyLevel > DifficultyMax Then 
58. 		Throw New ArgumentOutOfRangeException("difficulty level")
59. 	Else 
60. 		DifficultyLevel = DifficultyLevel + 1
61. 	End If
62. End Sub
63. 
64. 'Methods to save and load the game
65. Public Sub SaveGame(ByVal filename As String)
66. 	Dim fs As FileStream = File.Create(filename)
67. 	Dim bw As New BinaryWriter(fs)
68. 	
69. 	bw.Write(currentArea)
70. 	bw.Write(DifficultyLevel)
71. 	
72. 	For i As Integer = 0 To AreaMax
73. 		bw.Write(AreasVisited(i))
74. 	Next
75. 	
76. 	bw.Flush()
77. 	bw.Close()
78. 	fs.Close()
79. End Sub
80. 
81. Public Sub LoadGame(ByVal filename As String)
82. 	Dim fs As FileStream = File.OpenRead(filename)
83. 	Dim br As New BinaryReader(fs)
84. 	
85. 	currentArea = br.ReadInt32()
86. 	DifficultyLevel = br.ReadInt32()
87. 	
88. 	For i As Integer = 0 To AreaMax
89. 		AreasVisited(i) = br.ReadBoolean()
90. 	Next
91. 	
92. 	br.Close()
93. 	fs.Close()
94. End Sub
95. 
96. 'Methods to display the final game results
97. Public Sub DisplayResults()
98. 	Dim TotalAreasVisited As Integer = 0
99. 	
100. 	For i As Integer = 0 To AreaMax
101. 		If AreasVisited(i) Then
102. 			TotalAreasVisited += 1
103. 		End If
104. 	Next
105. 
106. 	Console.WriteLine("Congratulations! You have successfully completed the Great Outdoor Adventure!")
107. 	Console.WriteLine("You have visited {0} of the {1} areas.", TotalAreasVisited, AreaMax)
108. 	Console.WriteLine("You have reached a difficulty level of {0}.", DifficultyLevel)
109. End Sub
110. 
111. End Class
112. 
113. 'Main program
114. Module MainProgram
115. Sub Main()
116. 	Dim Game As New GreatOutdoorAdventure
117. 	
118. 	Game.DisplayAdventure()
119. 	
120. 	Console.WriteLine("Choose the area to visit.")
121. 	Dim Destination As Integer = Console.ReadLine()
122. 	
123. 	Game.MoveCharacter(Destination)
124. 	
125. 	Game.IncreaseDifficulty()
126. 	
127. 	Console.WriteLine("Choose an area to visit again.")
128. 	Destination = Console.ReadLine()
129. 	
130. 	Game.MoveCharacter(Destination)
131. 	
132. 	Game.SaveGame("Game.dat")
133. 	
134. 	Game.DisplayResults()
135. End Sub
136. End Module