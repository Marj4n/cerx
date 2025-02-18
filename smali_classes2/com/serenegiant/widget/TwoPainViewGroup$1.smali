.class Lcom/serenegiant/widget/TwoPainViewGroup$1;
.super Ljava/lang/Object;
.source "TwoPainViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serenegiant/widget/TwoPainViewGroup;->startLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/TwoPainViewGroup;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/TwoPainViewGroup;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/serenegiant/widget/TwoPainViewGroup$1;->this$0:Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/serenegiant/widget/TwoPainViewGroup$1;->this$0:Lcom/serenegiant/widget/TwoPainViewGroup;

    invoke-static {v0}, Lcom/serenegiant/widget/TwoPainViewGroup;->access$000(Lcom/serenegiant/widget/TwoPainViewGroup;)V

    return-void
.end method
