package steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import definition.Process;

import support.RESTSupport;

public class CrudProcessSteps {

    @Given("^user would like to save a process$")
    public void userWouldLikeToSaveAProcess() throws Throwable {
        Process.clearFields();
    }

    @And("^user informs (.*) with value equal \"([^\"]*)\"$")
    public void userInformsNameWithValueEqual(String field, String value) {
        Process.addFields(field, value);
    }

    @When("^user clicks on save button$")
    public void userClicksOnSaveButton() throws Throwable {
        RESTSupport.executePost(Process.getEndPoint(), Process.getFields());
        Process.setLastUser(RESTSupport.key("id").toString());
        Process.clearFields();
    }

    @And("^user wants to see process information$")
    public void userWantsToSeeUserInformation() throws Throwable {
        RESTSupport.executeGet(Process.getEndPoint() + Process.getLastUser() + ".json");
    }

    @And("^user clicks on save button again$")
    public void userClicksOnSaveButtonAgain() throws Throwable {
        RESTSupport.executePut(Process.getEndPoint() + Process.getLastUser() + ".json", Process.getFields());
    }

    @And("^user clicks on delete button$")
    public void userClicksOnDeleteButton() throws Throwable {
        RESTSupport.executeDelete(Process.getEndPoint() + Process.getLastUser() + ".json");
    }

    @And("^user clicks on save button with only one change$")
    public void userClicksOnSaveButtonWithOnlyOneChang() throws Throwable {
        RESTSupport.executePatch(Process.getEndPoint() + Process.getLastUser() + ".json", Process.getFields());
    }
}
