package co.edu.cesde;

import androidx.appcompat.app.AppCompatActivity;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;

import co.edu.cesde.databinding.ActivityMainBinding;
import co.edu.cesde.databinding.ActivityRegisterBinding;

public class RegisterActivity extends AppCompatActivity {
 private ActivityRegisterBinding registerBinding;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        registerBinding = ActivityRegisterBinding.inflate(getLayoutInflater());
        View view = registerBinding.getRoot();
        setContentView(view);

    }
    public void registerUser(View view){
        DBHelper dbHelper =new DBHelper(this);
        SQLiteDatabase db=dbHelper.getReadableDatabase();
        ContentValues userData =new ContentValues();

    }
}