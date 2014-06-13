package es.adsuar.UniversalREST.pojo;

import java.util.Random;

/**
 * POJO class that stores the data of an object. Since the class is build in the
 * POJO way, the object will be serialized by Jackson into a JSON object
 * automatically.
 * 
 * @author Antonio Jesús Adsuar Gómez
 * 
 */

public class DataPOJO {
	/**
	 * Key that identifies the data.
	 */
	Integer key;
	/**
	 * Class of the key that identifies the data.
	 */
	ClassificationPOJO keyClass;

	/**
	 * Class constructor.
	 */
	public DataPOJO() {
		this.key = null;
		this.keyClass = null;
	}

	/**
	 * Class constructor.
	 * 
	 * @param key
	 *            Key of the object.
	 */
	public DataPOJO(Integer key) {
		super();
		this.key = key;
		Random rnd = new Random();
		Integer value = (int) (rnd.nextDouble() * 11);
		this.keyClass = new ClassificationPOJO(value);
	}

	/**
	 * Method that gets the key of an object.
	 * 
	 * @return Key value.
	 */
	public Integer getKey() {
		return key;
	}

	/**
	 * Method that instantiates the key of the object.
	 * 
	 * @param key
	 *            Value.
	 */
	public void setKey(Integer key) {
		this.key = key;

		Random rnd = new Random();
		Integer value = (int) (rnd.nextDouble() * 11);

		if (this.keyClass != null)
			this.keyClass.setClassification(value);
		else
			this.keyClass = new ClassificationPOJO(value);
	}

	/**
	 * Method that gets the class the object belongs to.
	 * 
	 * @return Class.
	 */
	public ClassificationPOJO getKeyClass() {
		return keyClass;
	}

	/**
	 * Method that instantiates the class the object belongs to.
	 * 
	 * @param keyClass
	 *            Class.
	 */
	public void setKeyClass(ClassificationPOJO keyClass) {
		this.keyClass = keyClass;
	}
}
