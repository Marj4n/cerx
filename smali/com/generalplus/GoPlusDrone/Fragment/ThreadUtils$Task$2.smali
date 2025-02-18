.class Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$2;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;Ljava/lang/Object;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;->onSuccess(Ljava/lang/Object;)V

    .line 1057
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils;->access$200(Lcom/generalplus/GoPlusDrone/Fragment/ThreadUtils$Task;)V

    return-void
.end method
