package application;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

@Path("/alive")
public class AliveResource {

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String alive() {
        return "JAX-RS is alive";
    }
}
