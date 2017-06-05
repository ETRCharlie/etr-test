<cfoutput>
		<!--- Twitter Bootstrap JS --->
		<script src="#$.siteConfig('themeAssetPath')#/assets/bootstrap/js/bootstrap.min.js"></script>

		<!--- CfStatic JS --->
		<cf_CacheOMatic key="globalfooterjs">
			#$.static().include('/js/theme/').renderIncludes('js')#
		</cf_CacheOMatic>
</cfoutput>

<script type='text/javascript'>
if (typeof jQuery != 'undefined') {
	var filetypes = /\.(zip|exe|dmg|pdf|doc.*|xls.*|ppt.*|mp3|txt|rar|wma|mov|avi|wmv|flv|wav)$/i;
	var baseHref = '';
	if (jQuery('base').attr('href') != undefined) baseHref = jQuery('base').attr('href');
	var hrefRedirect = '';

	jQuery('body').on('click', 'a', function(event) {
		var el = jQuery(this);
		var track = true;
		var href = (typeof(el.attr('href')) != 'undefined' ) ? el.attr('href') : '';
		var isThisDomain = href.match(document.domain.split('.').reverse()[1] + '.' + document.domain.split('.').reverse()[0]);
		if (!href.match(/^javascript:/i)) {
			var elEv = []; elEv.value=0, elEv.non_i=false;
			if (href.match(/^mailto\:/i)) {
				elEv.category = 'email';
				elEv.action = 'click';
				elEv.label = href.replace(/^mailto\:/i, '');
				elEv.loc = href;
			}
			else if (href.match(filetypes)) {
				var extension = (/[.]/.exec(href)) ? /[^.]+$/.exec(href) : undefined;
				elEv.category = 'download';
				elEv.action = 'click-' + extension[0];
				elEv.label = href.replace(/ /g,'-');
				elEv.loc = baseHref + href;
			}
			else if (href.match(/^https?\:/i) && !isThisDomain) {
				elEv.category = 'external';
				elEv.action = 'click';
				elEv.label = href.replace(/^https?\:\/\//i, '');
				elEv.non_i = true;
				elEv.loc = href;
			}
			else if (href.match(/^tel\:/i)) {
				elEv.category = 'telephone';
				elEv.action = 'click';
				elEv.label = href.replace(/^tel\:/i, '');
				elEv.loc = href;
			}
			else track = false;

			if (track) {
				var ret = true;

				if((elEv.category == 'external' || elEv.category == 'download') && (el.attr('target') == undefined || el.attr('target').toLowerCase() != '_blank') ) {
					hrefRedirect = elEv.loc;

					ga('send','event', elEv.category.toLowerCase(),elEv.action.toLowerCase(),elEv.label.toLowerCase(),elEv.value,{
						'nonInteraction': elEv.non_i ,
						'hitCallback':gaHitCallbackHandler
					});

					ret = false;
				}
				else {
					ga('send','event', elEv.category.toLowerCase(),elEv.action.toLowerCase(),elEv.label.toLowerCase(),elEv.value,{
						'nonInteraction': elEv.non_i
					});
				}

				return ret;
			}
		}
	});

	gaHitCallbackHandler = function() {
		window.location.href = hrefRedirect;
	}
}
</script>

<!-- OLD ANALYTICS CODE 
 start tracking of pdfs as part of events in google analytics
<script>
    $("a[href$='pdf']").each(function(index) {
      fileLabel = $(this).attr('href');
      pdfOnClick = "_gaq.push(['_trackEvent', 'Downloads', 'PDF', '" + pdfLabel + "']);";
      $(this).attr("onClick", pdfOnClick);
    });
</script>
 end pdf tracking script --> 


<!-- start tracking of Word as part of events in google analytics
<script>
    $("a[href$='doc']").each(function(index) {
      docLabel = $(this).attr('href');
      docOnClick = "_gaq.push(['_trackEvent', 'Downloads', 'WORD', '" + docLabel + "']);";
      $(this).attr("onClick", docOnClick);
    });
</script>
<script>
    $("a[href$='docx']").each(function(index) {
      docxLabel = $(this).attr('href');
      docxOnClick = "_gaq.push(['_trackEvent', 'Downloads', 'WORD', '" + docxLabel + "']);";
      $(this).attr("onClick", docxOnClick);
    });
</script>
 end word tracking script -->

<!-- start tracking of powerpoint as part of events in google analytics
<script>
    $("a[href$='ppt']").each(function(index) {
      pptLabel = $(this).attr('href');
      pptOnClick = "_gaq.push(['_trackEvent', 'Downloads', 'POWERPOINT', '" + pptLabel + "']);";
      $(this).attr("onClick", pptOnClick);
    });
</script>
<script>
    $("a[href$='pptx']").each(function(index) {
      pptxLabel = $(this).attr('href');
      pptxOnClick = "_gaq.push(['_trackEvent', 'Downloads', 'POWERPOINT', '" + pptxLabel + "']);";
      $(this).attr("onClick", pptxOnClick);
    });
</script>
 end powerpoint tracking script -->

<!-- Start of Async HubSpot Analytics Code 
    <script type="text/javascript">
        (function(d,s,i,r) {
            if (d.getElementById(i)){return;}
            var n=d.createElement(s),e=d.getElementsByTagName(s)[0];
            n.id=i;n.src='//js.hubspot.com/analytics/'+(Math.ceil(new Date()/r)*r)+'/270851.js';
            e.parentNode.insertBefore(n, e);
        })(document,"script","hs-analytics",300000);
    </script>
End of Async HubSpot Analytics Code -->

<!-- PARDOT WEB ANALYTICS CODE -->
<script type="text/javascript">
piAId = '49112';
piCId = '1714';

(function() {
	function async_load(){
		var s = document.createElement('script'); s.type = 'text/javascript';
		s.src = ('https:' == document.location.protocol ? 'https://pi' : 'http://cdn') + '.pardot.com/pd.js';
		var c = document.getElementsByTagName('script')[0]; c.parentNode.insertBefore(s, c);
	}
	if(window.attachEvent) { window.attachEvent('onload', async_load); }
	else { window.addEventListener('load', async_load, false); }
})();
</script>

<!-- END PARDOT WEB ANALYTICS CODE -->


	</body>
    
</html>
