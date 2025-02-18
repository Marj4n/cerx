.class final Lcom/serenegiant/widget/DialogPreferenceV7$SavedState$1;
.super Ljava/lang/Object;
.source "DialogPreferenceV7.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;
    .locals 1

    .line 491
    new-instance v0, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;

    invoke-direct {v0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 489
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;
    .locals 0

    .line 495
    new-array p1, p1, [Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 489
    invoke-virtual {p0, p1}, Lcom/serenegiant/widget/DialogPreferenceV7$SavedState$1;->newArray(I)[Lcom/serenegiant/widget/DialogPreferenceV7$SavedState;

    move-result-object p1

    return-object p1
.end method
