package co.edu.cesde;

import androidx.appcompat.app.AppCompatActivity;

import android.content.ContentValues;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

import co.edu.cesde.databinding.ActivityMainBinding;
import co.edu.cesde.databinding.ActivityRegisterBinding;

public class RegisterActivity extends AppCompatActivity {
 private ActivityRegisterBinding registerBinding;
 private  DBHelper dbHelper;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        registerBinding = ActivityRegisterBinding.inflate(getLayoutInflater());
        View view = registerBinding.getRoot();
        setContentView(view);
        dbHelper = new DBHelper(this);

    }
    public void registerUser(View view){

        SQLiteDatabase db=dbHelper.getReadableDatabase();
        ContentValues userData =new ContentValues();
        userData.put("name", registerBinding.etname.getText().toString());
        userData.put("email", registerBinding.etcorreo.getText().toString());
        userData.put("password", registerBinding.etpassword.getText().toString());

        long newUser = db.insert( "users", null,userData);
        Toast.makeText(this, ""+ newUser, Toast.LENGTH_SHORT).show();

        Intent intent= new Intent(this,MainActivity.class);

        startActivity(intent);
    }
}