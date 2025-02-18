.class public interface abstract Lcom/shizhefei/view/indicator/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;,
        Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;,
        Lcom/shizhefei/view/indicator/Indicator$DataSetObserver;,
        Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
    }
.end annotation


# virtual methods
.method public abstract getCurrentItem()I
.end method

.method public abstract getIndicatorAdapter()Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;
.end method

.method public abstract getItemView(I)Landroid/view/View;
.end method

.method public abstract getOnItemSelectListener()Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;
.end method

.method public abstract getOnTransitionListener()Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;
.end method

.method public abstract getPreSelectItem()I
.end method

.method public abstract isItemClickable()Z
.end method

.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(IFI)V
.end method

.method public abstract setAdapter(Lcom/shizhefei/view/indicator/Indicator$IndicatorAdapter;)V
.end method

.method public abstract setCurrentItem(I)V
.end method

.method public abstract setCurrentItem(IZ)V
.end method

.method public abstract setItemClickable(Z)V
.end method

.method public abstract setOnItemSelectListener(Lcom/shizhefei/view/indicator/Indicator$OnItemSelectedListener;)V
.end method

.method public abstract setOnTransitionListener(Lcom/shizhefei/view/indicator/Indicator$OnTransitionListener;)V
.end method

.method public abstract setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
.end method
