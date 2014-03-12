package uk.ac.shu.webarch.trainingapp

class TrainingSession {


	String sessionID;
	User username;
	Date date;
	
	static mappedBy = [classes: 'sessionID']

    static constraints = {

	
    }
}
