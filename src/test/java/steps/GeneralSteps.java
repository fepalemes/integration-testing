package steps;

import cucumber.api.java.pt.Então;
import groovy.json.internal.LazyMap;
import org.junit.Assert;
import support.RESTSupport;

public class GeneralSteps {

    @Então("^usuario devera ver (.*) com valor \"([^\"]*)\"$")
    public void usuarioDeveraVerConteudoComValor(String field, String value) throws Throwable {
        Assert.assertEquals(value, RESTSupport.key(field));
    }

    @Então("^usuario devera ver a mensagem de \"([^\"]*)\"$")
    public void usuarioDeveraVerAMensagem(String type) throws Throwable {
        LazyMap messageJson = new LazyMap();
        messageJson.put("Salvo com sucesso", 201);
        messageJson.put("Sucesso", 200);
        messageJson.put("Sem conteudo", 204);
        messageJson.put("Nao encontrado", 404);
        messageJson.put("Nao autorizado", 401);

        Assert.assertEquals(messageJson.get(type),RESTSupport.getResponseCode());
    }
}
