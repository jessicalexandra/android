package co.edu.cesde;

import androidx.appcompat.app.AppCompatActivity;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;

import co.edu.cesde.databinding.ActivityMainBinding;
import co.edu.cesde.databinding.ActivityProductsBinding;

public class ProductsActivity extends AppCompatActivity {
      private DBHelper dbHelper;
    private ActivityProductsBinding productsBinding;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        productsBinding= ActivityProductsBinding.inflate(getLayoutInflater();
        View view =productsBinding.getRoot();
        setContentView(view);
        dbHelper = new DBHelper(this);
        setContentView(R.layout.activity_products);
    }
    public void consultar (View view){
        SQLiteDatabase db=dbHelper.getDatabaseName();
    }

}