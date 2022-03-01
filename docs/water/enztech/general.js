/*

	General javascripts used on all pages in the ESBE faculty site

	Author: Jonas Altin - Ariadne Designs

	Date: 17/09/2003

*/



/* SCRIPTS THAT HANDLE THE ROLLOVER BUTTONS IN TOP OF PAGE */



if (document.images) {

	imagedir='../images/topnav/'; // Dir where top images are located



	leftarrowoff = new Image();

	leftarrowon = new Image();

	leftarrowoff.src = "../images/subpages/chevron_off.gif";

	leftarrowon.src = "../images/subpages/chevron_on.gif";





	homeoff = new Image();

	homeon = new Image();

	homeoff.src=	imagedir + "nav_home_off.gif";

	homeon.src	=	imagedir + "nav_home_on.gif";

	aboutoff = new Image();

	abouton = new Image();

	aboutoff.src=	imagedir + "nav_about_off.gif";

	abouton.src	=	imagedir + "nav_about_on.gif";

	coursesoff = new Image();

	courseson = new Image();

	coursesoff.src=	imagedir + "nav_courses_off.gif";

	courseson.src	=	imagedir + "nav_courses_on.gif";

	timetablesoff = new Image();

	timetableson = new Image();

	timetablesoff.src=	imagedir + "nav_timetables_off.gif";

	timetableson.src	=	imagedir + "nav_timetables_on.gif";

	resourcesoff = new Image();

	resourceson = new Image();

	resourcesoff.src=	imagedir + "nav_resources_off.gif";

	resourceson.src	=	imagedir + "nav_resources_on.gif";

	newsoff = new Image();

	newson = new Image();

	newsoff.src=	imagedir + "nav_news_off.gif";

	newson.src	=	imagedir + "nav_news_on.gif";

	divisionsoff = new Image();

	divisionson = new Image();

	divisionsoff.src=	imagedir + "nav_divisions_off.gif";

	divisionson.src	=	imagedir + "nav_divisions_on.gif";

	researchoff = new Image();

	researchon = new Image();

	researchoff.src=	imagedir + "nav_research_off.gif";

	researchon.src	=	imagedir + "nav_research_on.gif";
	
	wateroff = new Image();

	wateron = new Image();

	wateroff.src=	imagedir + "nav_water_off.gif";

	wateron.src	=	imagedir + "nav_water_on.gif";

}


function newWin(tgt) {
  var wndw=window.open("",tgt," width=400,height=320,scrollbars=yes,resizable=yes,toolbar=yes,location=yes,status=yes");
  wndw.focus();
}/* ROLL IN & OUT OF TOP LINKS */

function rollin(imageName, msg){

	if (document.images){

		document[imageName].src = eval(imageName + "on.src");

		//status_message(msg);

	}

}

function rollout(imageName, msg) {

  if (document.images) {

	if(document.selectedButton != imageName) {

		document[imageName].src = eval(imageName + "off.src");

		//status_message(msg);

	}

  }

}

