.PHONY: init up down generate test
init:
	rm -rf .dfx .next out node_modules
	npm install
# ローカルにdfxサーバーを開始する
up:
	dfx start --background
# ローカルのdfxサーバーを停止する
down:
	dfx stop
	rm -rf .dfx .next out
# キャニスターの作成&WASMを配置している
# dfx.jsonの"canisters"をデプロイする
deploy:
	dfx deploy
# フロントで使用する関数を、デプロイされたcanistersから./src/declarationsに作成する
generate:
	dfx generate hello
	dfx generate image
# デプロイされたcanisterをテストする
# dfx canister call [CABISTER_NAME] [CANISTER_METHOD] (arg_1, arg_2. ...)
test:
	dfx canister call hello greet everyone

.PHONY: ic ps balance
ic:
	dfx ping ic
ps:
	lsof -i:8000
	ps aux | grep dfx
balance:
	dfx wallet --network ic balance

.PHONY: dev build
dev:
	npm run dev
build:
	npm run build