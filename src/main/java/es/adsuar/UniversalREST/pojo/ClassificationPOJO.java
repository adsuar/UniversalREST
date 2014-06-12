package es.adsuar.UniversalREST.pojo;

public class ClassificationPOJO {
	Integer classification;

	public ClassificationPOJO() {
		this.classification = null;
	}
	
	public ClassificationPOJO(Integer classification) {
		super();
		this.classification = classification;
	}

	public Integer getClassification() {
		return classification;
	}

	public void setClassification(Integer classification) {
		this.classification = classification;
	}
}
