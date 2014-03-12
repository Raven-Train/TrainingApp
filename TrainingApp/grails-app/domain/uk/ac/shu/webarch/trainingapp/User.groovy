package uk.ac.shu.webarch.trainingapp

class User 

	String username
	String gender
	int    height 
	Float  Weight

	static mappedBy = [classes: 'username']
	static hasMany = [classes: TrainingSession]
	
	
    static constraints = 
	{
        }
}
