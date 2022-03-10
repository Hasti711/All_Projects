package com.example.dreamfurniture;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.google.android.material.navigation.NavigationView;

public class Display2 extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener{

    private DrawerLayout drawerLayout;
    int r2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_display2);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        drawerLayout = findViewById(R.id.drawer_layout);

        NavigationView navigationView = findViewById(R.id.nav_view);
        navigationView.setNavigationItemSelectedListener(this);

        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, drawerLayout, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawerLayout.addDrawerListener(toggle);
        toggle.syncState();
        try {
            r2 = getIntent().getExtras().getInt("l1");
            if(r2==7)
            {
                Toast.makeText(this,"Dining Table is clicked",Toast.LENGTH_SHORT).show();
            }
            if(r2==8)
            {
                Toast.makeText(this,"Chair is clicked",Toast.LENGTH_SHORT).show();
            }
            if(r2==9)
            {
                Toast.makeText(this,"Bed is clicked",Toast.LENGTH_SHORT).show();
            }
            if(r2==10)
            {
                Toast.makeText(this,"Wardrobe is clicked",Toast.LENGTH_SHORT).show();
            }
        }
        catch (NullPointerException e)
        {
            Toast.makeText(this,"Nothing is in r2",Toast.LENGTH_SHORT).show();
        }
        LinearLayout l5 = findViewById(R.id.d5);
        LinearLayout l6 = findViewById(R.id.d6);
        LinearLayout l7 = findViewById(R.id.d7);
        l5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r2);
                startActivity(i1);
            }
        });
        l6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r2);
                startActivity(i1);
            }
        });
        l7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r2);
                startActivity(i1);
            }
        });
        LinearLayout ls5 = findViewById(R.id.ds5);
        LinearLayout ls6 = findViewById(R.id.ds6);
        LinearLayout ls7 = findViewById(R.id.ds7);
        ls5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r2);
                startActivity(i1);
            }
        });
        ls6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r2);
                startActivity(i1);
            }
        });
        ls7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Mainfur.class);
                i1.putExtra("l2",r2);
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
                Intent intent = new Intent(Display2.this, Cart.class);
                startActivity(intent);
                return true;
            case 0:
            default:
                return super.onOptionsItemSelected(item);
        }
    }

}