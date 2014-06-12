package es.adsuar.UniversalREST;

import java.util.HashMap;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import es.adsuar.UniversalREST.pojo.ClassificationPOJO;
import es.adsuar.UniversalREST.pojo.DataPOJO;


/**
 * Root resource (exposed at "urinterface" path)
 */
@Path("/urinterface")
public class UniversalRESTInterface {
	HashMap<Integer,ClassificationPOJO> map = new HashMap<Integer,ClassificationPOJO>();
	
	private Integer valor = null;

	/**
	 * Method handling HTTP GET requests. The returned object will be sent to
	 * the client as JSON media type. Since the ClassificationPOJO class is
	 * built in a way the Jackson library included at web.xml, we will be able
	 * to create a JSON object from a Java one.
	 */
	@GET
	@Path("/test")
	@Produces(MediaType.APPLICATION_JSON)
	public String test() {
		return "Welcome to my new Jersey RESTful Web Application!";
	}

	/**
	 * Method handling HTTP GET requests. The returned object will be sent to
	 * the client as JSON media type. Since the ClassificationPOJO class is
	 * built in a way the Jackson library included at web.xml, we will be able
	 * to create a JSON object from a Java one.
	 */
	@GET
	@Path("/classify/{classify}")
	@Produces(MediaType.APPLICATION_JSON)
	public DataPOJO classify(@PathParam("classify") Integer classify) {
		
		DataPOJO dp = DataClassified.getInstance().getData(classify);
		
		return dp;
	}

	/**
	 * Method handling HTTP POST requests. The returned object will be sent to
	 * the client as JSON media type. Since the ClassificationPOJO class is
	 * built in a way the Jackson library included at web.xml, we will be able
	 * to create a JSON object from a Java one.
	 */
	@POST
	@Path("/create")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	public DataPOJO create(@FormParam("object") String object) {
		valor = Integer.valueOf(object);

		DataPOJO cpojo = DataClassified.getInstance().setData(valor);
		
		return cpojo;
	}
}
