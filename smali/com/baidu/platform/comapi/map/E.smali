.class public Lcom/baidu/platform/comapi/map/E;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/E$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String;


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:D

.field public e:D

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:Lcom/baidu/mapapi/map/WinRound;

.field public k:Lcom/baidu/platform/comapi/map/E$a;

.field public l:Z

.field public m:D

.field public n:D

.field public o:I

.field public p:Ljava/lang/String;

.field public q:F

.field public r:Z

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/platform/comapi/map/E;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/E;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/baidu/platform/comapi/map/E;->a:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comapi/map/E;->b:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/E;->c:I

    const-wide v1, 0x4168b73a40000000L    # 1.2958162E7

    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/E;->d:D

    const-wide v1, 0x415268ccc0000000L    # 4825907.0

    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/E;->e:D

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/E;->h:J

    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/E;->i:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/platform/comapi/map/E;->f:I

    iput v1, p0, Lcom/baidu/platform/comapi/map/E;->g:I

    new-instance v1, Lcom/baidu/mapapi/map/WinRound;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/WinRound;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    new-instance v1, Lcom/baidu/platform/comapi/map/E$a;

    invoke-direct {v1, p0}, Lcom/baidu/platform/comapi/map/E$a;-><init>(Lcom/baidu/platform/comapi/map/E;)V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/E;->l:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/map/e;)Landroid/os/Bundle;
    .locals 6

    iget v0, p0, Lcom/baidu/platform/comapi/map/E;->a:F

    iget v1, p1, Lcom/baidu/platform/comapi/map/e;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/baidu/platform/comapi/map/e;->b:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/E;->a:F

    :cond_0
    iget v0, p0, Lcom/baidu/platform/comapi/map/E;->a:F

    iget v1, p1, Lcom/baidu/platform/comapi/map/e;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget p1, p1, Lcom/baidu/platform/comapi/map/e;->a:F

    iput p1, p0, Lcom/baidu/platform/comapi/map/E;->a:F

    :cond_1
    :goto_0
    iget p1, p0, Lcom/baidu/platform/comapi/map/E;->b:I

    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/baidu/platform/comapi/map/E;->b:I

    goto :goto_0

    :cond_2
    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/baidu/platform/comapi/map/E;->b:I

    iget p1, p0, Lcom/baidu/platform/comapi/map/E;->c:I

    const/4 v0, 0x0

    if-lez p1, :cond_3

    iput v0, p0, Lcom/baidu/platform/comapi/map/E;->c:I

    :cond_3
    iget p1, p0, Lcom/baidu/platform/comapi/map/E;->c:I

    const/16 v1, -0x2d

    if-ge p1, v1, :cond_4

    iput v1, p0, Lcom/baidu/platform/comapi/map/E;->c:I

    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/baidu/platform/comapi/map/E;->a:F

    float-to-double v1, v1

    const-string v3, "level"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget v1, p0, Lcom/baidu/platform/comapi/map/E;->b:I

    int-to-double v1, v1

    const-string v3, "rotation"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget v1, p0, Lcom/baidu/platform/comapi/map/E;->c:I

    int-to-double v1, v1

    const-string v3, "overlooking"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/E;->d:D

    const-string v3, "centerptx"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/E;->e:D

    const-string v3, "centerpty"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->left:I

    const-string v2, "left"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->right:I

    const-string v2, "right"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->top:I

    const-string v2, "top"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    const-string v2, "bottom"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/baidu/platform/comapi/map/E;->f:I

    if-ltz v1, :cond_5

    iget v2, p0, Lcom/baidu/platform/comapi/map/E;->g:I

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->right:I

    if-gt v1, v2, :cond_5

    iget v1, p0, Lcom/baidu/platform/comapi/map/E;->g:I

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    if-gt v1, v2, :cond_5

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->right:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->right:I

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v3, v3, Lcom/baidu/mapapi/map/WinRound;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/baidu/platform/comapi/map/E;->f:I

    sub-int/2addr v3, v1

    iget v1, p0, Lcom/baidu/platform/comapi/map/E;->g:I

    sub-int/2addr v1, v2

    int-to-long v2, v3

    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/E;->h:J

    neg-int v1, v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/baidu/platform/comapi/map/E;->i:J

    const-string v1, "xoffset"

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/E;->i:J

    const-string v3, "yoffset"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/E$a;->e:Lcom/baidu/mapapi/model/inner/Point;

    iget v1, v1, Lcom/baidu/mapapi/model/inner/Point;->x:I

    const-string v2, "lbx"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/E$a;->e:Lcom/baidu/mapapi/model/inner/Point;

    iget v1, v1, Lcom/baidu/mapapi/model/inner/Point;->y:I

    const-string v2, "lby"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/E$a;->f:Lcom/baidu/mapapi/model/inner/Point;

    iget v1, v1, Lcom/baidu/mapapi/model/inner/Point;->x:I

    const-string v2, "ltx"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/E$a;->f:Lcom/baidu/mapapi/model/inner/Point;

    iget v1, v1, Lcom/baidu/mapapi/model/inner/Point;->y:I

    const-string v2, "lty"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/E$a;->g:Lcom/baidu/mapapi/model/inner/Point;

    iget v1, v1, Lcom/baidu/mapapi/model/inner/Point;->x:I

    const-string v2, "rtx"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/E$a;->g:Lcom/baidu/mapapi/model/inner/Point;

    iget v1, v1, Lcom/baidu/mapapi/model/inner/Point;->y:I

    const-string v2, "rty"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/E$a;->h:Lcom/baidu/mapapi/model/inner/Point;

    iget v1, v1, Lcom/baidu/mapapi/model/inner/Point;->x:I

    const-string v2, "rbx"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/E$a;->h:Lcom/baidu/mapapi/model/inner/Point;

    iget v1, v1, Lcom/baidu/mapapi/model/inner/Point;->y:I

    const-string v2, "rby"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/E;->l:Z

    const-string v2, "bfpp"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    const-string v2, "animation"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/baidu/platform/comapi/map/E;->o:I

    const-string v2, "animatime"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->p:Ljava/lang/String;

    const-string v2, "panoid"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "autolink"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/baidu/platform/comapi/map/E;->q:F

    const-string v1, "siangle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/E;->r:Z

    const-string v1, "isbirdeye"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/baidu/platform/comapi/map/E;->s:I

    const-string v1, "ssext"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "level"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/E;->a:F

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/E;->b:I

    const-string v0, "overlooking"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/E;->c:I

    const-string v0, "centerptx"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/E;->d:D

    const-string v0, "centerpty"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/E;->e:D

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    const-string v1, "left"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/WinRound;->left:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    const-string v1, "right"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/WinRound;->right:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    const-string v1, "top"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/WinRound;->top:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    const-string v0, "xoffset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/E;->h:J

    const-string v0, "yoffset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/E;->i:J

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v0, v0, Lcom/baidu/mapapi/map/WinRound;->right:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v0, v0, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v0, v0, Lcom/baidu/mapapi/map/WinRound;->right:I

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/E;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v2, v2, Lcom/baidu/mapapi/map/WinRound;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/E;->h:J

    long-to-int v3, v2

    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/E;->i:J

    neg-long v4, v4

    long-to-int v2, v4

    add-int/2addr v3, v0

    iput v3, p0, Lcom/baidu/platform/comapi/map/E;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/baidu/platform/comapi/map/E;->g:I

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    const-string v1, "gleft"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/E$a;->a:J

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    const-string v1, "gright"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/E$a;->b:J

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    const-string v1, "gtop"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/E$a;->c:J

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    const-string v1, "gbottom"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/E$a;->d:J

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/E$a;->a:J

    const-wide/32 v2, -0x131bf84

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iput-wide v2, v0, Lcom/baidu/platform/comapi/map/E$a;->a:J

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/E$a;->b:J

    const-wide/32 v4, 0x131bf84

    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iput-wide v4, v0, Lcom/baidu/platform/comapi/map/E$a;->b:J

    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/E$a;->c:J

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iput-wide v4, v0, Lcom/baidu/platform/comapi/map/E$a;->c:J

    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/E$a;->d:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iput-wide v2, v0, Lcom/baidu/platform/comapi/map/E$a;->d:J

    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/E$a;->e:Lcom/baidu/mapapi/model/inner/Point;

    const-string v1, "lbx"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/E$a;->e:Lcom/baidu/mapapi/model/inner/Point;

    const-string v1, "lby"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/E$a;->f:Lcom/baidu/mapapi/model/inner/Point;

    const-string v1, "ltx"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/E$a;->f:Lcom/baidu/mapapi/model/inner/Point;

    const-string v1, "lty"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/E$a;->g:Lcom/baidu/mapapi/model/inner/Point;

    const-string v1, "rtx"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/E$a;->g:Lcom/baidu/mapapi/model/inner/Point;

    const-string v1, "rty"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/E$a;->h:Lcom/baidu/mapapi/model/inner/Point;

    const-string v1, "rbx"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/E;->k:Lcom/baidu/platform/comapi/map/E$a;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/E$a;->h:Lcom/baidu/mapapi/model/inner/Point;

    const-string v1, "rby"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    const-string v0, "bfpp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/E;->l:Z

    const-string v0, "adapterzoomunit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/platform/comapi/map/E;->m:D

    const-string v0, "zoomunit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/platform/comapi/map/E;->n:D

    const-string v0, "panoid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/E;->p:Ljava/lang/String;

    const-string v0, "siangle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comapi/map/E;->q:F

    const-string v0, "isbirdeye"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/E;->r:Z

    const-string v0, "ssext"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/platform/comapi/map/E;->s:I

    return-void
.end method
