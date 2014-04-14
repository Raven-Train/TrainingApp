package uk.ac.shu.webarch.trainingapp

class Trainingsession {

	String sessionID;
	User username //Identifies the user this session belongs to
	Date date //Will be the date the user creates the training session
	Set sessionExercise //Many exercises in a training session


	static hasMany = [sessionExercise: Sessionexercise] //Relationship to exercise
	static mappedBy = [sessionExercise: 'sessionID']

		
    static constraints = {

	
    }
}
