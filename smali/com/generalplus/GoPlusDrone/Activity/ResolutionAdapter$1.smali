.class Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;
.super Ljava/lang/Object;
.source "ResolutionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->onBindViewHolder(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;

.field final synthetic val$holder:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;

    iput-object p2, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;->val$holder:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;->val$holder:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->access$100(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;I)V

    .line 57
    iget-object p1, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;->this$0:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;

    invoke-static {p1}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;->access$200(Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter;)Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;

    move-result-object p1

    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$1;->val$holder:Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;

    invoke-virtual {v0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$RecyclerHolder;->getRadio()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/generalplus/GoPlusDrone/Activity/ResolutionAdapter$OnClickItem;->onClick(Ljava/lang/String;)V

    return-void
.end method
