.class public final enum Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
.super Ljava/lang/Enum;
.source "LimitLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/LimitLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LimitLabelPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field public static final enum LEFT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field public static final enum LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field public static final enum RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field public static final enum RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    new-instance v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    const-string v1, "LEFT_BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    new-instance v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    const-string v1, "RIGHT_TOP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    new-instance v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    const-string v1, "RIGHT_BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 42
    sget-object v6, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    aput-object v6, v1, v2

    sget-object v2, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    aput-object v2, v1, v3

    sget-object v2, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->$VALUES:[Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .locals 1

    .line 42
    const-class v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .locals 1

    .line 42
    sget-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->$VALUES:[Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    return-object v0
.end method
