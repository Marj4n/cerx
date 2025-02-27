package com.shizhefei.view.viewpager;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;

/* loaded from: classes2.dex */
public class RecycleBin {
    private SparseArray<View> currentScrapViews;
    private SparseArray<View>[] scrapViews;
    private int viewTypeCount;
    private View[] activeViews = new View[0];
    private int[] activeViewTypes = new int[0];

    protected boolean shouldRecycleViewType(int i) {
        return i >= 0;
    }

    public void setViewTypeCount(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("Can't have a viewTypeCount < 1");
        }
        SparseArray<View>[] sparseArrayArr = new SparseArray[i];
        for (int i2 = 0; i2 < i; i2++) {
            sparseArrayArr[i2] = new SparseArray<>();
        }
        this.viewTypeCount = i;
        this.currentScrapViews = sparseArrayArr[0];
        this.scrapViews = sparseArrayArr;
    }

    View getScrapView(int i, int i2) {
        if (this.viewTypeCount == 1) {
            return retrieveFromScrap(this.currentScrapViews, i);
        }
        if (i2 < 0) {
            return null;
        }
        SparseArray<View>[] sparseArrayArr = this.scrapViews;
        if (i2 < sparseArrayArr.length) {
            return retrieveFromScrap(sparseArrayArr[i2], i);
        }
        return null;
    }

    void addScrapView(View view, int i, int i2) {
        if (this.viewTypeCount == 1) {
            this.currentScrapViews.put(i, view);
        } else {
            this.scrapViews[i2].put(i, view);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            view.setAccessibilityDelegate(null);
        }
    }

    void scrapActiveViews() {
        View[] viewArr = this.activeViews;
        int[] iArr = this.activeViewTypes;
        boolean z = this.viewTypeCount > 1;
        SparseArray<View> sparseArray = this.currentScrapViews;
        for (int length = viewArr.length - 1; length >= 0; length--) {
            View view = viewArr[length];
            if (view != null) {
                int i = iArr[length];
                viewArr[length] = null;
                iArr[length] = -1;
                if (shouldRecycleViewType(i)) {
                    if (z) {
                        sparseArray = this.scrapViews[i];
                    }
                    sparseArray.put(length, view);
                    if (Build.VERSION.SDK_INT >= 14) {
                        view.setAccessibilityDelegate(null);
                    }
                }
            }
        }
        pruneScrapViews();
    }

    private void pruneScrapViews() {
        int length = this.activeViews.length;
        int i = this.viewTypeCount;
        SparseArray<View>[] sparseArrayArr = this.scrapViews;
        for (int i2 = 0; i2 < i; i2++) {
            SparseArray<View> sparseArray = sparseArrayArr[i2];
            int size = sparseArray.size();
            int i3 = size - length;
            int i4 = size - 1;
            int i5 = 0;
            while (i5 < i3) {
                sparseArray.remove(sparseArray.keyAt(i4));
                i5++;
                i4--;
            }
        }
    }

    static View retrieveFromScrap(SparseArray<View> sparseArray, int i) {
        int size = sparseArray.size();
        if (size <= 0) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = sparseArray.keyAt(i2);
            View view = sparseArray.get(keyAt);
            if (keyAt == i) {
                sparseArray.remove(keyAt);
                return view;
            }
        }
        int i3 = size - 1;
        View valueAt = sparseArray.valueAt(i3);
        sparseArray.remove(sparseArray.keyAt(i3));
        return valueAt;
    }
}
