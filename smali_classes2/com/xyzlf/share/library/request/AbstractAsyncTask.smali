.class public abstract Lcom/xyzlf/share/library/request/AbstractAsyncTask;
.super Landroid/os/AsyncTask;
.source "AbstractAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->doLoadData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->data:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->exception:Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    iput-object p1, p0, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->data:Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->exception:Ljava/lang/Exception;

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->getData()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract doLoadData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onFinally()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->exception:Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->onException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 43
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->onFinally()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/xyzlf/share/library/request/AbstractAsyncTask;->onFinally()V

    throw p1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method
