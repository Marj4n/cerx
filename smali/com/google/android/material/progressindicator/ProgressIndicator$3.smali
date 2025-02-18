.class Lcom/google/android/material/progressindicator/ProgressIndicator$3;
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

    .line 1001
    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1005
    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setIndeterminate(Z)V

    .line 1008
    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setProgressCompat(IZ)V

    .line 1009
    iget-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/ProgressIndicator;->access$300(Lcom/google/android/material/progressindicator/ProgressIndicator;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$3;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-static {v1}, Lcom/google/android/material/progressindicator/ProgressIndicator;->access$400(Lcom/google/android/material/progressindicator/ProgressIndicator;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/progressindicator/ProgressIndicator;->setProgressCompat(IZ)V

    return-void
.end method
