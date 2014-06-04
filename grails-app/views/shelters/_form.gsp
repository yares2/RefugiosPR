<%@ page import="refugiospr.Shelters" %>



<div class="fieldcontain ${hasErrors(bean: sheltersInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="shelters.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${sheltersInstance?.name}"/>

</div>

