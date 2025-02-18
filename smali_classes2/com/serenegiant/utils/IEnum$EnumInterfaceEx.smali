.class public interface abstract Lcom/serenegiant/utils/IEnum$EnumInterfaceEx;
.super Ljava/lang/Object;
.source "IEnum.java"

# interfaces
.implements Lcom/serenegiant/utils/IEnum$EnumInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/utils/IEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnumInterfaceEx"
.end annotation


# virtual methods
.method public abstract put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract put(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
