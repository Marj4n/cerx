.class final Lcom/baidu/trace/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field private synthetic a:Lcom/baidu/trace/ak;


# direct methods
.method constructor <init>(Lcom/baidu/trace/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/al;->a:Lcom/baidu/trace/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/trace/al;->a:Lcom/baidu/trace/ak;

    invoke-static {v0}, Lcom/baidu/trace/ak;->a(Lcom/baidu/trace/ak;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/trace/al;->a:Lcom/baidu/trace/ak;

    invoke-static {v1, p1, v0}, Lcom/baidu/trace/ak;->a(Lcom/baidu/trace/ak;ILandroid/location/GpsStatus;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/trace/al;->a:Lcom/baidu/trace/ak;

    invoke-static {v0}, Lcom/baidu/trace/ak;->a(Lcom/baidu/trace/ak;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/trace/al;->a:Lcom/baidu/trace/ak;

    invoke-static {v1, p1, v0}, Lcom/baidu/trace/ak;->a(Lcom/baidu/trace/ak;ILandroid/location/GpsStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/baidu/trace/al;->a:Lcom/baidu/trace/ak;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/trace/ak;->a(Lcom/baidu/trace/ak;I)I

    return-void
.end method
