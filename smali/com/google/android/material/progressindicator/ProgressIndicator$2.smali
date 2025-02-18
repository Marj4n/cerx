.class Lcom/google/android/material/progressindicator/ProgressIndicator$2;
.super Ljava/lang/Object;
.source "ProgressIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 986
    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$2;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 989
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$2;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-static {v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->access$100(Lcom/google/android/material/progressindicator/ProgressIndicator;)V

    .line 990
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$2;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/progressindicator/ProgressIndicator;->access$202(Lcom/google/android/material/progressindicator/ProgressIndicator;J)J

    return-void
.end method
