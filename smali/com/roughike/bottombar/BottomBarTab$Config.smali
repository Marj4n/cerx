.class public Lcom/roughike/bottombar/BottomBarTab$Config;
.super Ljava/lang/Object;
.source "BottomBarTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roughike/bottombar/BottomBarTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roughike/bottombar/BottomBarTab$Config$Builder;
    }
.end annotation


# instance fields
.field private final activeTabAlpha:F

.field private final activeTabColor:I

.field private final badgeBackgroundColor:I

.field private badgeHidesWhenSelected:Z

.field private final barColorWhenSelected:I

.field private final inActiveTabAlpha:F

.field private final inActiveTabColor:I

.field private final titleTextAppearance:I

.field private final titleTypeFace:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)V
    .locals 1

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 601
    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->badgeHidesWhenSelected:Z

    .line 604
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->access$1200(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)F

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->inActiveTabAlpha:F

    .line 605
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->access$1300(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)F

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->activeTabAlpha:F

    .line 606
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->access$1400(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->inActiveTabColor:I

    .line 607
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->access$1500(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->activeTabColor:I

    .line 608
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->access$1600(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->barColorWhenSelected:I

    .line 609
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->access$1700(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->badgeBackgroundColor:I

    .line 610
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->access$1800(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->badgeHidesWhenSelected:Z

    .line 611
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->access$1900(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)I

    move-result v0

    iput v0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->titleTextAppearance:I

    .line 612
    invoke-static {p1}, Lcom/roughike/bottombar/BottomBarTab$Config$Builder;->access$2000(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->titleTypeFace:Landroid/graphics/Typeface;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;Lcom/roughike/bottombar/BottomBarTab$1;)V
    .locals 0

    .line 592
    invoke-direct {p0, p1}, Lcom/roughike/bottombar/BottomBarTab$Config;-><init>(Lcom/roughike/bottombar/BottomBarTab$Config$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/roughike/bottombar/BottomBarTab$Config;)F
    .locals 0

    .line 592
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->inActiveTabAlpha:F

    return p0
.end method

.method static synthetic access$100(Lcom/roughike/bottombar/BottomBarTab$Config;)F
    .locals 0

    .line 592
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->activeTabAlpha:F

    return p0
.end method

.method static synthetic access$200(Lcom/roughike/bottombar/BottomBarTab$Config;)I
    .locals 0

    .line 592
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->inActiveTabColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/roughike/bottombar/BottomBarTab$Config;)I
    .locals 0

    .line 592
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->activeTabColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/roughike/bottombar/BottomBarTab$Config;)I
    .locals 0

    .line 592
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->barColorWhenSelected:I

    return p0
.end method

.method static synthetic access$500(Lcom/roughike/bottombar/BottomBarTab$Config;)I
    .locals 0

    .line 592
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->badgeBackgroundColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/roughike/bottombar/BottomBarTab$Config;)Z
    .locals 0

    .line 592
    iget-boolean p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->badgeHidesWhenSelected:Z

    return p0
.end method

.method static synthetic access$700(Lcom/roughike/bottombar/BottomBarTab$Config;)I
    .locals 0

    .line 592
    iget p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->titleTextAppearance:I

    return p0
.end method

.method static synthetic access$800(Lcom/roughike/bottombar/BottomBarTab$Config;)Landroid/graphics/Typeface;
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/roughike/bottombar/BottomBarTab$Config;->titleTypeFace:Landroid/graphics/Typeface;

    return-object p0
.end method
