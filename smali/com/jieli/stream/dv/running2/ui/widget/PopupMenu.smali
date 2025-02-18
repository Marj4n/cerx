.class public Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;,
        Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mGravity:I

.field private final mLocationLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private parentView:Landroid/view/View;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private resIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->tag:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->resIds:Ljava/util/Map;

    .line 152
    new-instance v0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;

    invoke-direct {v0, p0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$2;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)V

    iput-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mLocationLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->tag:Ljava/lang/String;

    const-string p2, "PopupMenu context is null!"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->resIds:Ljava/util/Map;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/jieli/stream/dv/running2/R$layout;->popup_menu_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mContentView:Landroid/view/View;

    .line 55
    sget p2, Lcom/jieli/stream/dv/running2/R$id;->pop_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 56
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;

    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$PopupAdapter;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;Landroid/content/Context;)V

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance p2, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;

    invoke-direct {p2, p0}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$1;-><init>(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mContentView:Landroid/view/View;

    const/16 v0, 0x64

    const/4 v1, -0x2

    invoke-direct {p1, p2, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    .line 74
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mLocationLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 75
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/util/Map;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->resIds:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->listener:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Landroid/widget/PopupWindow;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mGravity:I

    return p0
.end method

.method static synthetic access$500(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->parentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;ILandroid/widget/PopupWindow;Landroid/view/View;)Landroid/graphics/PointF;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->calculatePopupLocation(ILandroid/widget/PopupWindow;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->tag:Ljava/lang/String;

    return-object p0
.end method

.method private calculatePopupLocation(ILandroid/widget/PopupWindow;Landroid/view/View;)Landroid/graphics/PointF;
    .locals 5

    .line 167
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 169
    invoke-static {p3}, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->calculateRectInWindow(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p3

    .line 170
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v2, 0x11

    const/high16 v3, 0x40000000    # 2.0f

    if-eq p1, v2, :cond_4

    const/16 v2, 0x30

    const/4 v4, 0x0

    if-eq p1, v2, :cond_3

    const/16 v2, 0x50

    if-eq p1, v2, :cond_2

    const v2, 0x800003

    if-eq p1, v2, :cond_1

    const v2, 0x800005

    if-ne p1, v2, :cond_0

    .line 178
    iget p1, p3, Landroid/graphics/RectF;->right:F

    int-to-float p3, v4

    add-float/2addr p1, p3

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 179
    iget p1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Gravity must have be CENTER, START, END, TOP or BOTTOM."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_1
    iget p1, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p1, p3

    int-to-float p3, v4

    sub-float/2addr p1, p3

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 175
    iget p1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 186
    :cond_2
    iget p1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 187
    iget p1, p3, Landroid/graphics/RectF;->bottom:F

    int-to-float p2, v4

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 182
    :cond_3
    iget p1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 183
    iget p1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    int-to-float p2, v4

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 190
    :cond_4
    iget p1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v3

    sub-float/2addr p1, p3

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 191
    iget p1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    sub-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method private static calculateRectInWindow(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 202
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 203
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    invoke-direct {v1, v3, v5, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private static locateView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    .line 111
    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 112
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 113
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 114
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :catch_0
    return-object v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setOnPopItemClickListener(Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->listener:Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu$OnPopItemClickListener;

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->tag:Ljava/lang/String;

    const-string v0, "PopupMenu popupWindow is null!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->parentView:Landroid/view/View;

    .line 126
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 128
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 130
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public showAsRight(Landroid/view/View;)V
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 207
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->tag:Ljava/lang/String;

    const-string v0, "PopupMenu popupWindow is null!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x800005

    .line 210
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mGravity:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 217
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->parentView:Landroid/view/View;

    .line 219
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    aget v3, v0, v2

    iget-object v4, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mContext:Landroid/content/Context;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/jieli/stream/dv/running2/util/AppUtils;->dp2px(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 221
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method public showAsUp(Landroid/view/View;)V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->tag:Ljava/lang/String;

    const-string v0, "PopupMenu popupWindow is null!"

    invoke-static {p1, v0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x30

    .line 138
    iput v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->mGravity:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 145
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->parentView:Landroid/view/View;

    .line 147
    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 149
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 84
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->tag:Ljava/lang/String;

    const-string p2, "PopupMenu popupWindow is null!"

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->parentView:Landroid/view/View;

    .line 90
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 91
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 93
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 95
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method
