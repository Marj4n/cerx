.class public Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
.super Ljava/lang/Object;
.source "BottomBarTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roughike/bottombar/BottomBarTab$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activeTabAlpha:F

.field private activeTabColor:I

.field private badgeBackgroundColor:I

.field private barColorWhenSelected:I

.field private hidesBadgeWhenSelected:Z

.field private inActiveTabAlpha:F

.field private inActiveTabColor:I

.field private titleTextAppearance:I

.field private titleTypeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->hidesBadgeWhenSelected:Z

    return-void
.end method

.method static synthetic access$1200(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)F
    .locals 0

    .line 615
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->inActiveTabAlpha:F

    return p0
.end method

.method static synthetic access$1300(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)F
    .locals 0

    .line 615
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->activeTabAlpha:F

    return p0
.end method

.method static synthetic access$1400(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I
    .locals 0

    .line 615
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->inActiveTabColor:I

    return p0
.end method

.method static synthetic access$1500(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I
    .locals 0

    .line 615
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->activeTabColor:I

    return p0
.end method

.method static synthetic access$1600(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I
    .locals 0

    .line 615
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->barColorWhenSelected:I

    return p0
.end method

.method static synthetic access$1700(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I
    .locals 0

    .line 615
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->badgeBackgroundColor:I

    return p0
.end method

.method static synthetic access$1800(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)Z
    .locals 0

    .line 615
    iget-boolean p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->hidesBadgeWhenSelected:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I
    .locals 0

    .line 615
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->titleTextAppearance:I

    return p0
.end method

.method static synthetic access$2000(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)Landroid/graphics/Typeface;
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->titleTypeFace:Landroid/graphics/Typeface;

    return-object p0
.end method


# virtual methods
.method public activeTabAlpha(F)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    .locals 0

    .line 632
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->activeTabAlpha:F

    return-object p0
.end method

.method public activeTabColor(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    .locals 0

    .line 642
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->activeTabColor:I

    return-object p0
.end method

.method public badgeBackgroundColor(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    .locals 0

    .line 652
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->badgeBackgroundColor:I

    return-object p0
.end method

.method public barColorWhenSelected(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    .locals 0

    .line 647
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->barColorWhenSelected:I

    return-object p0
.end method

.method public build()Lcom/roughike/bottombar/BottomBarTab$Config;
    .locals 2

    .line 672
    new-instance v0, Lcom/roughike/bottombar/BottomBarTab$Config;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roughike/bottombar/BottomBarTab$Config;-><init>(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;Lcom/roughike/bottombar/BottomBarTab$1;)V

    return-object v0
.end method

.method public hideBadgeWhenSelected(Z)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    .locals 0

    .line 657
    iput-boolean p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->hidesBadgeWhenSelected:Z

    return-object p0
.end method

.method public inActiveTabAlpha(F)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    .locals 0

    .line 627
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->inActiveTabAlpha:F

    return-object p0
.end method

.method public inActiveTabColor(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    .locals 0

    .line 637
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->inActiveTabColor:I

    return-object p0
.end method

.method public titleTextAppearance(I)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    .locals 0

    .line 662
    iput p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->titleTextAppearance:I

    return-object p0
.end method

.method public titleTypeFace(Landroid/graphics/Typeface;)Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->titleTypeFace:Landroid/graphics/Typeface;

    return-object p0
.end method
