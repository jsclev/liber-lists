package com.zippyzen.scintillate

import android.app.Application
import androidx.room.Room
import androidx.room.Room.databaseBuilder
import com.zippyzen.scintillate.db.AppDatabase
import com.zippyzen.scintillate.model.Work

class ScintillateApplication: Application() {

    companion object {
        lateinit var database: AppDatabase
            private set
    }

    override fun onCreate() {
        super.onCreate()

        ScintillateApplication.database = databaseBuilder(
            applicationContext,
            AppDatabase::class.java, "scintillate99.sqlite"
        ).createFromAsset("scintillate99.sqlite").build()

//        val workDao = ScintillateApplication.database.workDao()
//        val works: List<Work> = workDao.getAll()
//
//        for (work in works) {
//            println(work.name)
//        }

    }
}