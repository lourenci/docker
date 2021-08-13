.PHONY: symlink build

symlink:
	@ln -s $(PWD)/nvim.sh /usr/local/bin/nvim
	@chmod +x /usr/local/bin/nvim

rebuild-and-publish:
	@docker build -t lourenci/nvim-ide:nightly-alpine .
	@docker login -u lourenci -p DOCKER_TOKEN
	@docker push lourenci/nvim-ide:nightly-alpine
