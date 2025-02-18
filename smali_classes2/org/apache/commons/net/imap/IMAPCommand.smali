.class public final enum Lorg/apache/commons/net/imap/IMAPCommand;
.super Ljava/lang/Enum;
.source "IMAPCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAPCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum COPY:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LIST:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STORE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;


# instance fields
.field private final imapCommand:Ljava/lang/String;

.field private final maxParamCount:I

.field private final minParamCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "CAPABILITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 31
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "NOOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 32
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "LOGOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 35
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "STARTTLS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 36
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "AUTHENTICATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 37
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "LOGIN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 39
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "XOAUTH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 42
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "SELECT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 43
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "EXAMINE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 44
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "CREATE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 45
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "DELETE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 46
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "RENAME"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 47
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "SUBSCRIBE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 48
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "UNSUBSCRIBE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 49
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "LIST"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LIST:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 50
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "LSUB"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 51
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "STATUS"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 52
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "APPEND"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v4, v6}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 55
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "CHECK"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 56
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "CLOSE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 57
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "EXPUNGE"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 58
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "SEARCH"

    const/16 v15, 0x15

    const v14, 0x7fffffff

    invoke-direct {v0, v1, v15, v3, v14}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 59
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "FETCH"

    const/16 v14, 0x16

    invoke-direct {v0, v1, v14, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 60
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "STORE"

    const/16 v14, 0x17

    invoke-direct {v0, v1, v14, v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STORE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 61
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "COPY"

    const/16 v14, 0x18

    invoke-direct {v0, v1, v14, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->COPY:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 62
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "UID"

    const/16 v14, 0x19

    const v15, 0x7fffffff

    invoke-direct {v0, v1, v14, v4, v15}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UID:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v1, 0x1a

    new-array v1, v1, [Lorg/apache/commons/net/imap/IMAPCommand;

    .line 23
    sget-object v14, Lorg/apache/commons/net/imap/IMAPCommand;->CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v14, v1, v2

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

    aput-object v2, v1, v13

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->LIST:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->STORE:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->COPY:Lorg/apache/commons/net/imap/IMAPCommand;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/net/imap/IMAPCommand;->$VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p3

    .line 81
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 85
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    .line 89
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object p3, p0, Lorg/apache/commons/net/imap/IMAPCommand;->imapCommand:Ljava/lang/String;

    .line 94
    iput p4, p0, Lorg/apache/commons/net/imap/IMAPCommand;->minParamCount:I

    .line 95
    iput p5, p0, Lorg/apache/commons/net/imap/IMAPCommand;->maxParamCount:I

    return-void
.end method

.method public static final getCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPCommand;->getIMAPCommand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 1

    .line 23
    const-class v0, Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/net/imap/IMAPCommand;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 1

    .line 23
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->$VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPCommand;

    return-object v0
.end method


# virtual methods
.method public getIMAPCommand()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPCommand;->imapCommand:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPCommand;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
