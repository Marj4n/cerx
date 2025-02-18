.class public Lgeneralplus/com/GPCamLib/IncomingCall;
.super Landroid/content/BroadcastReceiver;
.source "IncomingCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "IncomingCall"

    .line 14
    iput-object v0, p0, Lgeneralplus/com/GPCamLib/IncomingCall;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lgeneralplus/com/GPCamLib/IncomingCall;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lgeneralplus/com/GPCamLib/IncomingCall;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 18
    iput-object p1, p0, Lgeneralplus/com/GPCamLib/IncomingCall;->m_Context:Landroid/content/Context;

    :try_start_0
    const-string p2, "phone"

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 25
    new-instance p2, Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;-><init>(Lgeneralplus/com/GPCamLib/IncomingCall;Lgeneralplus/com/GPCamLib/IncomingCall$1;)V

    const/16 v0, 0x20

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    iget-object p2, p0, Lgeneralplus/com/GPCamLib/IncomingCall;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
