<%@ page import="java.util.*,java.io.*" %>
<script language="javascript1.2">
<!--
// menubar
if (!exclude) {

// *** POSITIONING AND STYLES *********************************************


var menuALIGN  = "left",	absLEFT     = 	0,		absTOP      = 	75;
var staticMENU = false,		stretchMENU =   true,		showBORDERS = true;

var baseHREF   = "js/",	        zORDER      = 	100,		mCOLOR      = 	"#dddddd";

var rCOLOR     = "#cccccc",	keepLIT     =	true,		bSIZE       = 	1;
var bCOLOR     = "black",	aLINK       = 	"black",	aHOVER      = 	"";
var aDEC       = "none",	fFONT       = 	"arial",	fSIZE       = 	12;
var fWEIGHT    = "bold",	tINDENT     = 	7,		vPADDING    = 	5;
var vtOFFSET   = 0,		vOFFSET     = 	0,		hOFFSET     = 	0;


var smCOLOR    = "white",	srCOLOR     = 	"#cccccc",	sbSIZE      = 	1;
var sbCOLOR    = "black",	saLINK      = 	"black",	saHOVER     = 	"";
var saDEC      = "none",	sfFONT      = 	"arial",	sfSIZE      = 	12;
var sfWEIGHT   = "normal",	stINDENT    = 	5,		svPADDING   =   2;
var svtOFFSET  = 0,		shSIZE      =	0,		shCOLOR     =	"#ffffff";
var shOPACITY  = 45,             vLINK = "black";


//** LINKS ***********************************************************

<%! ArrayList menulist; Hashtable[] col= new Hashtable[9];

    public void getHashContents(Hashtable hash,JspWriter out) throws Exception
    {
      for(int i=0; i < hash.size(); i++)
      {
      Hashtable subHash = (Hashtable)hash.get(new Integer(i));
      if(subHash != null)
      {
         Enumeration e = subHash.keys();
         while(e.hasMoreElements())
         {
            String Key = e.nextElement().toString();
            String url = subHash.get(Key).toString();
            out.write("addSubmenuItem(\""+url+"\",\""+Key+"\",\"\");");

         }
      }
        }
    }

%>
<%
    menulist = (ArrayList)session.getAttribute("DROPDOWN_MENU");  //      Getting the menu lists from session
    for(int i=0;i<9;i++)
    col[i] = (Hashtable) menulist.get(i);

%>

// add main link item ("url","Link name",width,"text-alignment","target")
addMainItem("", "USER ADMIN",130,"center","");

	// define submenu properties (width,"align to edge","text-alignment")
	defineSubmenuProperties(140,"left","left");

	// add submenu link items ("url","Link name","target")
<%
//  USER ADMIN MENU
getHashContents(col[0],out);
 %>

addMainItem("", "SYSTEM ADMIN",140,"center","");
defineSubmenuProperties(140,"left","left");

<%
//     AUTHORISATION MENU
getHashContents(col[1],out);
 %>

addMainItem("", "MASTER",140,"center","");
defineSubmenuProperties(140,"left","left");
<%
//    MESSAGE MENU
getHashContents(col[2],out);
%>
/////////
addMainItem("", "INBOUND",110,"center","");
defineSubmenuProperties(140,"left","left");
<%
//    QUERY MENU
getHashContents(col[3],out);
%>

addMainItem("", "OUTBOUND",110,"center","");
defineSubmenuProperties(140,"left","left");
<%
//    MISC MENU
getHashContents(col[4],out);
%>

///////////
addMainItem("", "SHIPPING",120,"center","");
defineSubmenuProperties(140,"left","left");
<%
//    ADHOC MENU
getHashContents(col[5],out);
%>

// add main link item ("url","Link name",width,"text-alignment","target")
//addMainItem("", "WAREHOUSE",100,"center","");

	// define submenu properties (width,"align to edge","text-alignment")
//	defineSubmenuProperties(140,"left","left");

	// add submenu link items ("url","Link name","target")
//<%
//  USER ADMIN MENU
//getHashContents(col[6],out);
// %>

addMainItem("", "REPORTS",120,"center","");
defineSubmenuProperties(150,"left","left");
<%
//    REPORTS MENU
getHashContents(col[7],out);
%>



addMainItem("", "LOGOUT",120,"center","");
defineSubmenuProperties(90,"left","left");

<%
//    LOGOUT MENU
getHashContents(col[8],out);
%>
}
// End of custom.js ************************
-->
</script>



