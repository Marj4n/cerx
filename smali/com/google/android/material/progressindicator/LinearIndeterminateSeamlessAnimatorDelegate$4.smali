.class final Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate$4;
.super Landroid/util/Property;
.source "LinearIndeterminateSeamlessAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;)Ljava/lang/Float;
    .locals 0

    .line 255
    invoke-static {p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;->access$000(Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate$4;->get(Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;Ljava/lang/Float;)V
    .locals 0

    .line 260
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;->setLineConnectPoint2Fraction(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 252
    check-cast p1, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate$4;->set(Lcom/google/android/material/progressindicator/LinearIndeterminateSeamlessAnimatorDelegate;Ljava/lang/Float;)V

    return-void
.end method
