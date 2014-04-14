package uk.ac.shu.webarch.trainingapp

class Sessionexercise {

	int reps
	int weight
	int setNo
	Trainingsession sessionID //A session exercise is mapped by an exercise and the session in which it is performed
	Exercise exerciseName		//This class resolves the M-M relationship between Exercise and Training session
	

    static constraints = {
    }
}

