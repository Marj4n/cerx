package com.baidu.mapapi.map;

import android.graphics.drawable.Drawable;
import com.baidu.platform.comapi.map.EnumC0077h;

/* loaded from: classes.dex */
public class ItemizedOverlay extends Overlay {
    MapView a;

    public ItemizedOverlay(Drawable drawable, MapView mapView) {
        this.type = EnumC0077h.marker;
        this.a = mapView;
    }

    public void addItem(OverlayOptions overlayOptions) {
        if (overlayOptions == null || overlayOptions == null) {
            return;
        }
        this.a.getMap().addOverlay(overlayOptions);
    }

    public void reAddAll() {
    }

    public void removeAll() {
        this.a.getMap().clear();
    }
}
