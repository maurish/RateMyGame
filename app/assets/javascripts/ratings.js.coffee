# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
	$('form').change ->
		elem = $(this).find('input[type=range]')
		next = elem.next()
		val = parseFloat(elem.val()).toFixed(1)
		next.html(val) if next.is('output')

	$('form').trigger 'change'