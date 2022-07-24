<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui"%><%@
taglib
	uri="http://liferay.com/tld/portlet" prefix="liferay-portlet"%><%@
taglib
	uri="http://liferay.com/tld/theme" prefix="liferay-theme"%><%@
taglib
	uri="http://liferay.com/tld/ui" prefix="liferay-ui"%>

<liferay-theme:defineObjects />

<portlet:defineObjects />

<h1 class="text-center">VERIFICAR FACTURACION / RECLAMO POR CONSUMO PROMEDIO</h1>
<hr />

<portlet:actionURL name='recCobroPromedio' var='recCobroPromedioURL' />

<%-- <div class="alert alert-warning alert-dismissable" style="color:#555">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<liferay-ui:message key="label-alerta"></liferay-ui:message>
</div> --%>

<aui:form method="post" name="${ recCobroPromedio }"
	action="${ recCobroPromedioURL }">
	<aui:row>
		<aui:col span="6">
			<aui:input type="number" id='numContrato' name='numContrato'
				label="Número de contrato" required="true" />
		</aui:col>
		<aui:col span="6">
			<aui:select name="tipoTramite" id="tipoTramite"
				label="Tipo de tramite" required="true">
				<aui:option selected="true"  value="consumo_promedio">RECLAMO POR CONSUMO PROMEDIO</aui:option>
			</aui:select>
		</aui:col>
	</aui:row>
	<aui:row>
		<aui:col span="6">
			<aui:input type="text" id="nomSolicitante" name='nomSolicitante'
				label="Nombre del solicitante" required="true" />
		</aui:col>
		<aui:col span="6">
			<aui:input type="text" id='apllSolicitante' name='apllSolicitante'
				label="Apellidos del solicitante" required="true" />
		</aui:col>
	</aui:row>
	<aui:row>
		<aui:col span="6">
			<aui:input type="email" id='correo' name='correo'
				label="Correo Electrónico" required="true" />
		</aui:col>
		<aui:col span="6">
			<label class="aui-field-label">Servicio del reclamo <span
				style="color: #B95000;">*</span>
			</label>

				<aui:input id="energia" name="serviReclamo" type="radio" value="energia"
				label="ENERGIA" checked="true"/>
			<aui:input id="acueductoAlcantarillado" name="serviReclamo"
				type="radio" value="acueductoAlcantarillado" label="ACUEDUCTO / ALCANTARILLADO"/>
		</aui:col>
	</aui:row>
	<aui:row>
		<aui:col span="6">
			<aui:input type="number" id='telefono' name='telefono'
				label="Número telefonico" required="true" />
		</aui:col>
	</aui:row>

	<aui:row>
		<aui:col span='3' cssClass="offset-3">
			<aui:button type="submit" cssClass="btn-danger btn-block"
				value="ENVIAR SOLICITUD" />
		</aui:col>
		<aui:col span='3'>
			<a href='<portlet:renderURL/>' class="btn btn-secondary btn-block">
				Cancerlar</a>
		</aui:col>
	</aui:row>
</aui:form>
