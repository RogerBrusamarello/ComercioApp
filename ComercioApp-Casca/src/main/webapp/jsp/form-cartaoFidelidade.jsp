<%@page import="java.util.Date"%>
<%@page import="br.upf.ads.paw.entidades.CartaoFidelidade"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.jspf" %>
<div class="container">
    <form action="/cartaoFidelidade" method="post"  role="form" data-toggle="validator" >
        <c:if test ="${empty action}">                        	
            <c:set var="action" value="add"/>
        </c:if>
        <input type="hidden" id="action" name="action" value="${action}">
        <input type="hidden" id="id" name="id" value="${obj.id}">
        <h2>Cartão Fidelidade</h2>
        <div class="form-group col-xs-4">
            <label for="nome" class="control-label col-xs-4">Nome:</label>
            <input type="text" name="nome" id="nome" class="form-control" value="${obj.nome}" required="true"/>                                   
        </div>
        <div class="form-group col-xs-4">
            <label for="vencimento" class="control-label col-xs-4">Vencimento:</label>
            <input type="text" name="vencimento" id="nome" class="form-control" value="${obj.vencimento}" required="true"/>                                   
        </div>
        <div class="form-group col-xs-4">
            <label for="limite" class="control-label col-xs-4">Limite:</label>
            <input type="text" name="limite" id="nome" class="form-control" value="${obj.limite}" required="true"/>                                   
        </div>
        <div class="form-group col-xs-4">
            <label for="fatorConversao" class="control-label col-xs-4">FatorConversão:</label>
            <input type="text" name="fatorConversao" id="nome" class="form-control" value="${obj.fatorConvercao}" required="true"/>                                   
        </div>
        <div class="form-group col-xs-4">
            <label for="qtdPontos" class="control-label col-xs-4">Quantida de Pontos:</label>
            <input type="text" name="qtdPontos" id="nome" class="form-control" value="${obj.qtdPontos}" required="true"/>                                   
        </div>        
        <div class="form-group col-xs-4">
            <label for="senha" class="control-label col-xs-4">Senha:</label>
            <input type="password" name="senha" id="senha" class="form-control" value="${obj.senha}" required="true"/>  
        </div>
        <div class="form-group col-xs-4">                             
            <label for="pessoa" class="control-label col-xs-4">Pessoa:</label>
            <select name="pessoa" class="form-control">
                <c:forEach var="pessoa" items="${listPessoa}">
                    <option value="${pessoa.id}" ${pessoa.id == obj.pessoa.id?"selected":""}>${pessoa}</option>
                </c:forEach>
            </select>
        </div>
        <br></br>
        <button type="submit" class="btn btn-primary  btn-md">Gravar</button> 
    </form>
</div>
<%@include file="../footer.jspf" %>