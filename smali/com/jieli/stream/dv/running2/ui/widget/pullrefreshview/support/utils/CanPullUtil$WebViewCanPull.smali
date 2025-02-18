.class Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$WebViewCanPull;
.super Ljava/lang/Object;
.source "CanPullUtil.java"

# interfaces
.implements Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/impl/Pullable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewCanPull"
.end annotation


# instance fields
.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$WebViewCanPull;->webView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public isGetBottom()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$WebViewCanPull;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$WebViewCanPull;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$WebViewCanPull;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$WebViewCanPull;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGetTop()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/jieli/stream/dv/running2/ui/widget/pullrefreshview/support/utils/CanPullUtil$WebViewCanPull;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
