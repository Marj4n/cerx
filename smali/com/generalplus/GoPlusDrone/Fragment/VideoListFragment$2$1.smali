.class Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2$1;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2$1;->this$1:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2$1;->this$1:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment$2;->this$0:Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;

    iget-object v0, v0, Lcom/generalplus/GoPlusDrone/Fragment/VideoListFragment;->m_Adapter:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
