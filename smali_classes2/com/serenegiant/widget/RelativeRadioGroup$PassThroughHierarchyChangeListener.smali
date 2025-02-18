.class Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "RelativeRadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/RelativeRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/serenegiant/widget/RelativeRadioGroup;


# direct methods
.method private constructor <init>(Lcom/serenegiant/widget/RelativeRadioGroup;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/serenegiant/widget/RelativeRadioGroup;Lcom/serenegiant/widget/RelativeRadioGroup$1;)V
    .locals 0

    .line 357
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/serenegiant/widget/RelativeRadioGroup;)V

    return-void
.end method

.method static synthetic access$202(Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 369
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 370
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 372
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    .line 373
    invoke-static {v1}, Lcom/serenegiant/widget/RelativeRadioGroup;->access$700(Lcom/serenegiant/widget/RelativeRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 377
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/serenegiant/widget/RelativeRadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 386
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/RelativeRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
