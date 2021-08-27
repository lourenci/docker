.PHONY: rebuild-and-publish

rebuild-and-publish:
	@docker build -t lourenci/nvim:nightly-alpine .
	@echo $(DOCKER_TOKEN) | docker login -u lourenci --password-stdin
	@docker push lourenci/nvim:nightly-alpine
