package com.baidu.mapapi.map;

import android.view.View;
import com.baidu.mapapi.model.LatLng;

/* loaded from: classes.dex */
public class InfoWindow {
    BitmapDescriptor a;
    View b;
    LatLng c;
    OnInfoWindowClickListener d;
    int e;

    public interface OnInfoWindowClickListener {
        void onInfoWindowClick();
    }

    public InfoWindow(View view, LatLng latLng, int i) {
        if (view == null || latLng == null) {
            throw new IllegalArgumentException("view and position can not be null");
        }
        this.b = view;
        this.c = latLng;
        this.e = i;
    }

    public InfoWindow(BitmapDescriptor bitmapDescriptor, LatLng latLng, int i, OnInfoWindowClickListener onInfoWindowClickListener) {
        if (bitmapDescriptor == null || latLng == null) {
            throw new IllegalArgumentException("bitmapDescriptor and position can not be null");
        }
        this.a = bitmapDescriptor;
        this.c = latLng;
        this.d = onInfoWindowClickListener;
        this.e = i;
    }
}
