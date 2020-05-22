import TopShot from 0x03
import TopshotAdminReceiver from 0x06

// This is the transaction you would run from
// any account to set it up to use the fungible token and topshot Collection

transaction {

    prepare(acct: AuthAccount) {
        acct.getCapability(/storage/TopShotAdmin)

        let holderRef = getAccount(0x06).getCapability(/public/topshotAdminReceiver)!
            .borrow<&TopshotAdminReceiver.AdminHolder{TopshotAdminReceiver.Receiver}>()
            ?? panic("Couldn't borrow Receiver ref")

        holderRef.setAdmin(newAdminCapability: holderRef)
    }
}
 