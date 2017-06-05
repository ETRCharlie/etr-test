<cfoutput>
	<cfinclude template="inc/html_head.cfm" />
	<body id="#$.getTopID()#" class="#$.createCSSid($.content('menuTitle'))#">
        	<cfinclude template="inc/ga-ecomm-code.cfm" />
		<div class="#$.getMBContainerClass()#">
			<cfinclude template="inc/navbar.cfm" />
      		<div class="row-fluid">
				<aside class="span3 sidebar noprint">
				    #$.dspObjects(1)#
				</aside><!-- /.span -->
				<section class="span9 content">
					<cfinclude template="inc/breadcrumb.cfm" />
					#$.dspBody(body=$.content('body'),pageTitle=$.content('title'),crumbList=0,showMetaImage=1)#
					#$.dspObjects(2)#
                    <hr>
				<h4>To learn  more about ETR or the topic of this article:</h4>
                <p>Contact <a href="mailto:mattm@etr.org">Matt McDowell</a>, Director of Marketing.</p>
                    
		        </section><!-- /.span -->
			</div><!-- /.row -->
			<cfinclude template="inc/footer.cfm" />
		</div><!-- /.container -->
	<cfinclude template="inc/html_foot.cfm" />
</cfoutput>