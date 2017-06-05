<cfoutput>
	<cfinclude template="inc/html_head.cfm" />
	<body id="#$.getTopID()#" class="#$.createCSSid($.content('menuTitle'))#">
        	<cfinclude template="inc/ga-ecomm-code.cfm" />
		<div class="#$.getMBContainerClass()#">
			<cfinclude template="inc/navbar.cfm" />
            
      		<div class="row-fluid">
<!-- /.span -->
				<section class="span9 content pull-right">
					<cfinclude template="inc/breadcrumb.cfm" />
                    <div class="row-fluid">
	<div class="span1">&nbsp;</div>

	<div class="span11">
					#$.dspBody(body=$.content('body'),pageTitle=$.content('title'),crumbList=0,showMetaImage=1)#
					#$.dspObjects(2)#
		                            	</div>
<!--
    <div class="span3"><div class="shareaholic-canvas" data-app="share_buttons" data-app-id="12837721" data-image="http://www.etr.org/root/assets/Image/etrLogo.png" style="margin-top:20px"></div>
-->
</div>
</section><!-- /.span -->
				<aside class="span3 sidebar noprint pull-left">
				    #$.dspObjects(1)#
				</aside>

			</div><!-- /.row -->
			<cfinclude template="inc/footer.cfm" />
		</div><!-- /.container -->
	<cfinclude template="inc/html_foot.cfm" />
</cfoutput>