<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebAppAWIES.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        



				<div class="row">
                    <div class="col-md-4">
                        </div>
								<div class="col-md-4">
            <h3 class="mb-30">Registrar</h3>
                <div class="mt-10">
			        <input type="text" name="Codigo" placeholder="Codigo" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Codigo'"
				        required class="single-input-primary">
		        </div>
            <div class="mt-10">
            PRINCIPAL/SECCIONAL
                <div class="default-select" id="default-select">
			        <select>
                        <option value="1 ">Principal</option>
				        <option value="1 ">Seccional</option>
									
			        </select>
		        </div>
            </div>
            <div class="mt-10">
            SECTOR
                <div class="default-select" id="Sector">
                    <select>
	                    <option value="1 ">Privada</option>
	                    <option value="1 ">Publica</option>
                    </select>
                </div>
            </div>
            <div class="mt-10">
            ¿ACREDITADA DE ALTA CALIDAD?
                <div class="default-select" id="Acreditada">
                    <select>
	                    <option value="1 ">Si</option>
	                    <option value="1 ">No</option>
                    </select>
                </div>
            </div>
                
            <div class="mt-10">
            DEPARTAMENTO
                <div class="default-select" id="Departamento">
                    <select>
	                    <option value="1 ">Boyaca</option>
	                    <option value="1 ">Antioquia</option>
	                    <option value="1 ">Arabic</option>
	                    <option value="1 ">Portuguise</option>
	                    <option value="1 ">Bengali</option>
                    </select>
                </div>
            </div>
            <div class="mt-10">
            MUNICIPIO
                <div class="default-select" id="Municipio">
                    <select>
	                    <option value="1 ">Sogamoso</option>
	                    <option value="1 ">Duitama</option>
	                    <option value="1 ">Arabic</option>
	                    <option value="1 ">Portuguise</option>
	                    <option value="1 ">Bengali</option>
                    </select>
                </div>
            </div>
            <div class="mt-10">
            CARACTER ACADEMICO
                <div class="default-select" id="CaracterAcademico">
                    <select>
	                    <option value="1 ">Universidad</option>
	                    <option value="1 ">Institucion Tecnica Profecional</option>
	                    <option value="1 ">Institucion Tecnologica</option>
                    </select>
                </div>
            </div>
            <br />
            <a href="#" class="genric-btn success">Enviar Solicitud</a>
				
        </div>
            <div class="col-md-4">
            </div>
        </div>


</asp:Content>
