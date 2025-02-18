.class public enum Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
.super Ljava/lang/Enum;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "UncaughtThrowableStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

.field public static final DEFAULT:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

.field public static final enum IGNORE:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

.field public static final enum LOG:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

.field public static final enum THROW:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 281
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->IGNORE:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .line 285
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$1;

    const-string v1, "LOG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->LOG:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .line 296
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$2;

    const-string v1, "THROW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->THROW:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .line 277
    sget-object v5, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->IGNORE:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    aput-object v5, v1, v2

    sget-object v2, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->LOG:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->$VALUES:[Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .line 307
    sput-object v2, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/bumptech/glide/load/engine/executor/GlideExecutor$1;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
    .locals 1

    .line 277
    const-class v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
    .locals 1

    .line 277
    sget-object v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->$VALUES:[Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    return-object v0
.end method


# virtual methods
.method protected handle(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
