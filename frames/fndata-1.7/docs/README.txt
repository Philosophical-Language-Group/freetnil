Welcome to Release 1.7 of the FrameNet data!

Contents of this release:

The FrameNet database in XML format, with XSL scripts to make the data
readable in a web browser:

     frame/        (one file/frame 1,221 files)
     frameIndex.xml	  
     frameIndex.xsl	  
     frRelation.xml	
     fulltext/	   (one file/document 107 files)
     fulltextIndex.xml 
     fulltextIndex.xsl 
     lu            (one file/lexical unit, 13,572 files)
     luIndex.xml	  
     luIndex.xsl	  
     		  
     schema/       XML schemas for the data
     semTypes.xml  FrameNet semantic types and their relations


Documentation:

     docs/ 
          book.pdf FrameNet II: Extended Theory and Practice:
          Annotator's manual, 129 pages

	  GeneralReleaseNotes1.7.pdf: description of changes in
	  Release 1.7 

	  R1.5XMLDocumentation.txt: A very detailed description of the
	  XML formats used; almost all of this is still relevant for R1.7.

     miscXML/
          DifferencesR1.6-1.7.xml: automatic diff file showing all
          additions, deletions and name changes for frames, FEs and LUs.

          XML representation of the lemma, lexeme and wordform data in
          FrameNet:
               lemma_to_wordformR1.7.xml
     	       lexeme_to_wordformR1.7.xml

README.txt: this file

-----------------------------------------------------

If you just want to start looking at the data, you should be able to
open any one of the index files (frameIndex.xml, luIndex.xml or
fulltextIndex.xml) in an appropriate web browser and browse through
it. Please see the General Relase Notes in the /docs directory for
information on which browsers are known to work correctly.

Next, please read the rest of the documentation in the /docs
directory: the GeneralReleaseNotes will tell you about what is
different in this release. The file R1.5XMLDocumentation.txt gives the
basic information about the XML/XSL format, but is somewhat out of
date.  "The Book" (formally "FrameNet II: Extended Theory and
Practice", as revised Nov. 1, 2016) gives a great deal more detail of
the theory behind FrameNet and the principles followed in the
annotation, and has been considerably revised for this release,
including a new appendix on extrathematic frame elements.  We plan to
continue update both of these documents, and will post news of this on
the FrameNet website.

As always, the FrameNet project public website, at

    http://framenet.icsi.berkeley.edu

contains much more information and current news.  Thank you for your
interest in FrameNet.

Sincerely,

Collin F. Baker
Project Manager, FrameNet
http://framenet.icsi.berkeley.edu/
International Computer Science Institute
1947 Center St. Suite 600
Berkeley, California, 94704

collinb@icsi.berkeley.edu

Nov. 7, 2015
