.class public final Lrx/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Notification$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ON_COMPLETED:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final kind:Lrx/Notification$Kind;

.field private final throwable:Ljava/lang/Throwable;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-object v0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-void
.end method

.method private constructor <init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification$Kind;",
            "TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lrx/Notification;->value:Ljava/lang/Object;

    .line 79
    iput-object p3, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    .line 80
    iput-object p1, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    return-void
.end method

.method public static createOnCompleted()Lrx/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Notification<",
            "TT;>;"
        }
    .end annotation

    .line 62
    sget-object v0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-object v0
.end method

.method public static createOnCompleted(Ljava/lang/Class;)Lrx/Notification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lrx/Notification<",
            "TT;>;"
        }
    .end annotation

    .line 74
    sget-object p0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-object p0
.end method

.method public static createOnError(Ljava/lang/Throwable;)Lrx/Notification;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Notification<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createOnNext(Ljava/lang/Object;)Lrx/Notification;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Notification<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lrx/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lrx/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 205
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 209
    :cond_2
    check-cast p1, Lrx/Notification;

    .line 210
    invoke-virtual {p1}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v2

    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v0

    .line 214
    :cond_3
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 218
    :cond_4
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 222
    :cond_5
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lrx/Notification;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_6

    return v0

    .line 226
    :cond_6
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lrx/Notification;->hasThrowable()Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_7
    return v1
.end method

.method public getKind()Lrx/Notification$Kind;
    .locals 1

    .line 126
    iget-object v0, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 89
    iget-object v0, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lrx/Notification;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasThrowable()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lrx/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/Notification;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 187
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Notification$Kind;->hashCode()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 191
    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public isOnCompleted()Z
    .locals 2

    .line 144
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnError()Z
    .locals 2

    .line 135
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnNext()Z
    .locals 2

    .line 153
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "]"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
