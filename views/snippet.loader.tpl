<div id="page-wrapper">
	{{if {page.path_part} == 'zesty_home'}}
	{{current_view}}
	{{else}}
	<div id="header-wrapper">
		<div class="container">
			{{include header}}
		</div>
	</div>
	{{current_view}}
	{{end-if}}
	{{include footer}}
</div>