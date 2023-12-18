project = 'cfx_manager'
description = 'A simple script to disable the AI dispatcher and other unwanted server events.'
examples = {}
style = true

custom_see_handler('^(https?://.*)$', function(url)
	return url, url
end)