package steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Quando;
import support.RESTSupport;

public class CrudJsonPlaceHolderSteps {

    @Quando("^user clicks on find button$")
    public void userClicksOnFindButton() throws Throwable {
        RESTSupport.executeGet("http://agapito-server.herokuapp.com/processos/");
    }

    @Dado("^user would like to see all json placeholder$")
    public void userWouldLikeToSeeAllPlaceholder() throws Throwable {

    }
}
