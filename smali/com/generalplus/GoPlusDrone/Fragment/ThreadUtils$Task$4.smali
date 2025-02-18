.class Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$4;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$4;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$4;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->onCancel()V

    .line 1087
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$4;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->access$200(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method
