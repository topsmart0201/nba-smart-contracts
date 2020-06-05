module github.com/dapperlabs/nba-smart-contracts/test

go 1.13

require (
	github.com/dapperlabs/flow-emulator v0.4.0
	github.com/dapperlabs/nba-smart-contracts/contracts v0.1.7
	github.com/dapperlabs/nba-smart-contracts/templates v0.1.6
	github.com/onflow/cadence v0.4.0
	github.com/onflow/flow-go-sdk v0.4.0
	github.com/stretchr/testify v1.5.1
)

replace github.com/dapperlabs/nba-smart-contracts/templates => ../templates

replace github.com/dapperlabs/nba-smart-contracts/contracts => ../contracts
