.class public final enum Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
.super Ljava/lang/Enum;
.source "AuthenticatingSMTPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUTH_METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

.field public static final enum XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 296
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 298
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    const-string v1, "CRAM_MD5"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 300
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    const-string v1, "LOGIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 302
    new-instance v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    const-string v1, "XOAUTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    .line 293
    sget-object v6, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    aput-object v6, v1, v2

    sget-object v2, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getAuthName(Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;)Ljava/lang/String;
    .locals 1

    .line 311
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->PLAIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PLAIN"

    return-object p0

    .line 313
    :cond_0
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->CRAM_MD5:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "CRAM-MD5"

    return-object p0

    .line 315
    :cond_1
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->LOGIN:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "LOGIN"

    return-object p0

    .line 317
    :cond_2
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->XOAUTH:Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "XOAUTH"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    .locals 1

    .line 293
    const-class v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;
    .locals 1

    .line 293
    sget-object v0, Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->$VALUES:[Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    invoke-virtual {v0}, [Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/smtp/AuthenticatingSMTPClient$AUTH_METHOD;

    return-object v0
.end method
