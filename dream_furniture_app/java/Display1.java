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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.view.View;
import android.widget.Toast;
import com.google.android.material.navigation.NavigationView;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Display1 extends AppCompatActivity  implements NavigationView.OnNavigationItemSelectedListener {

    int r1;
    int count = 1;
    private DrawerLayout drawerLayout;
    ProgressDialog progressDialog;
    ConnectionClass connectionClass;
    LinearLayout l1;
    LinearLayout l2;
    LinearLayout l3;
    LinearLayout l4;
    String query;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_display1);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        drawerLayout = findViewById(R.id.drawer_layout);

        NavigationView navigationView = findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);

        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, drawerLayout, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawerLayout.addDrawerListener(toggle);
        toggle.syncState();

        progressDialog = new ProgressDialog(Display1.this);

        connectionClass = new ConnectionClass();

        l1 = findViewById(R.id.l1);
        l2 = findViewById(R.id.l2);
        l3 = findViewById(R.id.l3);
        l4 = findViewById(R.id.l4);

        String[] warr = getResources().getStringArray(R.array.wid);
        String[] tarr = getResources().getStringArray(R.array.tvid);
        String[] secarr = getResources().getStringArray(R.array.secid);
        String[] sfarr = getResources().getStringArray(R.array.sofaid);
        String[] sfcharr = getResources().getStringArray(R.array.sfchid);
        String[] otarr = getResources().getStringArray(R.array.otid);

        try {
            r1 = getIntent().getExtras().getInt("l1");
            if(r1==1)
            {
                Toast.makeText(this,"Wall unit is clicked",Toast.LENGTH_SHORT).show();
                /*for(int i=0;i<warr.length;i++){
                    query="SELECT Ftnm,Fimg,Fprice FROM `appfur` WHERE Fid='"+warr[i]+"'";
                    Toast.makeText(Display1.this,warr[i],Toast.LENGTH_LONG).show();
                    Doregister doregister = new Doregister();
                    doregister.execute("");
                    @SuppressLint("WrongThread") String ret = doregister.doInBackground(warr[i]);
                    doregister.onPostExecute(ret);
                    count++;
                }*/
            }
            if(r1==2)
            {
                Toast.makeText(this,"Tv unit is clicked",Toast.LENGTH_SHORT).show();
                Doregister doregister = new Doregister();
                doregister.execute("");
            }
            if(r1==3)
            {
                Toast.makeText(this,"Sectional is clicked",Toast.LENGTH_SHORT).show();
                Doregister doregister = new Doregister();
                doregister.execute("");
            }
            if(r1==4)
            {
                Toast.makeText(this,"Sofa is clicked",Toast.LENGTH_SHORT).show();
                Doregister doregister = new Doregister();
                doregister.execute("");
            }
            if(r1==5)
            {
                Toast.makeText(this,"Sofa Chair is clicked",Toast.LENGTH_SHORT).show();
                Doregister doregister = new Doregister();
                doregister.execute("");
            }
            if(r1==6)
            {
                Toast.makeText(this,"Ottoman is clicked",Toast.LENGTH_SHORT).show();
                Doregister doregister = new Doregister();
                doregister.execute("");
            }
        }
        catch (NullPointerException e){
            Toast.makeText(this,"Nothing is in r1",Toast.LENGTH_SHORT).show();
        }

        l1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r1);
                startActivity(i1);
            }
        });
        l2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r1);
                startActivity(i1);
            }
        });
        l3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r1);
                startActivity(i1);
            }
        });
        l4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r1);
                startActivity(i1);
            }
        });
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
                Intent intent = new Intent(Display1.this, Cart.class);
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
        String t = "";
        String u = "";

        @Override
        protected void onPreExecute() {
            progressDialog.setMessage("Loading");
            progressDialog.show();
            Toast.makeText(Display1.this,"Pre Execute",Toast.LENGTH_LONG).show();
            /*Doregister drg = new Doregister();
            String doinbg = drg.doInBackground(t);*/
        }

        @Override
        protected String doInBackground(String... strings) {
            try {
                Connection connection = connectionClass.conn();
                if(connection==null) {
                    s = "Please Check your Internet";
                }
                else {
                    //String query = "SELECT Ftnm,Fimg,Fprice FROM `appfur` WHERE Fid=1";
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery(query);
                    while (resultSet.next()) {
                        s = resultSet.getString(1);
                        t = resultSet.getString(2);
                        u = resultSet.getString(3);
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
            Toast.makeText(Display1.this,"Post Execute",Toast.LENGTH_LONG).show();
            if(done){
                int a = 1;
                for(int j = 1;j<=1;j++) {
                    int mipmap = getResources().getIdentifier(t+a+j,"mipmap",getPackageName());
                    ImageView imageView = new ImageView(Display1.this);
                    imageView.setImageResource(mipmap);
                    l1 = findViewById(R.id.l1);
                    l2 = findViewById(R.id.l2);
                    l3 = findViewById(R.id.l3);
                    l4 = findViewById(R.id.l4);
                    Toast.makeText(Display1.this,"before count",Toast.LENGTH_SHORT).show();
                    if(count==1) {
                        Toast.makeText(Display1.this,"count 1",Toast.LENGTH_SHORT).show();
                        Toast.makeText(Display1.this,t+a+j,Toast.LENGTH_SHORT).show();
                        l1.addView(imageView);
                    }
                    if(count==2) {
                        l2.addView(imageView);
                        Toast.makeText(Display1.this,"count 2",Toast.LENGTH_SHORT).show();
                        Toast.makeText(Display1.this,t+a+j,Toast.LENGTH_SHORT).show();
                    }
                    if(count==3){
                        l3.addView(imageView);
                        Toast.makeText(Display1.this,"count 3",Toast.LENGTH_SHORT).show();
                        Toast.makeText(Display1.this,t+a+j,Toast.LENGTH_SHORT).show();
                    }
                    if(count==4){
                        l4.addView(imageView);
                        Toast.makeText(Display1.this,"count 4",Toast.LENGTH_SHORT).show();
                        Toast.makeText(Display1.this,t+a+j,Toast.LENGTH_SHORT).show();
                    }
                    Toast.makeText(Display1.this,"after count",Toast.LENGTH_SHORT).show();
                    Toast.makeText(Display1.this,t+a+j,Toast.LENGTH_SHORT).show();
                }
            }
            else{
                Toast.makeText(Display1.this,"done = false"+s,Toast.LENGTH_LONG).show();
            }
            progressDialog.hide();
        }
    }
}