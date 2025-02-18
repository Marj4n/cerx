.class public interface abstract Lcom/serenegiant/glutils/ITexture;
.super Ljava/lang/Object;
.source "ITexture.java"


# virtual methods
.method public abstract bind()V
.end method

.method public abstract getTexHeight()I
.end method

.method public abstract getTexMatrix([FI)V
.end method

.method public abstract getTexMatrix()[F
.end method

.method public abstract getTexTarget()I
.end method

.method public abstract getTexWidth()I
.end method

.method public abstract getTexture()I
.end method

.method public abstract loadTexture(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract loadTexture(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract unbind()V
.end method
