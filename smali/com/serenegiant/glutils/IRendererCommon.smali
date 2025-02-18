.class public interface abstract Lcom/serenegiant/glutils/IRendererCommon;
.super Ljava/lang/Object;
.source "IRendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/glutils/IRendererCommon$MirrorMode;
    }
.end annotation


# static fields
.field public static final MIRROR_BOTH:I = 0x3

.field public static final MIRROR_HORIZONTAL:I = 0x1

.field public static final MIRROR_NORMAL:I = 0x0

.field public static final MIRROR_NUM:I = 0x4

.field public static final MIRROR_VERTICAL:I = 0x2


# virtual methods
.method public abstract getMirror()I
.end method

.method public abstract setMirror(I)V
.end method
