package steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Quando;
import definition.Process;

import support.RESTSupport;

public class ProcessosSteps {

    @Dado("^usuario gostaria de salvar um processo$")
    public void usuarioGostariaDeSalvarUmProcesso() throws Throwable {
        Process.clearFields();
    }

    @E("^usuario informa (.*) com valor igual \"([^\"]*)\"$")
    public void usuarioInformaCampoComValorIgual(String field, String value) {
        Process.addFields(field, value);
    }

    @Quando("^usuario clica em salvar$")
    public void usuarioClicalEmSalvar() throws Throwable {
        RESTSupport.executePost(Process.getEndPoint(), Process.getFields());
        Process.setLastProcess(RESTSupport.key("id").toString());
        Process.clearFields();
    }

    @E("^usuario deseja ver as informacoes do processo$")
    public void usuarioDesejaVerAsInformacoesDoProcesso() throws Throwable {
        RESTSupport.executeGet(Process.getEndPoint() + Process.getLastProcess() + ".json");
    }

    @E("^usuario clica no botao salvar novamente$")
    public void usuarioClicaNoBotaoSalvarNovamente() throws Throwable {
        RESTSupport.executePut(Process.getEndPoint() + Process.getLastProcess() + ".json", Process.getFields());
    }

    @E("^usuario clica no botao deletar$")
    public void usuarioClicaNoBotaoDeletar() throws Throwable {
        RESTSupport.executeDelete(Process.getEndPoint() + Process.getLastProcess() + ".json");
    }

    @Dado("^usuario deseja ver as informacoes do processo especifico \"([^\"]*)\"$")
    public void usuarioDesejaVerAsInformacoesDoProcessoEspecifico(String idProcesso) throws Throwable {
        Process.setIdProcess(idProcesso);
    }

    @Quando("^o usuario clicar em mostrar$")
    public void oUsuarioClicarEmMostrar() {
        RESTSupport.executeGet(Process.getEndPoint() + Process.getIdProcess() );

    }

    @Quando("^o usuario clicar em editar$")
    public void oUsuarioClicarEmEditar() {
        RESTSupport.executeGet(Process.getEndPoint() + Process.getIdProcess() );
    }

    @Quando("^usuario clica em salvar - scenario outline$")
    public void usuarioClicaEmSalvarEmBranco() {
        RESTSupport.executePost(Process.getEndPoint(), Process.getFields());
    }
}
