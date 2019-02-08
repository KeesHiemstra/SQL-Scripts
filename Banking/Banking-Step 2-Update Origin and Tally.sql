/*
	Update the Origin and TallyName, TallyDescription.

	Step 2
*/

USE [Banking]
GO

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Bank ABN'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Diverse'
	AND [Text] LIKE 'ABN AMRO Bank N.V.%'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Bank ING'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Diversen'
	AND [Name] LIKE 'Kosten BasisPakket%'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Belasting inkomen'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] IN ('NL81BNGH0285084321', 'NL26INGB0000441290')

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Belasting Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] IN ('NL86INGB0002445588', 'NL69INGB0705001180', 'NL90DEUT0319866939')

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Belasting Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL80BNGH0285076191'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Belasting Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL82DEUT0319804615'

UPDATE Bank
SET [TallyName] = 'Boodschappen Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Betaalautomaat'
	AND [Text] LIKE '%PLUS van Soest SOESTERBE,PAS946%'

UPDATE Bank
SET [TallyName] = 'Boodschappen Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Betaalautomaat'
	AND [Name] IN ('Plus Meerkerk B.V. MEERKERK NLD',
		'Sodexo-NL078391 UTRECHT NLD',
		'TOTAL Oudegein IJSSELSTEIN U NLD',
		'Scapino Arkel ARKEL NLD',
		'1173 action ARKEL NLD',
		'TOTAL Oudegein IJSSELSTEIN U NLD',
		'STB computer service MEERKERK',
		'Bruna Gorinchem GORINCHEM NLD',
		'1173 Action Arkel ZWAAGDIJK NLD',
		'PLUS van Soest SOESTERBERG NLD',
		'McDonald s HUIS TER HEID NLD',
		'DE KROON NIEUWEGEIN NLD',
		'HD85801GammaN''Gein NIEUWEGEIN',
		'JD3201GammaGorinchem GORINCHEM',
		'Herenkap. Overgaauw MEERKERK NLD',
		'Pizzeria Meerkerk GORINCHEM NLD',
		'ABC Drogisterij MEERKERK NLD',
		'Toychamp Arkel ARKEL NLD',
		'Action 1173 Arkel ZWAAGDIJK NLD',
		'BP CARTESIUSWEG UTRECHT NLD',
		'TMC*P - LEERDAM - 5 LEERDAM NLD',
		'CCV*OV PLUS MEERKERK MEERKERK',
		'CCV*CAFETARIA DE HALTE MEERKERK',
		'Gemeente Zederik MEERKERK NLD',
		'CCV*OV SINT ANTHONIUS NIEUWEGEIN',
		'DIRK VDBROEK FIL3390 NIEUWEGEIN',
		'Cafetaria Soesterberg',
		'CCV*IRENES AMBACHTEL B MEERKERK',
		'ALBERT HEIJN 1869 NIEUWEGEIN NLD',
		'Albert Heijn 1327 NIEUWEGEIN NLD',
		'Plus Meerkerk MEERKERK NLD',
		'Dick Voor Mekaarshop NOORDELOOS',
		'J DOUWE EGBERTS 5247 UTRECHT NLD',
		'St Antonius Ziekenh NIEUWEGEIN',
		'EMTE Arkel ARKEL NLD',
		'De Jager LEERDAM NLD',
		'Action 1173 Arkel ARKEL NLD',
		'Kruidvat 2798 GORINCHEM NLD',
		'Makro Vianen VIANEN UT NLD',
		'Fa. L. de Jong & Zn. AMEIDE NLD',
		'SHELL BLOMMENDAAL BLOMMENDAAL',
		'CCV*KRINGLOOPCENTRUM G GOUDRIAAN',
		'Plus Teeuw LEERDAM NLD',
		'Spar van Maren LEXMOND NLD',
		'emte superm hoornaar HOORNAAR',
		'Action 1108 Nieuwegein NLD',
		'Plus Teeuw LEERDAM NLD',
		'Gelinos GOES NLD',
		'Staples Office Centr NIEUWEGEIN',
		'SHELL HAARRIJN BREUKELEN UT NLD',
		'Action 1173 Arkel NLD',
		'Praxis Gorinchem 252 GORINCHEM',
		'McDonald''s Gorinchem GORINCHEM',
		'Q PARK AZN ZIEKENHUIS NIEUWEGEIN',
		'TOTAL ZEIVING VUREN NLD',
		'CCV*LUKOIL GORINCHEM GORINCHEM',
		'Aldi 053 Leerdam LEERDAM NLD',
		'Slot loevestein POEDEROIJEN NLD',
		'Kruidvat 7205 NIEUWEGEIN NLD',
		'Albert Heijn 1142 GORINCHEM NLD',
		'ZEEMAN GORINCHEM PIAZZ GORINCHEM',
		'Lukoil HOOGBLOKLAND NLD',
		'Action 1364 Gorinchem NLD',
		'St. A. Apo Nwegein NIEUWEGEIN',
		'Cafetaria Mac Roy NIEUWEGEIN NLD',
		'Albert Heijn 1439 WOERDEN NLD',
		'Van der Leeden MEERKERK NLD',
		'Action 1315 Nieuwegein NLD',
		'ALBERT HEIJN 2202 UTRECHT NLD',
		'CCV*JUWELIER PA STIFT LEERDAM',
		'HEMA LEERDAM LEERDAM NLD'
		)

UPDATE Bank
SET [TallyName] = 'Boodschappen Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Geldautomaat'
	AND [Name] IN ('RABO ALBLASS-VIJFH NLD',
		'RABO ALBLASSERWAAR NLD'
		)

UPDATE Bank
SET [TallyName] = 'Boodschappen Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Online bankieren'
	AND [Name] IN (' P.R. Westbroek'
		)

UPDATE Bank
SET [TallyName] = 'Boodschappen Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] IN ('NL58RABO0135197708',
		'NL58INGB0000000043',
		'NL68RABO0335301835'
		)

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Betaalautomaat'
	AND (
		[Text] LIKE '%PLUS van Soest SOESTERBE,PAS955%'
		OR [Text] LIKE '%Action 1068 Zeist ZEIST ,PAS955%'
		OR [Text] LIKE '%Jumbo 264957 ZEIST,PAS955%'
		OR [Text] LIKE '%De Tuinen 7619 ZEIST,PAS955%'
		OR [Text] LIKE '%Zaadhandel van der Wal van der Wal Zaadhandel BV%'
		OR [Text] LIKE '%DIERENKL.SOESTERBERG SOE,PAS955%'
		OR [Text] LIKE '%Kruidvat 6127 SOESTERBER,PAS955%'
		OR [Text] LIKE '%ZEEMAN ZEIST VOORHEUVE Z,PAS955%'
		OR [Text] LIKE '%Action 1068 Zeist,PAS955%'
		OR [Text] LIKE '%Action 1231 Amersfoort,PAS955%'
		OR [Text] LIKE '%Pets Place XL Zeist - ZE,PAS955%'
		OR [Text] LIKE '%Xenos Soest 0178 SOEST,PAS955%'
		OR [Text] LIKE '%EKOPLAZA SOEST SOEST,PAS955%'
 		)

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND (
		[Text] LIKE '%Zaadhandel van der Wal van der Wal Zaadhandel BV%'
		)

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL29INGB0009690283'
	AND [Name] = 'Dierenkliniek Soesterberg'

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL48DEUT0319887774'
	AND [Name] = 'MultiSafepay'

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL30ABNA0524590958'
	AND [Name] = 'STG MOLLIE PAYMENTS'

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] IN ('DE88500700100175526303', 'FR763000402118000101371179')

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [Text] LIKE '%zooplus AG%'

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [Text] LIKE '%Zeeman%'

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [Text] LIKE 'BITIBA%'

UPDATE Bank
SET [TallyName] = 'Boodschappen Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Geldautomaat'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Energie Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL37INGB0003157965'
	AND [Text] LIKE '%4231 ZA, 7%'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Energie Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL37INGB0003157965'
	AND [Text] LIKE '%4231 ZA, 7%'
	AND [Amount] > 0

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Energie Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL37INGB0003157965'
	AND [Text] LIKE '%3769 TA, 13%'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Energie Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL97RABO0140917969'
	AND [Text] LIKE '%ADRES: 3769TA13%'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Energie Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL97RABO0140917969'
	AND [Text] LIKE '%ADR ES: 3769TA13%'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Energie Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL37INGB0003157965'
	AND [Text] LIKE '%3769 TA, 13%'
	AND [Amount] > 0

UPDATE Bank
SET [Origin] = 'Inkomen gezamenlijk',
	[TallyName] = 'Inkomen van Kees'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL87INGB0003992526'
	AND [Amount] > 0

UPDATE Bank
SET [Origin] = 'Inkomen gezamenlijk',
	[TallyName] = 'Inkomen van Marjolein'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [Name] = 'M. WESTERHOF'
	AND [Amount] > 0

UPDATE Bank
SET [Origin] = 'Inkomen gezamenlijk',
	[TallyName] = 'Inkomen van Belastingen'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL36INGB0003445588'
	AND [Amount] > 0

UPDATE Bank
SET [Origin] = 'Inkomen gezamenlijk',
	[TallyName] = 'Inkomen huis'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [Name] = 'M. BLIEKENDAAL'
	AND [Amount] > 0

UPDATE Bank
SET [Origin] = 'Inkomen gezamenlijk',
	[TallyName] = 'Inkomen huis'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL91INGB0651280923'
	AND [Amount] > 0

UPDATE Bank
SET [Origin] = 'Inkomen gezamenlijk',
	[TallyName] = 'Inkomen huis'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL94RABO0162173342'
	AND [Amount] > 0

UPDATE Bank
SET [Origin] = 'Salaris',
	[TallyName] = 'Inkomen Kees'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Overschrijving'
	AND [Name] = 'DITP DETACHERING IT PROF'
	AND [Amount] > 0

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Internet'
WHERE [TallyName] IS NULL
	--AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL55INGB0004683839'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Support actie'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL46RABO0141300000'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Support actie'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL78INGB0005056584'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL28INGB0000002329'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Huis Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL46INGB0005533333'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Huis Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [Name] IN ('DRES Vastg Won CV HOF (452 /7414) HUUR', 'DRES Vastg Won CV HOF (452/7414) HUUR')

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Software'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL78INGB0005056584'
	AND [CounterAccount] = 'NL60ABNA0593340817'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Telefoon Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL83INGB0000325513'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Telefoon Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [CounterAccount] = 'NL83DEUT0265121817'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Verzekering begrafenis'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL09RABO0303577010'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Verzekering inboedel'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'Den Ouden Assurantien BV'
	AND [Text] LIKE '%Inboedel Apollo 13%'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Verzekering leven'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'KLAVERBLAD LEVENSVERZEKE'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Verzekering rechtsbijstand'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'REAAL SCHADEVERZEKERING'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Verzekering opstal'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'GENERALI SCHADEVERZEKERI'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Verzekering opstal'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'ASR SCHADEVERZEKERING NV'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Verzekering opstal'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'ASR SCHADEVERZEKERING'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Verzekering WA'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'Den Ouden Assurantien BV'
	AND [Text] LIKE '%Aansprakelijkheid particulier%'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Verzekering WA'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'Den Ouden Assurantien BV'
	AND [Text] LIKE '%Zekerheidspakket Particulieren%'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Verzekering Ziektekosten'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL87INGB0003992526'
	AND [Mutation] = 'Online bankieren'
	AND [CounterAccount] = 'NL58INGB0000003050'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Water Meerkerk'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'OASEN NV'

UPDATE Bank
SET [Origin] = 'Gezamenlijk',
	[TallyName] = 'Water Soesterberg'
WHERE [TallyName] IS NULL
	AND [Account] = 'NL54ABNA0574446974'
	AND [Mutation] = 'Incasso'
	AND [Name] = 'VITENS NV'

UPDATE Bank
SET [Origin] = 'Persoonlijk',
	[TallyName] = 'Overboeking'
WHERE [TallyName] IS NULL
	AND (
		([Account] = 'NL78INGB0005056584' AND [CounterAccount] = 'NL87INGB0003992526')
		OR ([Account] = 'NL87INGB0003992526' AND [CounterAccount] = 'NL78INGB0005056584')
		OR ([Account] = 'NL87INGB0003992526' AND [CounterAccount] = 'NL54ABNA0574446974')
		OR ([Account] = 'NL54ABNA0574446974' AND [CounterAccount] = 'NL87INGB0003992526')
		OR ([Account] = 'NL87INGB0003992526' AND [Name] = 'Van Profijtrekening')
		)




/*
	Update TallyDescription from Tally table
*/

UPDATE Bank
SET [TallyDescription] = T.[Description]
FROM Bank AS B
	LEFT JOIN Tally AS T
		ON B.[TallyName] = T.[Tally]
WHERE B.[TallyDescription] IS NULL
--	OR B.[TallyDescription] != T.[Description]

/*
	Update Month
*/

UPDATE Bank
SET [Month] = CAST(YEAR([Date]) AS varchar(4)) + '-' + RIGHT('0' + CAST(MONTH([Date]) AS varchar(2)), 2)
FROM Bank
WHERE [Month] IS NULL

