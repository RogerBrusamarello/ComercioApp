<%@page import="java.util.Date"%>
<%@page import="br.upf.ads.paw.entidades.CartaoFidelidade"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.jspf" %>
<div class="container">
    <form action="/cartaoFidelidade" method="post"  role="form" data-toggle="validator" >
        <div class="form-row align-items-center">
            <div class="col-auto">
                <c:if test ="${empty action}">                        	
                    <c:set var="action" value="add"/>
                </c:if>
                <input type="hidden" id="action" name="action" value="${action}">
                <input type="hidden" id="id" name="id" value="${obj.id}">
                <h2>Cartão Fidelidade</h2>
                <div class="form-group col-xs-8 rounded">
                    <label for="vencimento" class="control-label col-xs-4">Vencimento:</label>
                    <input type="text" name="vencimento" id="vencimento" class="form-control is-valid rounded" value="${obj.vencimento}" required="true"/>                                   
                </div>
                <div class="form-group col-xs-8 rounded">
                    <label for="limite" class="control-label col-xs-4">Limite:</label>
                    <input type="text" name="limite" id="limite" class="form-control is-valid rounded" value="${obj.limite}" required="true"/>                                   
                </div>
                <div class="form-group col-xs-8 rounded ">
                    <label for="fatorConversao" class="control-label col-xs-4">FatorConversão:</label>
                    <input type="text" name="fatorConversao" id="fatorConversao" class="form-control is-valid rounded" value="${obj.fatorConversao}" required="true"/>                                   
                </div>
                <div class="form-group col-xs-8 rounded">
                    <label for="qtdPontos" class="control-label col-xs-4">Quantidade de Pontos:</label>
                    <input type="text" name="qtdPontos" id="qtdPontos" class="form-control is-valid rounded" value="${obj.qtdPontos}" required="true"/>                                   
                </div>        
                <div class="form-group col-xs-8 rounded">
                    <label for="senha" class="control-label col-xs-4">Senha:</label>
                    <input type="password" name="senha" id="senha" class="form-control is-valid rounded" value="${obj.senha}" required="true"/>  
                </div>
                <div class="form-group col-xs-8 rounded">                             
                    <label for="cliente" class="control-label col-xs-4">Pessoa:</label>
                    <select name="cliente" class="custom-select md-12">
                        <c:forEach var="cliente" items="${listCliente}">
                            <option value="${cliente.id}" ${cliente.id == obj.cliente.id?"selected":""}>${cliente}</option>
                        </c:forEach>
                    </select>
                </div>
                <br></br>
                <button type="submit" class="btn btn-warning col-xs-12 btn-lg">Gravar</button> 
            </div>
        </div>
    </form>

</div>
<%@include file="../footer.jspf" %>