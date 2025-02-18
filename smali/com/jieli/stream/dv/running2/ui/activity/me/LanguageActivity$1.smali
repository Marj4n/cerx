.class Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$1;
.super Ljava/lang/Object;
.source "LanguageActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity$1;->this$0:Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;->access$002(Lcom/jieli/stream/dv/running2/ui/activity/me/LanguageActivity;I)I

    return-void
.end method
