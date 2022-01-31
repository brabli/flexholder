.PHONY: watch
watch:
	@sass styles.scss:styles.css --watch

.PHONY: watch_min
watch_min:
	@sass styles.scss:styles.css --watch --style=compressed
