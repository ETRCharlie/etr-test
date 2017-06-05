<cfoutput>

<p align="center" style="padding-top: 20px;"><a href="http://www.youtube.com/user/ETRPubs?feature=watch" target="_blank"><img alt="YouTube" src="/root/assets/Image/footer-socialMedia_youTube.png" style="width: 68px; height: 55px;" /></a><a href="https://www.facebook.com/ETRAssociates" target="_blank"><img alt="Facebook" src="/root/assets/Image/footer-socialMedia_facebook.png" style="width: 64px; height: 55px;" /></a><a href="http://twitter.com/etrassociates" target="_blank"><img alt="Twitter" src="/root/assets/Image/footer-socialMedia_twitter.png" style="width: 56px; height: 55px;" /></a><a href="http://www.linkedin.com/company/etr-associates" target="_blank"><img alt="LinkedIn" src="/root/assets/Image/footer-socialMedia_linkedIn.png" style="width: 66px; height: 55px;" /></a></p>


  <footer class="noprint">
    <div class="row-fluid">
      <div class="span2">
          <a href="http://www.etr.org"><img src="/root/assets/Image/etrLogo.png" style="width: 90%; max-width: 135px; height: auto; padding-top: 40px;" alt="ETR: Advancing Science - Reducing Risk - Improving Lives" /></a>
        </div>

        <div class="span2" style="margin-top: 40px;">100 Enterprise Way,<br>Suite G300<br />Scotts Valley, CA 95066<br /><i class="icon-globe"></i> <a href="http://www.etr.org">www.etr.org</a><br /><i class="icon-envelope"></i> <a href="mailto:customerservice@etr.org">Email Support</a><br /><i class="icon-twitter-sign"></i> <a href="https://twitter.com/ETRASSOCIATES" target="_blank">@ETRAssociates</a><br /><i class="icon-facebook-sign"></i> <a href="https://www.facebook.com/ETRassociates" target="_blank">Like Us</a></p>
        <p>&copy; ETR #year(now())#</p>
      </div>
            
      <div class="span3">
        <h3>TOPICS</h3>
        <ul>
          <li><a href="/areas-of-focus/sexual-and-reproductive-health/">HIV, Sexual &amp; Reproductive Health</a></li>
          <li><a href="/areas-of-focus/it-diversity/">Equity &amp; Inclusion in STEM</a></li>
          <li><a href="/areas-of-focus/school-based-health-wellness/">School-Based Health &amp; Wellness</a></li>
          <li><a href="/areas-of-focus/substance-use-addiction/">Alcohol, Tobacco & Other Drugs</a></li>
        </ul>

        <h3>SERVICES</h3>
        <ul>
          <li><a href="/solutions/professional-development/">Professional Development &amp; Training</a></li>
          <li><a href="/solutions/product-development-dissemination/">Product Development &amp; Dissemination</a></li>
          <li><a href="/solutions/research/">Research</a></li>
          <li><a href="/solutions/evaluation/">Evaluation</a></li>
        </ul>
      </div>

      <div class="span3">

        <h3>ABOUT US</h3>
        <ul>
          <li><a href="/about-us/our-staff/">Our Staff</a></li>
          <li><a href="/about-us/##boardofdirectors">Board of Directors</a></li>
          <li><a href="/about-us/our-projects/">Our Projects</a></li>
          <li><a href="/about-us/clients-funders/">Selected Clients, Funders and Partners</a></li>
          <li><a href="/about-us/working-with-us/">Contract with Us</a></li>
          <li><a href="/about-us/careers/">Careers</a></li>
          <li><a href="/blog/">Blog</a></li>
          <li><a href="/videos/">Videos</a></li>
          <li><a href="/about-us/contact/">Contact Us</a></li>
          <li><a href="/kirby-summit/">Dr. Doug Kirby's Legacy</a></li>
        </ul>

      </div>
                     
      <div class="span2"> 

        <a href="/store"><h3>STORE</h3></a>
        <p>&nbsp;</p>

        <h3>Other Resources</h3>
        <ul>
          <li><a href="/privacy-policy/">Privacy Policy</a></li>
          <li><a href="/terms-of-use/">Terms of Use</a></li>
          <li><a href="/permissions-request-form/">Permissions Request Form</a></li>
        </ul>

      </div>
    </div>
          
    <p align="right">
    <cfif $.currentUser().isLoggedIn()><a href="?doaction=logout">Logout</a><cfelse><a href="/admin">Login</a></cfif> | <a href="##">Back to top</a></p>
			
  </footer>
  <!---#$.dspThemeInclude('display_objects/sampleModalWindow.cfm')# --->
</cfoutput>