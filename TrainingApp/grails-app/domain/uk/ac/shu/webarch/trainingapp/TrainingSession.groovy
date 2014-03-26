package uk.ac.shu.webarch.trainingapp

class TrainingSession {

	String sessionID;
	User username
	Date date
	Set sessionExercise


	static hasMany = [sessionExercise: Sessionexercise]
	static mappedBy = [sessionExercise: 'sessionID']

		
    static constraints = {

	
    }
}
