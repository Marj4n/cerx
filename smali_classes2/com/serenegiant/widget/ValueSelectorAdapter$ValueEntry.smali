.class public Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;
.super Ljava/lang/Object;
.source "ValueSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/ValueSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueEntry"
.end annotation


# instance fields
.field public final title:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;->title:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;->value:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/serenegiant/widget/ValueSelectorAdapter$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/serenegiant/widget/ValueSelectorAdapter$ValueEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
