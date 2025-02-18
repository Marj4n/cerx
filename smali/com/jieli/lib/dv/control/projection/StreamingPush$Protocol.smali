.class public final enum Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/projection/StreamingPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TCP:Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

.field public static final enum UDP:Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

.field private static final synthetic a:[Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    const-string v1, "TCP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;->TCP:Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    new-instance v0, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    const-string v1, "UDP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;->UDP:Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    .line 11
    sget-object v4, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;->TCP:Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;->a:[Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;
    .locals 1

    .line 11
    const-class v0, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    return-object p0
.end method

.method public static values()[Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;
    .locals 1

    .line 11
    sget-object v0, Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;->a:[Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    invoke-virtual {v0}, [Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jieli/lib/dv/control/projection/StreamingPush$Protocol;

    return-object v0
.end method
