.PHONY: symlink rebuild-and-publish

symlink:
	@ln -s $(PWD)/nvim.sh /usr/local/bin/nvim
	@chmod +x /usr/local/bin/nvim

rebuild-and-publish:
	@docker build -t lourenci/nvim-ide:nightly-alpine .
	@echo $(DOCKER_TOKEN) | docker login -u lourenci --password-stdin
	@docker push lourenci/nvim-ide:nightly-alpine
