.class Lcom/google/android/material/progressindicator/ProgressIndicator$4;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "ProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/ProgressIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/ProgressIndicator;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$4;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1022
    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 1023
    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$4;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/ProgressIndicator;->access$500(Lcom/google/android/material/progressindicator/ProgressIndicator;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$4;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/ProgressIndicator;->access$600(Lcom/google/android/material/progressindicator/ProgressIndicator;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1026
    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$4;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/ProgressIndicator;->access$700(Lcom/google/android/material/progressindicator/ProgressIndicator;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setVisibility(I)V

    :cond_0
    return-void
.end method
