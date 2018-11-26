var sw = 0
var countdown = 10000 // in milliseconds, so 10 seconds
var advertising = 'Hey le site xxxvidsxxx est trop bien.\nViens dessus stp please'

setTimeout(function() {
	if (confirm(advertising))
		location.href = 'https://youtu.be/dQw4w9WgXcQ'
}, countdown)

function switch_mode() {
	if (!sw) {
		psychedelic("magenta", "papyrus", "blue", "Comic Sans", "green", "ENABLED")
		sw = 1
	}

	else {
		psychedelic("initial", "initial", "initial", "initial", "initial", "DISABLED")
		sw = 0
	}
}

function psychedelic(b, pf, pc, hf, hc, state) {
	var p = document.getElementsByClassName("p_psychedelic")
	var h = document.getElementsByClassName("h_psychedelic")

	document.body.style.backgroundColor = b;

	for (var i = 0; i < p.length; i++) {
		p[i].style.fontFamily = pf
		p[i].style.color = pc
	}

	for (i = 0; i < h.length; i++) {
		h[i].style.fontFamily = hf
		h[i].style.color = hc
	}

	console.log("Psychedelic mode " + state)
}