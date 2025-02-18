.class public Lcom/serenegiant/widget/FrameSelectorView;
.super Landroid/widget/LinearLayout;
.source "FrameSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;
    }
.end annotation


# static fields
.field private static final COLOR_BTN_IDS:[I

.field private static final TAG:Ljava/lang/String;

.field private static final sBUTTONS:Landroid/util/SparseIntArray;


# instance fields
.field private mCallback:Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

.field private final mColors:[I

.field private final mFrameButtons:[Landroid/widget/ImageButton;

.field private mLineWidthTv:Landroid/widget/TextView;

.field private final mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private final mOnColorClickListener:Landroid/view/View$OnClickListener;

.field private final mOnFrameClickListener:Landroid/view/View$OnClickListener;

.field private final mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mScaleTypeRadioGroup:Landroid/widget/RadioGroup;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 40
    const-class v0, Lcom/serenegiant/widget/FrameSelectorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/FrameSelectorView;->TAG:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    .line 82
    sget v1, Lcom/serenegiant/common/R$id;->color1_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->color2_button:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->color3_button:I

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->color4_button:I

    const/4 v5, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->color5_button:I

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->color6_button:I

    const/4 v7, 0x5

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->color7_button:I

    const/4 v8, 0x6

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->color8_button:I

    const/4 v9, 0x7

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->color_select_button:I

    const/4 v10, -0x1

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->frame_frame_button:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->frame_cross_button:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->frame_cross_quarter_button:I

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->frame_circle_button:I

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->frame_circle2_button:I

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->frame_cross_circle_button:I

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    sget v1, Lcom/serenegiant/common/R$id;->frame_cross_circle2_button:I

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 101
    sget v1, Lcom/serenegiant/common/R$id;->color1_button:I

    aput v1, v0, v2

    sget v1, Lcom/serenegiant/common/R$id;->color2_button:I

    aput v1, v0, v3

    sget v1, Lcom/serenegiant/common/R$id;->color3_button:I

    aput v1, v0, v4

    sget v1, Lcom/serenegiant/common/R$id;->color4_button:I

    aput v1, v0, v5

    sget v1, Lcom/serenegiant/common/R$id;->color5_button:I

    aput v1, v0, v6

    sget v1, Lcom/serenegiant/common/R$id;->color6_button:I

    aput v1, v0, v7

    sget v1, Lcom/serenegiant/common/R$id;->color7_button:I

    aput v1, v0, v8

    sget v1, Lcom/serenegiant/common/R$id;->color8_button:I

    aput v1, v0, v9

    sput-object v0, Lcom/serenegiant/widget/FrameSelectorView;->COLOR_BTN_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/FrameSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/FrameSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x8

    new-array p2, p2, [I

    .line 112
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView;->mColors:[I

    const/4 p2, 0x7

    new-array p2, p2, [Landroid/widget/ImageButton;

    .line 124
    iput-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    .line 318
    new-instance p2, Lcom/serenegiant/widget/FrameSelectorView$2;

    invoke-direct {p2, p0}, Lcom/serenegiant/widget/FrameSelectorView$2;-><init>(Lcom/serenegiant/widget/FrameSelectorView;)V

    iput-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnFrameClickListener:Landroid/view/View$OnClickListener;

    .line 334
    new-instance p2, Lcom/serenegiant/widget/FrameSelectorView$3;

    invoke-direct {p2, p0}, Lcom/serenegiant/widget/FrameSelectorView$3;-><init>(Lcom/serenegiant/widget/FrameSelectorView;)V

    iput-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    .line 352
    new-instance p2, Lcom/serenegiant/widget/FrameSelectorView$4;

    invoke-direct {p2, p0}, Lcom/serenegiant/widget/FrameSelectorView$4;-><init>(Lcom/serenegiant/widget/FrameSelectorView;)V

    iput-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 372
    new-instance p2, Lcom/serenegiant/widget/FrameSelectorView$5;

    invoke-direct {p2, p0}, Lcom/serenegiant/widget/FrameSelectorView$5;-><init>(Lcom/serenegiant/widget/FrameSelectorView;)V

    iput-object p2, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 p2, 0x1

    .line 141
    invoke-virtual {p0, p2}, Lcom/serenegiant/widget/FrameSelectorView;->setOrientation(I)V

    .line 145
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 148
    :try_start_0
    sget p3, Lcom/serenegiant/common/R$layout;->view_frame_selector:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/FrameSelectorView;->initView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0x5b00
        -0x100
        -0xff8000
        -0xffff01
        -0x1
        -0x4e4e4f
        -0x1000000
    .end array-data
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 38
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->COLOR_BTN_IDS:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/serenegiant/widget/FrameSelectorView;)Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mCallback:Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    return-object p0
.end method

.method static synthetic access$200()Landroid/util/SparseIntArray;
    .locals 1

    .line 38
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->sBUTTONS:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/serenegiant/widget/FrameSelectorView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/serenegiant/widget/FrameSelectorView;)[I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mColors:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/serenegiant/widget/FrameSelectorView;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mLineWidthTv:Landroid/widget/TextView;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    sget v1, Lcom/serenegiant/common/R$id;->frame_frame_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 274
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnFrameClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    sget v1, Lcom/serenegiant/common/R$id;->frame_cross_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 276
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnFrameClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    sget v1, Lcom/serenegiant/common/R$id;->frame_cross_quarter_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 278
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnFrameClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    sget v1, Lcom/serenegiant/common/R$id;->frame_circle_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 280
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnFrameClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    sget v1, Lcom/serenegiant/common/R$id;->frame_circle2_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 282
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnFrameClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    sget v1, Lcom/serenegiant/common/R$id;->frame_cross_circle_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 284
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnFrameClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    sget v1, Lcom/serenegiant/common/R$id;->frame_cross_circle2_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 286
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnFrameClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    sget v0, Lcom/serenegiant/common/R$id;->color1_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 289
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    sget v0, Lcom/serenegiant/common/R$id;->color2_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 291
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    sget v0, Lcom/serenegiant/common/R$id;->color3_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 293
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    sget v0, Lcom/serenegiant/common/R$id;->color4_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 295
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    sget v0, Lcom/serenegiant/common/R$id;->color5_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 297
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    sget v0, Lcom/serenegiant/common/R$id;->color6_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 299
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    sget v0, Lcom/serenegiant/common/R$id;->color7_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 301
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    sget v0, Lcom/serenegiant/common/R$id;->color8_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 303
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    sget v0, Lcom/serenegiant/common/R$id;->color_select_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 305
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    sget v0, Lcom/serenegiant/common/R$id;->scale_type_radiogroup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mScaleTypeRadioGroup:Landroid/widget/RadioGroup;

    .line 308
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 310
    sget v0, Lcom/serenegiant/common/R$id;->line_width_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mLineWidthTv:Landroid/widget/TextView;

    .line 311
    sget v0, Lcom/serenegiant/common/R$id;->line_width_seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mSeekBar:Landroid/widget/SeekBar;

    .line 312
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private updateColors([I)V
    .locals 1

    .line 250
    new-instance v0, Lcom/serenegiant/widget/FrameSelectorView$1;

    invoke-direct {v0, p0, p1}, Lcom/serenegiant/widget/FrameSelectorView$1;-><init>(Lcom/serenegiant/widget/FrameSelectorView;[I)V

    invoke-virtual {p0, v0}, Lcom/serenegiant/widget/FrameSelectorView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addColor(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/serenegiant/widget/FrameSelectorView;->mColors:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mColors:[I

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x7

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mColors:[I

    aput p1, v0, v3

    .line 242
    invoke-direct {p0, v0}, Lcom/serenegiant/widget/FrameSelectorView;->updateColors([I)V

    return-void
.end method

.method public getCallback()Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mCallback:Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mColors:[I

    return-object v0
.end method

.method public setCallback(Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/serenegiant/widget/FrameSelectorView;->mCallback:Lcom/serenegiant/widget/FrameSelectorView$FrameSelectorViewCallback;

    return-void
.end method

.method public setColors([I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 211
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mColors:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/FrameSelectorView;->updateColors([I)V

    :cond_0
    return-void
.end method

.method public setFrameType(I)V
    .locals 3

    if-lez p1, :cond_1

    const/16 v0, 0x8

    if-ge p1, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mFrameButtons:[Landroid/widget/ImageButton;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public setLineWidth(F)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 202
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setScaleType(I)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/serenegiant/widget/FrameSelectorView;->mScaleTypeRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 190
    sget p1, Lcom/serenegiant/common/R$id;->scale_type_non_radiobutton:I

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 187
    :cond_0
    sget p1, Lcom/serenegiant/common/R$id;->scale_type_mm_radiobutton:I

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 184
    :cond_1
    sget p1, Lcom/serenegiant/common/R$id;->scale_type_inch_radiobutton:I

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_2
    :goto_0
    return-void
.end method
