.class Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;


# direct methods
.method constructor <init>(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 455
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1300(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 456
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1400(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 p1, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 457
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1508(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)I

    .line 458
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 459
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1502(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;I)I

    .line 460
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    iget-object v0, v0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "debug_settings"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 461
    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    iget-object v2, v2, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->mApplication:Lcom/jieli/stream/dv/running2/ui/MainApplication;

    xor-int/2addr p1, v0

    invoke-static {v2, v1, p1}, Lcom/jieli/stream/dv/running2/util/PreferencesHelper;->putBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 462
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget v0, Lcom/jieli/stream/dv/running2/R$string;->open_debug_ok:I

    invoke-virtual {p1, v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->open_debug_tip:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)I

    move-result v2

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v5

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0, v5}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1502(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;I)I

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v0}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1508(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)I

    .line 472
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    sget v2, Lcom/jieli/stream/dv/running2/R$string;->open_debug_tip:I

    invoke-virtual {v1, v2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {v2}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1500(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;)I

    move-result v2

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v5

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-static {p1}, Lcom/jieli/stream/dv/running2/util/ToastUtil;->showToastShort(Ljava/lang/String;)V

    .line 475
    :goto_0
    iget-object p1, p0, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment$10;->this$0:Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;->access$1402(Lcom/jieli/stream/dv/running2/ui/fragment/AboutFragment;J)J

    :cond_3
    return-void
.end method
