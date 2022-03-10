package com.example.dreamfurniture;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SbcFragment extends Fragment {
    private List<String> listDataHeader;
    private HashMap<String, List<String>> listDataChild;
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_sbc,container,false);
    }
    public void onViewCreated(final View view, @Nullable Bundle savedInstanceState)
    {
        ExpandableListView expListView = getView().findViewById(R.id.lvExp);

        // preparing list data
        prepareListData();

        ExpandableListAdapter listAdapter = new ExpandableListAdapter(getActivity(), listDataHeader, listDataChild);

        // setting list adapter
        expListView.setAdapter(listAdapter);
        int ans = listAdapter.getGroupCount();
        for(int i =0;i<ans;i++)
        {
            expListView.expandGroup(i);
        }

        // list view Group click listener
        expListView.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener() {

            @Override
            public boolean onGroupClick(ExpandableListView parent, View v,
                                        int groupPosition, long id) {

                return true;
            }
        });

        // List  dl view on child click listener
        expListView.setOnChildClickListener(new ExpandableListView.OnChildClickListener() {

            @Override
            public boolean onChildClick(ExpandableListView parent, View v,
                                        int groupPosition, int childPosition, long id) {
                if(groupPosition == 0)
                {
                    if(childPosition==0)
                    {
                        Intent i1 = new Intent(getContext(),Display1.class);
                        i1.putExtra("l1",1);
                        startActivity(i1);
                    }
                    if(childPosition==1)
                    {
                        Intent i1 = new Intent(getContext(),Display1.class);
                        i1.putExtra("l1",2);
                        startActivity(i1);
                    }
                }
                if(groupPosition==1)
                {
                    if(childPosition==0)
                    {
                        Intent i1 = new Intent(getContext(),Display1.class);
                        i1.putExtra("l1",3);
                        startActivity(i1);
                    }
                    if(childPosition==1)
                    {
                        Intent i1 = new Intent(getContext(),Display1.class);
                        i1.putExtra("l2",4);
                        startActivity(i1);
                    }
                    if(childPosition==2)
                    {
                        Intent i1 = new Intent(getContext(),Display1.class);
                        i1.putExtra("l1",5);
                        startActivity(i1);
                    }
                    if(childPosition==3)
                    {
                        Intent i1 = new Intent(getContext(),Display1.class);
                        i1.putExtra("l1",6);
                        startActivity(i1);
                    }
                }
                if(groupPosition==2)
                {
                    if(childPosition==0)
                    {
                        Intent i1 = new Intent(getContext(),Display2.class);
                        i1.putExtra("l2",1);
                        startActivity(i1);
                    }
                    if(childPosition==1)
                    {
                        Intent i1 = new Intent(getContext(),Display2.class);
                        i1.putExtra("l2",2);
                        startActivity(i1);
                    }
                }
                if(groupPosition==3)
                {
                    if(childPosition==0)
                    {
                        Intent i1 = new Intent(getContext(),Display2.class);
                        i1.putExtra("l2",3);
                        startActivity(i1);
                    }
                    if(childPosition==1)
                    {
                        Intent i1 = new Intent(getContext(),Display2.class);
                        i1.putExtra("l2",4);
                        startActivity(i1);
                    }
                }
                return false;
            }
        });
    }
    private void prepareListData() {
        listDataHeader = new ArrayList<>();
        listDataChild = new HashMap<>();

        // Adding child data
        listDataHeader.add("LIVING STORAGE");
        listDataHeader.add("SOFA SETS");
        listDataHeader.add("BED ROOM");
        listDataHeader.add("KITCHEN");

        // Adding child data
        List<String> stm = new ArrayList<>();
        stm.add("WALL UNIT");
        stm.add("TV UNIT");

        List<String> sfm = new ArrayList<>();
        sfm.add("SECTIONAL SOFA");
        sfm.add("SOFA");
        sfm.add("SOFA CHAIRS");
        sfm.add("OTTOMANS");

        List<String> brm = new ArrayList<>();
        brm.add("BED");
        brm.add("WARDROBE");

        List<String> ktm = new ArrayList<>();
        ktm.add("DINING TABLE");
        ktm.add("CHAIRS");

        listDataChild.put(listDataHeader.get(0), stm); // Header, Child data
        listDataChild.put(listDataHeader.get(1), sfm);
        listDataChild.put(listDataHeader.get(2), brm);
        listDataChild.put(listDataHeader.get(3), ktm);
    }
}
