.class synthetic Lcom/shizhefei/view/indicator/ScrollIndicatorView$3;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 394
    invoke-static {}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->values()[Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    :try_start_0
    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->TOP:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->TOP_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$3;->$SwitchMap$com$shizhefei$view$indicator$slidebar$ScrollBar$Gravity:[I

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
