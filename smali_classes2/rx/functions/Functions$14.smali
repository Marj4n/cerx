.class final Lrx/functions/Functions$14;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromAction(Lrx/functions/Action3;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Action3;


# direct methods
.method constructor <init>(Lrx/functions/Action3;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lrx/functions/Functions$14;->val$f:Lrx/functions/Action3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 379
    invoke-virtual {p0, p1}, Lrx/functions/Functions$14;->call([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 4

    .line 384
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lrx/functions/Functions$14;->val$f:Lrx/functions/Action3;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-interface {v0, v1, v2, p1}, Lrx/functions/Action3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 385
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Action3 expecting 3 arguments."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
