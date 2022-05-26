package co.edu.cesde;

import androidx.appcompat.app.AppCompatActivity ;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import co.edu.cesde.databinding.ActivityMainBinding;


public class MainActivity extends AppCompatActivity implements View.OnClickListener{

   /* private EditText eEmail,etpassword;
    private Button btnsignin,btnsignup;
    private TextView Txtview;*/
    private ActivityMainBinding mainbinding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mainbinding=ActivityMainBinding.inflate(getLayoutInflater());
        View view =mainbinding.getRoot();
        setContentView(view);
      /*  setContentView(R.layout.activity_main);
        eEmail=findViewById(R.id.eEmail);
        etpassword=findViewById(R.id.etpassword);
        btnsignin=findViewById(R.id.btnsignin);
        btnsignup=findViewById(R.id.btnsignup);
        Txtview=findViewById(R.id.Txtview);*/
        mainbinding.btnsignin.setOnClickListener(this);
        mainbinding.btnsignup.setOnClickListener(this);

    }
    public  void showMessage(){
        Toast.makeText(this, "hola mundo", Toast.LENGTH_SHORT).show();
    }

    public  void goToRegister(){
        Intent intent= new Intent(MainActivity.this,RegisterActivity.class);

        startActivity(intent);
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.btnsignin:
            showMessage();
            break;

            case R.id.btnsignup:
                goToRegister();
                break;
        }
    }
}