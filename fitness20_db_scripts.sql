GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6decb3b8-8ec2-4cb2-9064-0a629f9d68db', N'administrator', N'administrator', N'1a10a0b0-6641-46fb-9d79-b3e33c3ff060')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8a52e5b5-75bc-4ed3-814e-de50a69cfeba', N'controller@fitness20.com', N'CONTROLLER@FITNESS20.COM', N'controller@fitness20.com', N'CONTROLLER@FITNESS20.COM', 1, N'AQAAAAEAACcQAAAAEH+NjwXASGj6LoMV1Ai745jK46y5dFSEBVsZ132pRVBBgFiKrWq4oXtQICQ1Is3X6Q==', N'2OK2SDO2QYD3IYCTANTGJNSLCR5GQ7JJ', N'59cc3102-f475-4ecc-890a-025866af659e', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8a52e5b5-75bc-4ed3-814e-de50a69cfeba', N'6decb3b8-8ec2-4cb2-9064-0a629f9d68db')
GO
SET IDENTITY_INSERT [dbo].[ExerciseTypes] ON 
GO
INSERT [dbo].[ExerciseTypes] ([ExerciseTypeID], [ExerciseTypeName]) VALUES (1, N'Endurance')
GO
INSERT [dbo].[ExerciseTypes] ([ExerciseTypeID], [ExerciseTypeName]) VALUES (2, N'Strength')
GO
INSERT [dbo].[ExerciseTypes] ([ExerciseTypeID], [ExerciseTypeName]) VALUES (3, N'Balance')
GO
INSERT [dbo].[ExerciseTypes] ([ExerciseTypeID], [ExerciseTypeName]) VALUES (4, N'Flexibility')
GO
SET IDENTITY_INSERT [dbo].[ExerciseTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ExerciseInfos] ON 
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (1, N'Walking', N'Walking is simple, free, and flexible. Plenty of walking options exist, including the track, the street, the forest, the mall, and the treadmill. You can vary the intensity of walking to match your fitness level. Other than walking shoes, this exercise does not require any special equipment. (But you can always splurge on walking poles for added stability on rough terrain, if so inclined.) Walking', 30, 5, 1)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (2, N'Cycling', N'Cycling doesn’t have to be a tour de force at the Tour de France. People at all fitness levels can benefit from this endurance-building intervention. In fact, people who are 50 or more pounds overweight may find cycling on a stationary bike the ideal first exercise option because it can improve cardiovascular health sans the mechanical stress on the back, hips, knees, and ankles secondary to walki', 30, 5, 1)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (3, N'Swimming', N'For beginners, non-swimmers, or those of low-exercise tolerance, swimming may not be the best fit. Indeed, with a recommended 30- to 60-minute session, it may be downright dangerous for those who are unable to maintain the appropriate intensity. But for everybody else, swimming is aces. Of note, because swimming concentrates on small upper body musculature and is, by nature, more inefficient than ', 30, 4, 1)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (4, N'Aerobic dance', N'Like jogging and running, aerobic dance is a great activity for highly fit people. However, those with orthopedic problems, angina, or shortness of breath should not partake.', 15, 4, 1)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (5, N'Running', N'Running (including jogging) is the most challenging type of endurance exercise. When going for a run, the main advantage of treadmills vs overground running is that treadmills permit various physiological measures to be recorded within a controlled space. For athletes, this allows greater control over performance variables such as running velocity and surface gradient, as well as environmental var', 15, 5, 1)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (6, N'Lifting Weights', N'For an activity to be muscle strengthening, it needs to work your muscles to the point where you may need a short rest before continuing.', 30, 5, 2)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (7, N'Climbing Stairs', N'For an activity to be muscle strengthening, it needs to work your muscles to the point where you may need a short rest before continuing.', 15, 6, 2)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (8, N'Tightrope walk', N'Tie a piece of string to two poles. Hold your arms out wide to the sides. Walk on the string without stepping off to the side. Walk at least 15 steps.', 5, 5, 3)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (9, N'Rock the boat', N'Stand with your feet hip-width apart. Press your weight into both feet firmly and evenly. Yield your weight onto your left foot and lift your right foot. Hold for up to 30 seconds. Slowly lower your left foot to the floor and repeat on the other side. Do each side five to 10 times.', 1, 10, 3)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (10, N'Flamingo stand', N'Stand on your left leg with your right leg lifted. Use a chair or wall for support as you stretch your right leg forward. Maintain good posture by keeping your spine, neck, and head in one line. To increase the difficulty, extend your hand to reach for your right foot. Hold for up to 15 seconds. Then do the opposite side.', 1, 15, 3)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (11, N'Shoulder rolls', N'Stand up straight, feet hip-width apart and arms at your sides, loosely relaxed. Roll your shoulders up, back, and down. Your thumbs should be pointing forward as you start the move. Palms point forward, elbows slightly bent, as you finish each shoulder roll. Now reverse the movement so your shoulders role forwards, down, back and up. Repeat several times.', 5, 10, 4)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (12, N'Extended angle side bend', N'Start with your feet wide apart, legs straight and right foot pointing to the side. Stretch arms wide open at chest level, palms facing forwards. Slowly bend your right knee, lowering yourself down to the right side, ensuring your feet are wide enough so your knee does not extend beyond the line of your toes. At the same time, tilt your whole body to the right, keeping the spine long and the arms ', 5, 10, 4)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (13, N'Lower back mobiliser', N'Lie on your back, legs almost straight, arms outstretched on the floor, in a cross position. Exhale and raise both knees towards your chest. Inhale, feeling the air expand your chest. Exhale and drop both knees together to your right. Keep both shoulders in contact with the floor and turn your head to the left. Inhale and bring your knees back to the chest. Exhale and repeat to the left. Try to ke', 5, 12, 4)
GO
INSERT [dbo].[ExerciseInfos] ([ExerciseID], [ExerciseName], [Details], [Duration], [NumberOfSet], [ExerciseTypeID]) VALUES (14, N'Standing hamstring stretch', N'Stand with feet slightly less than shoulder-width apart, facing forwards. Step forward with your left foot. Flex your left foot up towards you. Bend forward at your hips and place your hands on your left thigh. Keep your left leg straight as you slightly bend the right knee. Feel the stretch along your left hamstring. Hold for 30-60 seconds then switch sides.', 10, 6, 4)
GO
SET IDENTITY_INSERT [dbo].[ExerciseInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON 
GO
INSERT [dbo].[States] ([StateID], [StateName]) VALUES (1, N'California')
GO
INSERT [dbo].[States] ([StateID], [StateName]) VALUES (2, N'Colorado')
GO
INSERT [dbo].[States] ([StateID], [StateName]) VALUES (3, N'New York')
GO
INSERT [dbo].[States] ([StateID], [StateName]) VALUES (4, N'Georgia')
GO
INSERT [dbo].[States] ([StateID], [StateName]) VALUES (5, N'Texas')
GO
INSERT [dbo].[States] ([StateID], [StateName]) VALUES (6, N'Ohio')
GO
SET IDENTITY_INSERT [dbo].[States] OFF
GO
SET IDENTITY_INSERT [dbo].[Clubs] ON 
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (1, N'Arroyo Grande', N'908 Rancho Parkway', N'Arroyo Grande, CA 93420', N'805-489-1908', 1)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (2, N'Bellflower', N'9044 Alondra Blvd.', N'Bellflower, CA 90706', N'562-867-1919', 1)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (3, N'Brea', N'706 East Imperial Highway', N'Brea, CA 92821', N'714-529-1919', 1)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (4, N'Buena Park', N'7886 Valley View St.', N'Buena Park, CA 90620', N'714-521-1919', 1)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (5, N'Camarillo', N'1775 East Daily Dr.', N'Camarillo, CA 93010', N'(805) 389-9119', 1)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (6, N'Thornton', N'12840 Holly Street', N'Thornton, CO 80602', N'720-872-1919', 2)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (7, N'Depew', N'6375 Transit Road', N'Depew, NY 14043', N'716-651-1919', 3)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (8, N'Malverne', N'356 Hempstead Ave', N'Malverne, NY 11565', N'516-596-1919', 3)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (9, N'West Seneca', N'800 Harlem Road #800', N'West Seneca, NY 14206-4224', N'716-825-1919', 3)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (10, N'Williamsville', N'722 Maple Road', N'Williamsville, NY 14221', N'716-688-1911', 3)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (11, N'Houston', N'17111 West Road Suite 100', N'Houston, TX 77095', N'281-855-0177', 5)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (12, N'Katy', N'3111 N. Fry Rd. Suite 401', N'Katy, TX 77449', N'Katy, TX 77449', 5)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (13, N'Cleveland', N'3740 Rocky River Drive', N'Cleveland, OH 44111', N'216-889-1919', 6)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (14, N'Toledo', N'2588 W Sylvania Ave', N'Toledo, OH 43613', N'419-472-1319', 6)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (15, N'Westerville', N'85 West Schrock Road', N'Westerville, OH 43081', N'614-899-1919', 6)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (16, N'Wickliffe', N'30240 Euclid Avenue', N'Wickliffe, OH 44092', N'440-585-1919', 6)
GO
INSERT [dbo].[Clubs] ([ClubID], [ClubName], [AddressLine1], [AddressLine2], [ContactNo], [StateID]) VALUES (17, N'Lilburn', N'4045 Five Forks Trickum SW Suite 1A Trickum SW Suite 1A', N'Lilburn, GA 30047-2351', N'770-564-1948', 4)
GO
SET IDENTITY_INSERT [dbo].[Clubs] OFF
