.class Lcom/generalplus/GoPlusDrone/View/JoystickView$1;
.super Ljava/lang/Object;
.source "JoystickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/generalplus/GoPlusDrone/View/JoystickView;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/GoPlusDrone/View/JoystickView;


# direct methods
.method constructor <init>(Lcom/generalplus/GoPlusDrone/View/JoystickView;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/JoystickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/JoystickView;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->access$000(Lcom/generalplus/GoPlusDrone/View/JoystickView;)Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/JoystickView;

    invoke-static {v0}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->access$000(Lcom/generalplus/GoPlusDrone/View/JoystickView;)Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/JoystickView;

    invoke-static {v1}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->access$100(Lcom/generalplus/GoPlusDrone/View/JoystickView;)I

    move-result v1

    iget-object v2, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/JoystickView;

    .line 255
    invoke-static {v2}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->access$200(Lcom/generalplus/GoPlusDrone/View/JoystickView;)I

    move-result v2

    iget-object v3, p0, Lcom/generalplus/GoPlusDrone/View/JoystickView$1;->this$0:Lcom/generalplus/GoPlusDrone/View/JoystickView;

    invoke-static {v3}, Lcom/generalplus/GoPlusDrone/View/JoystickView;->access$300(Lcom/generalplus/GoPlusDrone/View/JoystickView;)I

    move-result v3

    .line 254
    invoke-interface {v0, v1, v2, v3}, Lcom/generalplus/GoPlusDrone/View/JoystickView$OnJoystickMoveListener;->onValueChanged(III)V

    :cond_0
    return-void
.end method
