package com.example.dreamfurniture;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

import android.Manifest;
import android.content.ContentValues;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;

import com.google.android.material.navigation.NavigationView;

public class Visualize extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener{

    private DrawerLayout drawerLayout;

    private static final int PERMISSION_CODE1 = 1000;
    private static final int PERMISSION_CODE2 = 1001;
    private static final int IMAGE_CAPTURE_CODE = 1002;
    private static final int GALLERY_IMAGE = 1003;
    Button b1,b2,b3;
    ImageView i1;
    FrameLayout f1 ;
    Uri img;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_visulize);
        b1 = findViewById(R.id.camera);
        b2 = findViewById(R.id.gallery);
        b3 = findViewById(R.id.buynow);
        b3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i1 = new Intent(getApplicationContext(),Buynow.class);
                startActivity(i1);
            }
        });
        i1 = findViewById(R.id.i1);
        f1 = findViewById(R.id.vf1);

        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
                {
                    if(checkSelfPermission(Manifest.permission.CAMERA) == PackageManager.PERMISSION_DENIED
                            || checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_DENIED)
                    {
                        String[] p = {Manifest.permission.CAMERA,Manifest.permission.WRITE_EXTERNAL_STORAGE};
                        requestPermissions(p,PERMISSION_CODE1);
                    }
                    else {
                        openCamera();
                    }
                }
                else {
                    openCamera();
                }
            }
        });
        b2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M)
                {
                    if(checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE) == PackageManager.PERMISSION_DENIED)
                    {
                        String[] p = {Manifest.permission.READ_EXTERNAL_STORAGE};
                        requestPermissions(p,PERMISSION_CODE2);
                    }
                    else {
                        if(!Visualize.this.isFinishing()) {
                            pickimagefromgallery();
                        }
                    }
                }
                else {
                    if(!Visualize.this.isFinishing()) {
                        pickimagefromgallery();
                    }
                }
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
    }

    private void openCamera() {
        ContentValues cv = new ContentValues();
        cv.put(MediaStore.Images.Media.TITLE,"New Picture");
        cv.put(MediaStore.Images.Media.DESCRIPTION,"From Camera");
        img = getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI,cv);
        Intent cm = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        cm.putExtra(MediaStore.EXTRA_OUTPUT,img);
        startActivityForResult(cm,IMAGE_CAPTURE_CODE);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        switch (requestCode)
        {
            case PERMISSION_CODE1:
            {
                if(grantResults.length > 0 && grantResults[0]== PackageManager.PERMISSION_GRANTED)
                {
                    openCamera();
                }
                else {
                    Toast.makeText(this,"Permission is denied",Toast.LENGTH_SHORT).show();
                }
            }
            break;
            case PERMISSION_CODE2:
            {
                if(grantResults.length > 0 && grantResults[0]== PackageManager.PERMISSION_GRANTED)
                {
                    pickimagefromgallery();
                }
                else {
                    Toast.makeText(this,"Permission is denied",Toast.LENGTH_SHORT).show();
                }
            }
            break;
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(requestCode == IMAGE_CAPTURE_CODE)
        {
            if(resultCode == RESULT_OK)
            {
                i1.setImageURI(img);
            }
        }
        if (requestCode == GALLERY_IMAGE)
        {
            if(resultCode == RESULT_OK)
            {
                try {
                    i1.setImageURI(data.getData());
                }
                catch (NullPointerException e)
                {
                    Toast.makeText(getApplicationContext(),"get data produce null pointer exception",Toast.LENGTH_SHORT).show();
                }
            }
        }
    }

    private void pickimagefromgallery() {
        Intent gimg = new Intent(Intent.ACTION_PICK);
        gimg.setType("image/*");
        startActivityForResult(gimg,GALLERY_IMAGE);
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
                Intent intent = new Intent(Visualize.this, Cart.class);
                startActivity(intent);
                return true;
            case 0:
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
