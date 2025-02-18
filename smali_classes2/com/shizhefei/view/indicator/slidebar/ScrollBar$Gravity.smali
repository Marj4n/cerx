.class public final enum Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
.super Ljava/lang/Enum;
.source "ScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/slidebar/ScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum BOTTOM_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum CENTENT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum TOP:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum TOP_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->TOP:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 8
    new-instance v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v1, "TOP_FLOAT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->TOP_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 9
    new-instance v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 10
    new-instance v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v1, "BOTTOM_FLOAT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 11
    new-instance v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v1, "CENTENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 12
    new-instance v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v1, "CENTENT_BACKGROUND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 6
    sget-object v8, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->TOP:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    aput-object v8, v1, v2

    sget-object v2, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->TOP_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    aput-object v2, v1, v3

    sget-object v2, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    aput-object v2, v1, v4

    sget-object v2, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    aput-object v2, v1, v5

    sget-object v2, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->$VALUES:[Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    .line 6
    const-class v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object p0
.end method

.method public static values()[Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    .line 6
    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->$VALUES:[Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-virtual {v0}, [Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method
