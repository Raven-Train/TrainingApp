package uk.ac.shu.webarch.trainingapp

class User { 

	String username
	String gender
	int    height 
	Float  weight
	Set trainingSessions 	
	
	static mapping = 
	{
		weight column: "weight", sqlType: "decimal", precision: 4, scale: 1
	} 


	static hasMany = [trainingSessions: Trainingsession]
	static mappedBy = [trainingSessions: 'username']	

    	static constraints = 
	{
		gender(inList:["Male", "Female"])
				
        }
}
