.class Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;
.super Landroid/os/Handler;
.source "BannerComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/BannerComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPlayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shizhefei/view/indicator/BannerComponent;


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/BannerComponent;Landroid/os/Looper;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    .line 152
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 157
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 158
    iget-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object p1, p1, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    .line 159
    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/BannerComponent;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 160
    iget-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    invoke-static {p1}, Lcom/shizhefei/view/indicator/BannerComponent;->access$100(Lcom/shizhefei/view/indicator/BannerComponent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    invoke-static {p1}, Lcom/shizhefei/view/indicator/BannerComponent;->access$300(Lcom/shizhefei/view/indicator/BannerComponent;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/BannerComponent$AutoPlayHandler;->this$0:Lcom/shizhefei/view/indicator/BannerComponent;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/BannerComponent;->access$200(Lcom/shizhefei/view/indicator/BannerComponent;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
