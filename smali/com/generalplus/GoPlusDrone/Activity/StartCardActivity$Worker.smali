.class Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;
.super Ljava/lang/Thread;
.source "StartCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private exit:Ljava/lang/Integer;

.field private final process:Ljava/lang/Process;

.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;


# direct methods
.method private constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;Ljava/lang/Process;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->this$0:Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->process:Ljava/lang/Process;

    return-void
.end method

.method synthetic constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;Ljava/lang/Process;Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;-><init>(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity;Ljava/lang/Process;)V

    return-void
.end method

.method static synthetic access$300(Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;)Ljava/lang/Integer;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->exit:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/StartCardActivity$Worker;->exit:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
