package co.edu.cesde;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

public class DBHelper extends SQLiteOpenHelper {
    public static final int DATABASE_VERSION=1;
    public static final String  DATABASE_NAME="cesdeShop";
    public DBHelper(@Nullable Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE users(id int primary key ," +
                "name VARCHAR(50),email VARCHAR(50)," +
                "identification int ,password VARCHAR (16))");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int i, int i1) {
        SQLiteDatabase.execSQL("DROP TABLE IF EXISTS "+DATABASE_NAME);
        onCreate(db);
    }
}
