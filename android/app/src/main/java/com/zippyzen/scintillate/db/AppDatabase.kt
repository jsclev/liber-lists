package com.zippyzen.scintillate.db

import androidx.room.Database
import androidx.room.RoomDatabase
import com.zippyzen.scintillate.model.Work

@Database(entities = [Work::class], version = 1)
abstract class AppDatabase : RoomDatabase() {
    abstract fun workDao(): WorkDao
}