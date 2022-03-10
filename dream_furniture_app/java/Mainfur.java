package com.example.dreamfurniture;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.google.android.material.navigation.NavigationView;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Mainfur extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener{

    private DrawerLayout drawerLayout;
    int r3;
    Button b1;
    LinearLayout linearLayout;
    ProgressDialog progressDialog;
    ConnectionClass connectionClass;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mainfur);

        try {
            r3 = getIntent().getExtras().getInt("l2");
            if(r3==1 || r3==2 || r3==3 || r3==4 ||r3==5 || r3==6)
            {
                Toast.makeText(this,"r3 is 1,2,3,4,5,6",Toast.LENGTH_SHORT).show();
            }
            if(r3==7 || r3==8 || r3==9 || r3==10)
            {
                Toast.makeText(this,"r3 is 7,8,9,10",Toast.LENGTH_SHORT).show();
            }
        }
        catch (NullPointerException e)
        {
            Toast.makeText(this,"Nothing is in r3",Toast.LENGTH_SHORT).show();
        }
        b1 = findViewById(R.id.ac1);
        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),Cart.class);
                startActivity(intent);
            }
        });

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        drawerLayout = findViewById(R.id.drawer_layout);

        NavigationView navigationView = findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);

        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, drawerLayout, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawerLayout.addDrawerListener(toggle);
        toggle.syncState();

        connectionClass = new ConnectionClass();

        progressDialog = new ProgressDialog(Mainfur.this);

        linearLayout = findViewById(R.id.main_fur);
        Doregister doregister = new Doregister();
        doregister.execute("");
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    public void onBackPressed() {
        if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
            drawerLayout.closeDrawer(GravityCompat.START);
        }
        else {
            super.onBackPressed();
        }
    }

    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
        switch (menuItem.getItemId())
        {
            case R.id.home:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,new HomeFragment()).commit();
                break;
            case R.id.yo:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,new OrderFragment()).commit();
                break;
            case R.id.sbc:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,new SbcFragment()).commit();
                break;
            case R.id.profile:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,new ProfileFragment()).commit();
                break;
            case R.id.cu:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,new ContactFragment()).commit();
                break;
            case R.id.au:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,new AboutUsFragment()).commit();
                break;
            case R.id.login:
                Intent i1 = new Intent(this,Login.class);
                startActivity(i1);
                break;
            case R.id.signup:
                Intent i2 = new Intent(this,Signup.class);
                startActivity(i2);
                break;
        }

        drawerLayout.closeDrawer(GravityCompat.START);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        int id =item.getItemId();
        switch (id) {
            case R.id.cart_action:
                Intent intent = new Intent(Mainfur.this, Cart.class);
                startActivity(intent);
                return true;
            case 0:
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @SuppressLint("StaticFieldLeak")
    public class Doregister extends AsyncTask<String,String,String>{
        String s = "";
        boolean done = false;

        @Override
        protected void onPreExecute() {
            progressDialog.setMessage("Loading");
            progressDialog.show();
            Toast.makeText(Mainfur.this,"Pre Execute",Toast.LENGTH_LONG).show();
        }

        @Override
        protected String doInBackground(String... strings) {
            try {
                Connection connection = connectionClass.conn();
                if(connection==null) {
                    s = "Please Check your Internet";
                }
                else {
                    String query = "SELECT * FROM `appfur` WHERE Ftype='Sectional' && Ftnm='Maxwell' && Fcolor='White'";
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery(query);
                    while (resultSet.next()) {
                        s = resultSet.getString(7);
                    }
                    done = true;
                }
            }
            catch (Exception e) {
                done = false;
                s = "Exception :- "+e;
            }
            return s;
        }

        @Override
        protected void onPostExecute(String s) {
            Toast.makeText(Mainfur.this,"Post Execute",Toast.LENGTH_LONG).show();
            if(done){
                int a = 1;
                for(int j = 1;j<10;j++) {
                    int mipmap = getResources().getIdentifier(s+a+j,"mipmap",getPackageName());
                    ImageView imageView = new ImageView(Mainfur.this);
                    imageView.setImageResource(mipmap);
                    linearLayout.addView(imageView);
                }
            }
            else{
                Toast.makeText(Mainfur.this,"done = false"+s,Toast.LENGTH_LONG).show();
            }
            progressDialog.hide();
        }
    }
}