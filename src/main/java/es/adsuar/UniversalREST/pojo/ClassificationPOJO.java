package es.adsuar.UniversalREST.pojo;

/**
 * POJO class that stores the classification of an object. Since the class is
 * build in the POJO way, the object will be serialized by Jackson into a JSON
 * object automatically.
 * 
 * @author Antonio Jesús Adsuar Gómez
 * 
 */

public class ClassificationPOJO {
	Integer classification;

	/**
	 * Class constructor.
	 */
	public ClassificationPOJO() {
		this.classification = null;
	}

	/**
	 * Class constructor.
	 * 
	 * @param classification
	 *            Class of the object.
	 */
	public ClassificationPOJO(Integer classification) {
		super();
		this.classification = classification;
	}

	/**
	 * Method that gets the classification value.
	 * 
	 * @return Class.
	 */
	public Integer getClassification() {
		return classification;
	}

	/**
	 * Method that instantiates the classification value.
	 * 
	 * @param classification
	 *            Class.
	 */
	public void setClassification(Integer classification) {
		this.classification = classification;
	}
}
