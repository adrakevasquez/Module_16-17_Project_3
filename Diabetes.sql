CREATE TABLE diabetes(
	Diabetes_binary	DECIMAL not null,
	HighBP DECIMAL not null,
	HighChol DECIMAL not null,
	CholCheck DECIMAL not null,
	BMI	DECIMAL not null,
	Smoker DECIMAL not null,
	Stroke DECIMAL not null,	
	HeartDiseaseorAttack DECIMAL not null,
	PhysActivity DECIMAL not null,
	Fruits DECIMAL not null,
	Veggies DECIMAL not null,	
	HvyAlcoholConsump DECIMAL not null,
	AnyHealthcare DECIMAL not null,
	NoDocbcCost DECIMAL not null,
	GenHlth	DECIMAL not null,
	MentHlth DECIMAL not null,	
	PhysHlth DECIMAL not null,
	DiffWalk DECIMAL not null,
	Sex DECIMAL not null,
	Age DECIMAL not null,
	Education DECIMAL not null,
	Income DECIMAL
);

SELECT Diabetes_binary, HighBP, HighChol, BMI, Smoker, PhysActivity, Fruits, Veggies, HvyAlcoholConsump, Sex, Age, Income 
FROM diabetes
WHERE
	Stroke = 0.0
	AND Smoker = 0.0
	AND HeartDiseaseorAttack = 0.0
	AND NoDocbcCost = 0.0
	AND DiffWalk = 0.0
	AND CholCheck = 1.0
	AND AnyHealthcare = 1.0;
SELECT * FROM diabetes