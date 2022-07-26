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

<h1 class="text-center">
	SOLICITUD DE SERVICIOS EMCALI
	<h1>
		<hr />

		<portlet:actionURL name='solicitudServicios'
			var='solicitudServiciosURL' />


		<aui:form method="post" name="${ solicitudServicios }"
			action="${ solicitudServiciosURL }">
			<aui:row>
				<aui:col span="6">
					<aui:input type="number" id='numContrato' name='numContrato'
						label="N�mero de contrato" required="true" />
					<aui:input type="text" id="nomSolicitante" name='nomSolicitante'
						label="Nombre del solicitante" required="true" />
				</aui:col>
				<aui:col span="6">
					<label class="aui-field-label">Servicio del reclamo <span
						style="color: #B95000;">*</span>
					</label>

					<aui:input id="energia" name="serviReclamo" type="radio"
						value="energia" label="ENERGIA" checked="true"
						onclick="activeTab();" />
					<aui:input id="acueductoAlcantarillado" name="serviReclamo"
						type="radio" value="acueductoAlcantarillado"
						label="ACUEDUCTO / ALCANTARILLADO" onclick="activeTab();" />
					<aui:input id="telecomunicaciones" name="serviReclamo" type="radio"
						value="telecomunicaciones" label="TELECOMUNICACIONES"
						onclick="activeTab();" />
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col span="6">
					<aui:input type="text" id='apllSolicitante' name='apllSolicitante'
						label="Apellidos del solicitante" required="true" />
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col span="6">
					<aui:input type="email" id='correo' name='correo'
						label="Correo Electr�nico" required="true" />
				</aui:col>
			</aui:row>
			<aui:row>
				<aui:col span="6">
					<aui:input type="number" id='telefono' name='telefono'
						label="N�mero telefonico" required="true" />
				</aui:col>
			</aui:row>


			<aui:row>
				<aui:col span="12">
					<liferay-ui:tabs
						names="Anexos energia,Anexos acueducto / Alcantarillado,Anexos telecomunicaciones"
						refresh="false"
						tabsValues="Anexos energia,Anexos acueducto / Alcantarillado,Anexos telecomunicaciones"
						cssClass="PruebaTabs">

					</liferay-ui:tabs>

					<div id="panel1" class="show container">
						<div class="panel panel-default">
							<div class="panel-body">
								<aui:row>
									<aui:col span="8">
										<label class="aui-field-label">Documentos requeridos </label>
										<aui:row>
											<aui:col span="6">
												<label class="aui-field-label">Recibo de Servicios
													del predio </label>
												<input type="file" name="1_reciboServicio"
													id="1_reciboServicio" class="inputfile inputfile-7" />
												<label for="1_reciboServicio"> <span
													class="iborrainputfile"></span> <strong> <svg
															xmlns="http://www.w3.org/2000/svg"
															class="iborrainputfile" width="20" height="17"
															viewBox="0 0 20 17">
												<path
																d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg>

												</strong>
												</label>
											</aui:col>
											<aui:col span="6">
												<label class="aui-field-label">C�dula de ciudadania
												</label>
												<input type="file" name="1_cedula" id="1_cedula"
													class="inputfile inputfile-7" />
												<label for="1_cedula"> <span class="iborrainputfile"></span>
													<strong> <svg xmlns="http://www.w3.org/2000/svg"
															class="iborrainputfile" width="20" height="17"
															viewBox="0 0 20 17">
												<path
																d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg>

												</strong>
												</label>
											</aui:col>
										</aui:row>
									</aui:col>
								</aui:row>
								<aui:row>
									<aui:col span="12">
										<aui:input label="Observaciones" name="1_observaciones"
											id="1_observaciones" type="textarea" />
									</aui:col>
								</aui:row>

							</div>
						</div>
					</div>
					<div id="panel2" class="hide container">
						<div class="panel panel-default">
							<div class="panel-body">
								<aui:row>
									<aui:col span="8">
										<label class="aui-field-label">Documentos requeridos </label>
										<aui:row>
											<aui:col span="6">
												<label class="aui-field-label">Recibo de Servicios
													del predio </label>
												<input type="file" name="2_reciboServicio"
													id="2_reciboServicio" class="inputfile inputfile-7" />
												<label for="2_reciboServicio"> <span
													class="iborrainputfile"></span> <strong> <svg
															xmlns="http://www.w3.org/2000/svg"
															class="iborrainputfile" width="20" height="17"
															viewBox="0 0 20 17">
												<path
																d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg>

												</strong>
												</label>
											</aui:col>
											<aui:col span="6">
												<label class="aui-field-label">C�dula de ciudadania
												</label>
												<input type="file" name="2_cedula" id="2_cedula"
													class="inputfile inputfile-7" />
												<label for="2_cedula"> <span class="iborrainputfile"></span>
													<strong> <svg xmlns="http://www.w3.org/2000/svg"
															class="iborrainputfile" width="20" height="17"
															viewBox="0 0 20 17">
												<path
																d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg>

												</strong>
												</label>
											</aui:col>
										</aui:row>
									</aui:col>
								</aui:row>
								<aui:row>
									<aui:col span="12">
										<aui:input label="Observaciones" name="2_observaciones"
											id="2_observaciones" type="textarea" />
									</aui:col>
								</aui:row>
							</div>
						</div>
					</div>
					<div id="panel3" class="hide container">
						<div class="panel panel-default">
							<div class="panel-body">
								<aui:row>
									<aui:col span="4">
										<label class="aui-field-label mb-4">Solicitud<span
											style="color: #B95000;">*</span>
										</label>
										<aui:input id="lineaBasica" name="lineaBasica" type="checkbox"
											value="Linea basica" label="L�nea b�sica" />

										<aui:input id="internerAdsl" name="internerAdsl"
											type="checkbox" value="Internet ADSL" label="Internet ADSL" />

										<aui:input id="television" name="television" type="checkbox"
											value="Televisi�n" label="Televisi�n" />

										<aui:input id="traslado" name="traslado" type="checkbox"
											value="Traslado" label="Traslado" />

										<aui:input id="aumentoVelocidad" name="aumentoVelocidad"
											type="checkbox" value="Aumento de velocidad"
											label="Aumento de velocidad" />

										<aui:input id="cambioPlan" name="cambioPlan" type="checkbox"
											value="Cambiod de Plan" label="Cambiod de Plan" />

										<aui:input id="cambioNumero" name="cambioNumero"
											type="checkbox" value="Cambio de n�mero"
											label="Cambio de n�mero" />

									</aui:col>

									<aui:col span="8">
										<label class="aui-field-label">Documentos requeridos </label>
										<aui:row>
											<aui:col span="6">
												<label class="aui-field-label">Recibo de Servicios
													del predio </label>
												<input type="file" name="3_reciboServicio"
													id="3_reciboServicio" class="inputfile inputfile-7" />
												<label for="3_reciboServicio"> <span
													class="iborrainputfile"></span> <strong> <svg
															xmlns="http://www.w3.org/2000/svg"
															class="iborrainputfile" width="20" height="17"
															viewBox="0 0 20 17">
												<path
																d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg>

												</strong>
												</label>
											</aui:col>
											<aui:col span="6">
												<label class="aui-field-label">C�dula de ciudadania
												</label>
												<input type="file" name="3_cedula" id="3_cedula"
													class="inputfile inputfile-7" />
												<label for="3_cedula"> <span class="iborrainputfile"></span>
													<strong> <svg xmlns="http://www.w3.org/2000/svg"
															class="iborrainputfile" width="20" height="17"
															viewBox="0 0 20 17">
												<path
																d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"></path></svg>

												</strong>
												</label>
											</aui:col>
										</aui:row>
									</aui:col>
								</aui:row>
								<aui:row>
									<aui:col span="12">
										<aui:input label="Observaciones" name="3_observaciones"
											id="3_observaciones" type="textarea" />
									</aui:col>
								</aui:row>
							</div>
						</div>
					</div>
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


		<aui:script>

function activeTab(){
    AUI().use('aui-base','aui-io-request', function(A){       
        var chexB1= $("#<portlet:namespace />energia")[0].checked;
        var chexB2= $("#<portlet:namespace />acueductoAlcantarillado")[0].checked;
        var chexB3= $("#<portlet:namespace />telecomunicaciones")[0].checked;

      $( ".PruebaTabs li" ).each(function( index, element ) {
       var status = false
       
	      switch (true) {
	      	case index == 0 && chexB1 && !status:
	      	 	$( this ).children().addClass("active");
	      	 	status = true;
	      	case index == 1 && chexB2 && !status:
	      		$( this ).children().addClass("active");
	      		status = true;
	      	case index == 2 && chexB3 && !status:
	      		$( this ).children().addClass("active");
	      		status = true;
	      }	  
	      
	      if(!status){
	      	$( this ).children().removeClass("active");
	      }
	      			  		
		});
			
		 if(chexB1){
			$("#panel1").addClass("show");
			$("#panel1").removeClass("hide");

			$("#panel2").removeClass("show");
			$("#panel2").addClass("hide");
						
			$("#panel3").removeClass("show");
			$("#panel3").addClass("hide");
		  }
		  
		  if(chexB2){
			$("#panel2").addClass("show");
			$("#panel2").removeClass("hide");

			$("#panel1").removeClass("show");
			$("#panel1").addClass("hide");
						
			$("#panel3").removeClass("show");
			$("#panel3").addClass("hide");
		  }
		  
		  if(chexB3){
			$("#panel3").addClass("show");
			$("#panel3").removeClass("hide");

			$("#panel2").removeClass("show");
			$("#panel2").addClass("hide");
						
			$("#panel1").removeClass("show");
			$("#panel1").addClass("hide");
		  }
        
    });
}

;( function ( document, window, index )
{
	var inputs = document.querySelectorAll( '.inputfile' );
	Array.prototype.forEach.call( inputs, function( input )
	{
		var label	 = input.nextElementSibling,
			labelVal = label.innerHTML;

		input.addEventListener( 'change', function( e )
		{
			var fileName = '';
			if( this.files && this.files.length > 1 )
				fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
			else
				fileName = e.target.value.split( '\\' ).pop();

			if( fileName )
				label.querySelector( 'span' ).innerHTML = fileName;
			else
				label.innerHTML = labelVal;
		});
	});
}( document, window, 0 ));
</aui:script>