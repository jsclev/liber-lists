import Foundation
import os
import SQLite3

class Db {
//    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "Db")
    var dbPointer: OpaquePointer?
    
//    let account: AccountDAO
//    let client: ClientDAO
//    let disabilityStatus: DisabilityStatusDAO
//    let email: EmailDAO
//    let fts: FtsDAO
//    let gender: GenderDAO
//    let geopoint: GeopointDAO
//    let hohStatus: HOHStatusDAO
//    let language: LanguageDAO
//    let livingArrangement: LivingArrangementDAO
//    let mealType: MealTypeDAO
//    let maritalStatus: MaritalStatusDAO
//    let organization: OrganizationDAO
//    let party: PartyDAO
//    let paymentType: PaymentTypeDAO
//    let person: PersonDAO
//    let phone: PhoneDAO
//    let phoneType: PhoneTypeDAO
//    let postalAddress: PostalAddressDAO
//    let povertyLevel: PovertyLevelDAO
//    let raceType: RaceTypeDAO
//    let route: RouteDAO
//    let routeStop: RouteStopDAO
//    let routeStopClient: RouteStopClientDAO
//    let sync: SyncDAO
//    let veteranStatus: VeteranStatusDAO
//    let vol: VolunteerDAO
//    let volRole: VolunteerRoleDAO
//    let volRoleAsgmt: VolunteerRoleAsgmtDAO
    
    init(fullRefresh: Bool) {
        let dbBundlePath = "Assets.db/scintillate"
        let fileManager = FileManager.default
        let paths = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectory = paths[0]
        let docsDbUrl = documentsDirectory.appendingPathComponent("scintillate.db")
        
        if let dbBundleUrl = Bundle.main.url(forResource: dbBundlePath, withExtension: "db") {
            if fullRefresh {
                do {
                    if fileManager.fileExists(atPath: docsDbUrl.path) {
                        do {
                            try fileManager.removeItem(atPath: docsDbUrl.path)
                        } catch let error {
                            print("error occurred, here are the details: \(error)")
                        }
                    }
                    
                    try fileManager.copyItem(atPath: dbBundleUrl.path, toPath: docsDbUrl.path)
                } catch {
                    print("Unable to copy scintillate.db: \(error)")
                }
            } else {
                // Copy the db file from the bundle if it's not in the Documents directory
                if !fileManager.fileExists(atPath: docsDbUrl.path) {
                    do {
                        try fileManager.copyItem(atPath: dbBundleUrl.path, toPath: docsDbUrl.path)
                    } catch let error {
                        print("error occurred, here are the details: \(error)")
                    }
                }
            }
        }
        else {
            print("Unable to find the \"Documents\" directory.")
            //            throw SQLiteError.OpenDatabase(message: "Unable to find the \"Documents\" directory.")
        }
        
        let docDirUrls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        if docDirUrls.count == 0 {
            print("Unable to find the \"Documents\" directory.")
            //            throw SQLiteError.OpenDatabase(message: "Unable to find the \"Documents\" directory.")
        }
        
        let documentsUrl = docDirUrls[0]
        let dbPath = documentsUrl.appendingPathComponent("scintillate.db").path
        
        var rc: Int32
        rc = sqlite3_open_v2(dbPath, &dbPointer, SQLITE_OPEN_READWRITE, nil)
        
        if (rc != SQLITE_OK) {
            let sqliteMsg = String(cString: sqlite3_errmsg(dbPointer))
            let errMsg = "Failed to open database connection to " + dbPath + ".  " + sqliteMsg
            print(errMsg)
            //            throw SQLiteError.OpenDatabase(message: errMsg)
        }
        
//        logger.debug("Opened database at \(dbPath, privacy: .public).")
        
        // Enable foreign keys (they are off by default in SQLite as of version 3.34)
        let pragma = "PRAGMA foreign_keys = ON;"
        var stmt: OpaquePointer?
        if sqlite3_prepare_v2(dbPointer, pragma, -1, &stmt, nil) == SQLITE_OK {
            if sqlite3_step(stmt) == SQLITE_DONE {
//                logger.debug("Turned on foreign keys using command \"\(pragma, privacy: .public)\"")
            } else {
                let errMsg = String(cString: sqlite3_errmsg(dbPointer)!)
                print(errMsg)
//                throw SQLiteError.OpenDatabase(message: errMsg)
            }
        } else {
            let errMsg = String(cString: sqlite3_errmsg(dbPointer)!)
            print(errMsg)
//            throw SQLiteError.OpenDatabase(message: errMsg)
        }
        
        sqlite3_finalize(stmt)
        
//        account = AccountDAO(conn: dbPointer)
//        disabilityStatus = DisabilityStatusDAO(conn: dbPointer)
//        email = EmailDAO(conn: dbPointer)
//        fts = FtsDAO(conn: dbPointer)
//        gender = GenderDAO(conn: dbPointer)
//        geopoint = GeopointDAO(conn: dbPointer)
//        hohStatus = HOHStatusDAO(conn: dbPointer)
//        language = LanguageDAO(conn: dbPointer)
//        livingArrangement = LivingArrangementDAO(conn: dbPointer)
//        mealType = MealTypeDAO(conn: dbPointer)
//        maritalStatus = MaritalStatusDAO(conn: dbPointer)
//        organization = OrganizationDAO(conn: dbPointer)
//        party = PartyDAO(conn: dbPointer)
//        paymentType = PaymentTypeDAO(conn: dbPointer)
//        person = PersonDAO(conn: dbPointer)
//        phone = PhoneDAO(conn: dbPointer)
//        phoneType = PhoneTypeDAO(conn: dbPointer)
//        postalAddress = PostalAddressDAO(conn: dbPointer)
//        povertyLevel = PovertyLevelDAO(conn: dbPointer)
//        raceType = RaceTypeDAO(conn: dbPointer)
//        route = RouteDAO(conn: dbPointer)
//        routeStop = RouteStopDAO(conn: dbPointer)
//        routeStopClient = RouteStopClientDAO(conn: dbPointer)
//        sync = SyncDAO(conn: dbPointer)
//        veteranStatus = VeteranStatusDAO(conn: dbPointer)
//        volRole = VolunteerRoleDAO(conn: dbPointer)
//        volRoleAsgmt = VolunteerRoleAsgmtDAO(conn: dbPointer)
//
//        client = ClientDAO(conn: dbPointer, ftsDAO: fts, personDAO: person)
//        vol = VolunteerDAO(conn: dbPointer,
//                           emailDAO: email,
//                           organizationDAO: organization,
//                           personDAO: person,
//                           phoneDAO: phone,
//                           postalAddressDAO: postalAddress)
    }
    
    deinit {
        let rc: Int32 = sqlite3_close_v2(dbPointer)
        
        if (rc != SQLITE_OK) {
            let sqliteMsg = String(cString: sqlite3_errmsg(dbPointer))
//            logger.error("\(sqliteMsg)")
        }
    }
}

