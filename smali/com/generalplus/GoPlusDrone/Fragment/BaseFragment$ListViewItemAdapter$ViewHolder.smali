.class Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public m_iVideo:Landroid/widget/ImageView;

.field public myImage:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

.field public txtFileName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter$ViewHolder;->this$1:Lcom/generalplus/GoPlusDrone/Fragment/BaseFragment$ListViewItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
