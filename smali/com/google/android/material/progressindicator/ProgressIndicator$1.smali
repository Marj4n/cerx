.class Lcom/google/android/material/progressindicator/ProgressIndicator$1;
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

    .line 973
    iput-object p1, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$1;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/google/android/material/progressindicator/ProgressIndicator$1;->this$0:Lcom/google/android/material/progressindicator/ProgressIndicator;

    invoke-static {v0}, Lcom/google/android/material/progressindicator/ProgressIndicator;->access$000(Lcom/google/android/material/progressindicator/ProgressIndicator;)V

    return-void
.end method
