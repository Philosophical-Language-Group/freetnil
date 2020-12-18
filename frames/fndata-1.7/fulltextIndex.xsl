<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fn="http://framenet.icsi.berkeley.edu">
<xsl:output method="html" />
<!-- This XSL file transforms fulltextIndex XML into a page
     listing Corpora, which expand to list their Documents. The
     expanding links are handled by Javascript.
     First the XSL transforms the body then some Javascript
     is executed onload. -->
<xsl:template match="/fn:fulltextIndex">
<html>
	<head>
		<title>Full Text Index</title>
		<style>
			.mC {margin:5px; float:left;}
			.mH {color:blue; cursor:pointer; font-weight:bold;}
			.mL {display:none; margin-bottom:10px; font-weight:bold;}
            .mLPlain {display:none; margin-bottom:10px;}
			.mO {margin-left:10px; display:block;}
            .Link {color:blue; text-decoration: underline;}
		</style>
		<script type="text/javascript">
		//<![CDATA[
        // Javascript must go in CDATA blocks to get it
        // through the XSL processor

        // called when a user clicks a Corpus name
		function toggleMenu(objID) {
			if (!document.getElementById) return;
			var ob = document.getElementById(objID).style;
            // display or hide the div containing Documents under the clicked Corpus
			ob.display = (ob.display == 'block') ? 'none' : 'block';
		}

        // PRIMARY ENTRY POINT
        var currentXMLFile = getURLFileName();
        var banner = gup('banner');

        window.onload = escapeURLs;
        // called onload to escape links to Documents with
        // characters that must be escaped like '%'
        function escapeURLs() {
            // get all Document links
            var docLinks = document.getElementsByTagName('a');
            for (var i = 0; i < docLinks.length; i++) {
                if (docLinks[i].className == 'mO') { // make sure its a link for a document
                    var curHref = docLinks[i].href;
                    var fulltextI = curHref.indexOf('fulltext/');
                    // escape characters in the Document's name
                    docLinks[i].href = curHref.substring(0, fulltextI) + escape(curHref.substring(fulltextI));
                }
            }

            // if a banner was specified, display it
            if (banner) {
                // create an iFrame and load the banner in it
                var loc = window.location;
                var domain = loc.protocol + "//" + loc.host + "/";
               // document.write(domain);
                var banFrame = document.getElementById('banner');
                banFrame.setAttribute("src",  domain + unescape(banner));
                banFrame.style.width = '100%';
                banFrame.scrolling = 'no';
                banFrame.style.display = 'block';
                banFrame.style.border = 0;

                // add the banner paramater to the Document links
                for (var i = 0; i < docLinks.length; i++)
                    docLinks[i].href += "?banner=" + banner;
            }
        }

        // extract XML file name from URL
        function getURLFileName() {
           var wholeurl = window.location.href;
           var result = wholeurl.replace(/[?].*$/,"");
           return result;
        }

        // get the value of a paramater passed in through the url
        // like in 'fulltextIndex.xml?banner='
        function gup(name) {
            name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
            var regexS = "[\\?&]"+name+"=([^&#]*)";
            var regex = new RegExp( regexS );
            var results = regex.exec( window.location.href );
            if( results == null )
                return "";
            else
                return results[1];
        }
		//]]>
		</script>
	</head>
	<body>
        <iframe id='banner' style='display:none;'></iframe>
        <h1>Full Text Index</h1>
        <p>In addition to our lexicographic work, FrameNet has also annotated
            some continuous texts, mainly as a demonstration of how frame
            semantics can contribute to text understanding.  They are listed here,
            grouped into somewhat arbitrary "corpora".</p>
        <p>The first six texts, on a wide variety of topics, were provided
            courtesy of the PropBank project, now at U Colorado
            (<a href="http://verbs.colorado.edu/~mpalmer/projects/ace.html">http://verbs.colorado.edu/~mpalmer/projects/ace.html</a>),
            as part of an effort to evaluate the relation between PropBank annotation and
            FrameNet annotation. Only the Aetna Life text resembles traditional financial news.</p>
        <p>Later, we annotated some texts from the Advanced Question &amp; Answering
            for Intelligence project (AQUAINT,
            <a href="http://www-nlpir.nist.gov/projects/aquaint">http://www-nlpir.nist.gov/projects/aquaint</a>).
            These texts, dealing with the weapons programs of many nations around the world,
            were produced for the Nuclear Threat Initiative (<a href="http://www.nti.org">http://www.nti.org</a>)
            by the Center for Nonproliferation Studies at the Monterey Institute of
            International Studies (<a href="http://cns.miis.edu">http://cns.miis.edu</a>).
            There are several other related texts, one of "Iran-related Questions" and several sets of
            statements and questions in the RTE style
            (cf. <a href="http://www.nist.gov/tac/2010/RTE">http://www.nist.gov/tac/2010/RTE</a>) contributed
            by different participants in the Knowledge-Based Evaluation that was part of AQUAINT.</p>
       <p>More recently, we have been annotating full texts from the American
            National Corpus MASC project (<a href="http://www.anc.org/MASC/Home.html">http://www.anc.org/MASC/Home.html</a>). All
            of these texts are freely available and have been annotated in a
            variety of styles by other groups.  We have also annotated most of the
            so-called "LUcorpus", a collection of extremely varied documents,
            including transcripts of phone conversations, e-mails, translations
            from the Arabic, and newswire.  Finally, we have included in a
            "miscellaneous corpus" several articles which we have annotated for
            conferences on semantic annotation.</p>
       <p>For an explanation of the typographic conventions used in displaying
            these texts, please click "How to read FrameNet continuous text
            annotation" below:</p>
        <div class="mH" onclick="toggleMenu('howto')">+ How to read FrameNet continuous text annotation</div>
        <div id='howto' class='mLPlain'>
            <p>Continuous text annotation looks like this:<br /></p>
            <p><i>This</i>&#160;<font class='Link'>PLANT</font><sub>Locale_by_use</sub><i> </i>&#160;
            <font class='Link'>PROBABLY</font><sub>Likelihood</sub>&#160;<i>was</i>&#160;
            <font class='Link'>DESIGNED</font><sub>Invention</sub>&#160;<i>to</i>&#160;
            <font class='Link'>REPLACE</font><sub>Take_place_of</sub>&#160;aging&#160;
            <font class='Link'>PLANTS</font><sub>Locale_by_use</sub>&#160;
            <font class='Link'>IN</font><sub>Locative_relation</sub>&#160;
            <i style="color: #000000;background-color: #FFFF00;">Volgograd</i>&#160;
            <i>and</i>&#160;<i style="color: #000000;background-color: #FFFF00;">Novocheboksarsk</i>&#160;
            <i>(</i>&#160;<i style="color: #000000;background-color: #FFFF00;">Russia</i>&#160;<i>)</i>&#160;
            <i>for the</i>&#160;<font class='Link'>PRODUCTION</font><sub>Manufacturing</sub>&#160;
            <i>of the</i>&#160;binary&#160;agent&#160;''&#160;
            <font style="color: #000000;background-color: #FFFF00;">novichok</font>&#160;.''</p>
            <ul>
                <li>Words highlighted in yellow represent things that a named
                    entity recognition system should be able to label.</li>
                <li>Words in italics are those which we would not expect to annotate
                    as lexical units, because they do not (in general) evoke frames in
                    and of themselves (examples: "the", "very") or are ordinary nouns
                    (for example) that do not evoke any interesting frame and thus would not
                    be annotated as lexical units in the course of general lexicographic work.</li>
                <li>Underlined words are lexical units (targets) with web links; clicking on
                    one will reveal (in the lower part of the window) the annotation of frame
                    elements associated with that target. Clicking on more than one target in
                    a sentence will show more than one set of annotations for that sentence.</li>
            </ul>
        </div><br />
        <b>Choose a Corpus/Document.</b>
		<br />
		<div class='mC'>
		<xsl:for-each select='fn:corpus'>
            <xsl:sort select='@description' order='ascending' />
			<xsl:variable name='menuNum' select='position()' />
			<xsl:variable name='corpName' select='@name' />
			<div class='mH' onclick="toggleMenu('menu{$menuNum}')">
				+ <xsl:value-of select='@description' />
			</div>
			<div id='menu{$menuNum}' class='mL'>
				<ol><xsl:for-each select='fn:document'>
                    <xsl:sort select='@description' order='ascending' />
					<xsl:variable name='docName' select='@name' />
					<li><a class='mO' href='fulltext/{$corpName}__{$docName}.xml'>
						<xsl:value-of select='@description' />
					</a></li>
				</xsl:for-each></ol>
			</div>
		</xsl:for-each>
		</div>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
