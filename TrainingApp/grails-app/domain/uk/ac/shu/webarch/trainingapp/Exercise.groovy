package uk.ac.shu.webarch.trainingapp

class Exercise {

	String exerciseName
	int percentage //Much of this will not be used in the first version of
	int improvement // the application.
	int goalWeight // Initially the app will behave purely as a way of
	String bodyPart // storing information on training sessions easily
	String equipment
	Set sessionExercise 
	
	static hasMany = [sessionExercise: Sessionexercise]
	static mappedBy = [sessionExercise: 'exerciseName'] //Each exercise can be part of many Sessionexercises
	
    static constraints = {
	
	
    }
}
