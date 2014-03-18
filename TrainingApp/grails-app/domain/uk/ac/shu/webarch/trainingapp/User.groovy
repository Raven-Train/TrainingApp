package uk.ac.shu.webarch.trainingapp

class User { 

	String username
	String gender
	int    height 
	Float  Weight
	Set trainingSessions 	



	static hasMany = [trainingSessions: TrainingSession]
	static mappedBy = [trainingSessions: 'username']	
	
    static constraints = 
	{
        }
}
