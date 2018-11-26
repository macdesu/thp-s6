console.log("Kek")

function toogle(tab)
{
	var cards = document.getElementsByClassName("card");
	for (i = 0; i < cards.length; i++) 
		cards[i].style.display = "none";
	document.getElementById(tab).style.display = "block";
}