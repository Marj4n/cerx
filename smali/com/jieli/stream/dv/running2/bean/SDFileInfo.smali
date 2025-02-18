.class public Lcom/jieli/stream/dv/running2/bean/SDFileInfo;
.super Ljava/lang/Object;
.source "SDFileInfo.java"


# instance fields
.field public FileCount:I

.field public FolderCount:I

.field public IsDirectory:Z

.field public Name:Ljava/lang/String;

.field public Path:Ljava/lang/String;

.field public Size:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->IsDirectory:Z

    .line 12
    iput v0, p0, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->FileCount:I

    .line 13
    iput v0, p0, Lcom/jieli/stream/dv/running2/bean/SDFileInfo;->FolderCount:I

    return-void
.end method
