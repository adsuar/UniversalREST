package es.adsuar.UniversalREST;

import java.util.HashMap;

import es.adsuar.UniversalREST.pojo.DataPOJO;

/**
 * Singleton that will store the data used for the project until tomcat is
 * stopped.
 * 
 * @author Antonio Jesús Adsuar Gómez
 * 
 */

public enum DataClassified {
	INSTANCE;

	private HashMap<Integer, DataPOJO> data;

	/**
	 * Class Constructor.
	 */
	private DataClassified() {
		this.data = new HashMap<Integer, DataPOJO>();
	}

	/**
	 * Method that returns the instance of the singleton class.
	 * 
	 * @return Instance.
	 */
	public static DataClassified getInstance() {
		return INSTANCE;
	}

	public DataPOJO getData(Integer key) {
		return data.get(key);
	}

	public DataPOJO setData(Integer key) {
		/**
		 * If one key is already stored, it makes no sense to classify it again.
		 */
		DataPOJO dp = data.get(key);

		if (dp == null)
			dp = new DataPOJO(key);

		this.data.put(key, dp);

		return dp;
	}
}
