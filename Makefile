.PHONY: init up down generate
init:
	rm -rf .dfx .next out
	npm install
# ローカルにdfxサーバーを開始する
up:
	dfx start --background
# ローカルのdfxサーバーを停止する
down:
	dfx stop
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

.PHONY: dev
dev:
	npm run dev