.class public final Lcom/jieli/lib/dv/control/player/Stream$Status;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/lib/dv/control/player/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final END:I = 0x6

.field protected static final IDLE:I = 0x0

.field public static final PAUSE:I = 0x4

.field public static final PLAYING:I = 0x2

.field public static final PREPARE:I = 0x1

.field public static final STOP:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
