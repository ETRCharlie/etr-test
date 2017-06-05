
<!DOCTYPE html>
<html lang="en"<cfif $.hasFETools()> class="mura-edit-mode"</cfif>>
<head>
<cfoutput>
	<!--- GOOGLE FONTS CSS FILE
	=======================================<br>
	per https://developers.google.com/fonts/docs/technical_considerations needs to be first element in header --->
	<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700|Merriweather+Sans:400,700|Roboto:400,700|Euphoria+Script' rel='stylesheet' type='text/css'>




	<!--- META
	================================================== --->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>#HTMLEditFormat($.content('HTMLTitle'))# - #HTMLEditFormat($.siteConfig('site'))#</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="#HTMLEditFormat($.content('metaDesc'))#">
	<meta name="keywords" content="#HTMLEditFormat($.content('metaKeywords'))#">
	<cfif len($.content('credits'))><meta name="author" content="#HTMLEditFormat($.content('credits'))#" /></cfif>
	<meta name="generator" content="Mura CMS #$.globalConfig('version')#" />
    
    <!--- jQuery
	================================================== --->
	<script src="#$.siteConfig('assetPath')#/jquery/jquery.js"></script>
    
    <!--- JQUERY PLUGINS
	================================================= --->
	<!--- kj added for tool tips --->
    <script src="#$.siteConfig('themeAssetPath')#/assets/bootstrap/js/jquery.tipTip.minified.js"></script>
    <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/bootstrap/css/tipTip.css" type="text/css" />
    
    <!--- kj added for bx slider http://bxslider.com/ --->
	<script src="#$.siteConfig('themeAssetPath')#/assets/bootstrap/js/jquery.bxslider.min.js"></script>
	<link href="#$.siteConfig('themeAssetPath')#/assets/bootstrap/css/jquery.bxslider.css" rel="stylesheet" />



	<!--- CSS
	================================================== --->
    <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/bootstrap/css/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/font-awesome/css/font-awesome.css" type="text/css" />
	<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.6.0.min.css" type="text/css" />
    <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/bootstrap/css/etr.css" type="text/css" />
    



	<!--- CfStatic CSS --->
	<cf_CacheOMatic key="globalheadercss">
		#$.static()
			.include('/css/theme/')
			.renderIncludes('css')#
	</cf_CacheOMatic>


	
    
	
	<!--- IE SHIM - for IE6-8 support of HTML5 elements
	================================================== --->
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!--- FAV AND TOUCH ICONS
	================================================== --->
	<link rel="shortcut icon" href="#$.siteConfig('AssetPath')#/images/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="#$.siteConfig('AssetPath')#/images/favicon.ico" type="image/x-icon" />
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="#$.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="#$.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="#$.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="#$.siteConfig('themeAssetPath')#/images/ico/ico/apple-touch-icon-57-precomposed.png">

	<!--- MURA FEEDS
	================================================== --->
	<cfset rs=$.getBean('feedManager').getFeeds($.event('siteID'),'Local',true,true) />
	<cfloop query="rs"><link rel="alternate" type="application/rss+xml" title="#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat(rs.name)#" href="#XMLFormat('http://#listFirst(cgi.http_host,":")##$.globalConfig('context')#/tasks/feed/?feedID=#rs.feedID#')#"></cfloop>
   
    <!--- KJ 4/4/13 - INITIALIZING TIPTIP TOOLTIPS 
	=================================================  --->
    
    <script type="text/javascript">
   	$(function(){
		$(".toolTip").tipTip({maxWidth: "auto", edgeOffset: 10});
	});
	</script>

	
    <!--- KJ 6/12/13 REPOSNSIVE IFRAME
	=================================================  --->
 <script>   
 
	function adjustIframes()
	{
	$('iframe').each(function(){
	var
	$this = $(this),
	proportion = $this.data( 'proportion' ),
	w = $this.attr('width'),
	actual_w = $this.width();
	if ( ! proportion )
	{
	proportion = $this.attr('height') / w;
	$this.data( 'proportion', proportion );
	}
	if ( actual_w != w )
	{
	$this.css( 'height', Math.round( actual_w * proportion ) + 'px' );
	}
	});
	}
	$(window).on('resize load',adjustIframes);
    </script>


    <!--- CK 11/24/14 SHAREAHOLIC SHARE BUTTONS
	========================================= 
	 --->
<script type="text/javascript">
//<![CDATA[
  (function() {
    var shr = document.createElement('script');
    shr.setAttribute('data-cfasync', 'false');
    shr.src = '//dsms0mj1bbhn4.cloudfront.net/assets/pub/shareaholic.js';
    shr.type = 'text/javascript'; shr.async = 'true';
    shr.onload = shr.onreadystatechange = function() {
      var rs = this.readyState;
      if (rs && rs != 'complete' && rs != 'loaded') return;
      var site_id = '1afad0201d3c50942c191314c1afa82d';
      try { Shareaholic.init(site_id); } catch (e) {}
    };
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(shr, s);
  })();
//]]>
</script>

    <!--- CK 02/25/15 Google Search Profile Social Buttons
	========================================= 
	 --->
<script type="application/ld+json">
{ "@context" : "http://schema.org",
  "@type" : "Organization",
  "name" : "ETR",
  "url" : "http://www.etr.org",
  "sameAs" : [ "https://www.facebook.com/ETRAssociates",
    "http://twitter.com/etrassociates",
    "http://www.linkedin.com/company/etr-associates",
	"http://www.youtube.com/user/ETRPubs?feature=watch"] 
}
</script>


    <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/bootstrap/css/etr.css" type="text/css" />

</cfoutput>    
</head>






