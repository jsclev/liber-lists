package com.zippyzen.scintillate.db

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.Query
import com.zippyzen.scintillate.model.Work

@Dao
interface WorkDao {
    @Query("SELECT * FROM work")
    fun getAll(): List<Work>

    @Query("SELECT * FROM work WHERE name LIKE :name LIMIT 1")
    fun findByName(name: String): Work

    @Insert
    fun insertAll(vararg users: Work)

    @Delete
    fun delete(work: Work)
}