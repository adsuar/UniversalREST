package es.adsuar.UniversalREST.pojo;

import java.util.Random;

public class DataPOJO {
	/**
	 * Key that identifies the data.
	 */
	Integer key;
	/**
	 * Class of the key that identifies the data.
	 */
	ClassificationPOJO keyClass;

	public DataPOJO() {
		this.key = null;
		this.keyClass = null;
	}

	public DataPOJO(Integer key) {
		super();
		this.key = key;
		Random rnd = new Random();
		Integer value = (int) (rnd.nextDouble() * 11);
		this.keyClass = new ClassificationPOJO(value);
	}

	public Integer getKey() {
		return key;
	}

	public void setKey(Integer key) {
		this.key = key;

		Random rnd = new Random();
		Integer value = (int) (rnd.nextDouble() * 11);

		if (this.keyClass != null)
			this.keyClass.setClassification(value);
		else
			this.keyClass = new ClassificationPOJO(value);
	}

	public ClassificationPOJO getKeyClass() {
		return keyClass;
	}

	public void setKeyClass(ClassificationPOJO keyClass) {
		this.keyClass = keyClass;
	}
}
