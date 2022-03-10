package com.example.dreamfurniture;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;

public class HomeFragment extends Fragment {

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_home, container, false);
    }

    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        ViewPager viewPager = getView().findViewById(R.id.vp1);
        ImageAdapter adapter = new ImageAdapter(getActivity());
        viewPager.setAdapter(adapter);
        LinearLayout l1 = getView().findViewById(R.id.wl1);
        LinearLayout l2 = getView().findViewById(R.id.tv1);
        LinearLayout l3 = getView().findViewById(R.id.sc1);
        LinearLayout l4 = getView().findViewById(R.id.sf1);
        LinearLayout l5 = getView().findViewById(R.id.sfc1);
        LinearLayout l6 = getView().findViewById(R.id.ot1);
        LinearLayout l7 = getView().findViewById(R.id.dt1);
        LinearLayout l8 = getView().findViewById(R.id.ch1);
        LinearLayout l9 = getView().findViewById(R.id.b1);
        LinearLayout l10 = getView().findViewById(R.id.w1);
        l1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display1.class);
                intent.putExtra("l1",1);
                startActivity(intent);
            }
        });
        l2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display1.class);
                intent.putExtra("l1",2);
                startActivity(intent);
            }
        });
        l3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display1.class);
                intent.putExtra("l1",3);
                startActivity(intent);
            }
        });
        l4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display1.class);
                intent.putExtra("l1",4);
                startActivity(intent);
            }
        });
        l5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display1.class);
                intent.putExtra("l1",5);
                startActivity(intent);
            }
        });
        l6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display1.class);
                intent.putExtra("l1",6);
                startActivity(intent);
            }
        });
        l7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display2.class);
                intent.putExtra("l1",7);
                startActivity(intent);
            }
        });
        l8.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display2.class);
                intent.putExtra("l1",8);
                startActivity(intent);
            }
        });
        l9.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display2.class);
                intent.putExtra("l1",9);
                startActivity(intent);
            }
        });
        l10.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getActivity(),Display2.class);
                intent.putExtra("l1",10);
                startActivity(intent);
            }
        });
    }
}