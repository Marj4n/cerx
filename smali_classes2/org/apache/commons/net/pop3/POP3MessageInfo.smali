.class public final Lorg/apache/commons/net/pop3/POP3MessageInfo;
.super Ljava/lang/Object;
.source "POP3MessageInfo.java"


# instance fields
.field public identifier:Ljava/lang/String;

.field public number:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, v0, v1, v0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->number:I

    .line 83
    iput p3, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->size:I

    .line 84
    iput-object p2, p0, Lorg/apache/commons/net/pop3/POP3MessageInfo;->identifier:Ljava/lang/String;

    return-void
.end method
