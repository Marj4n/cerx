.class public Lcom/jieli/stream/dv/running2/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/jieli/stream/dv/running2/util/ToastUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jieli/stream/dv/running2/util/ToastUtil;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/jieli/stream/dv/running2/util/ToastUtil;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static showToast(Ljava/lang/String;I)V
    .locals 3

    .line 40
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ToastUtil;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    sget-object p0, Lcom/jieli/stream/dv/running2/util/ToastUtil;->tag:Ljava/lang/String;

    const-string p1, "contextWeakReference.get is null "

    invoke-static {p0, p1}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    .line 50
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ToastUtil;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 55
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/jieli/stream/dv/running2/util/ToastUtil;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", duration="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "u have not init toast utils"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showToastLong(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-static {p0, v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static showToastShort(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, v0}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToast(Ljava/lang/String;I)V

    return-void
.end method
