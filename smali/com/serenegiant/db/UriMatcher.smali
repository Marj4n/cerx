.class public Lcom/serenegiant/db/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field static final PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TEXT:I = 0x2


# instance fields
.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/serenegiant/db/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/"

    .line 210
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/db/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 140
    iput v0, p0, Lcom/serenegiant/db/UriMatcher;->mCode:I

    .line 141
    iput v0, p0, Lcom/serenegiant/db/UriMatcher;->mWhich:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/db/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/serenegiant/db/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Lcom/serenegiant/db/UriMatcher;->mCode:I

    const/4 p1, -0x1

    .line 133
    iput p1, p0, Lcom/serenegiant/db/UriMatcher;->mWhich:I

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/serenegiant/db/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/serenegiant/db/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    if-ltz p3, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_0

    .line 172
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 174
    :cond_0
    sget-object v0, Lcom/serenegiant/db/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 177
    array-length p2, v0

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const/4 v3, -0x1

    move-object v4, p0

    :goto_1
    if-ge v3, p2, :cond_9

    if-gez v3, :cond_3

    move-object v5, p1

    goto :goto_2

    .line 180
    :cond_3
    aget-object v5, v0, v3

    .line 181
    :goto_2
    iget-object v6, v4, Lcom/serenegiant/db/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_5

    .line 186
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/serenegiant/db/UriMatcher;

    .line 187
    iget-object v10, v9, Lcom/serenegiant/db/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v4, v9

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ne v8, v7, :cond_8

    .line 194
    new-instance v6, Lcom/serenegiant/db/UriMatcher;

    invoke-direct {v6}, Lcom/serenegiant/db/UriMatcher;-><init>()V

    const-string v7, "#"

    .line 195
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 196
    iput v1, v6, Lcom/serenegiant/db/UriMatcher;->mWhich:I

    goto :goto_5

    :cond_6
    const-string v7, "*"

    .line 197
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x2

    .line 198
    iput v7, v6, Lcom/serenegiant/db/UriMatcher;->mWhich:I

    goto :goto_5

    .line 200
    :cond_7
    iput v2, v6, Lcom/serenegiant/db/UriMatcher;->mWhich:I

    .line 202
    :goto_5
    iput-object v5, v6, Lcom/serenegiant/db/UriMatcher;->mText:Ljava/lang/String;

    .line 203
    iget-object v4, v4, Lcom/serenegiant/db/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    :cond_9
    iput p3, v4, Lcom/serenegiant/db/UriMatcher;->mCode:I

    return-void

    .line 164
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is invalid: it must be positive"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public match(Landroid/net/Uri;)I
    .locals 16

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object/from16 v2, p0

    .line 228
    iget v0, v2, Lcom/serenegiant/db/UriMatcher;->mCode:I

    return v0

    :cond_0
    move-object/from16 v2, p0

    const/4 v3, -0x1

    move-object v5, v2

    const/4 v4, -0x1

    :goto_0
    if-ge v4, v1, :cond_d

    if-gez v4, :cond_1

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 233
    :goto_1
    iget-object v7, v5, Lcom/serenegiant/db/UriMatcher;->mChildren:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    goto :goto_6

    :cond_2
    const/4 v5, 0x0

    .line 238
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_b

    .line 240
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/serenegiant/db/UriMatcher;

    .line 242
    iget v12, v11, Lcom/serenegiant/db/UriMatcher;->mWhich:I

    if-eqz v12, :cond_7

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    const/4 v13, 0x2

    if-eq v12, v13, :cond_8

    goto :goto_4

    .line 250
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_8

    .line 252
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2d

    if-eq v14, v15, :cond_4

    const/16 v15, 0x2b

    if-ne v14, v15, :cond_5

    :cond_4
    if-nez v13, :cond_9

    :cond_5
    if-lez v13, :cond_6

    const/16 v15, 0x30

    if-lt v14, v15, :cond_9

    const/16 v15, 0x39

    if-le v14, v15, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 244
    :cond_7
    iget-object v12, v11, Lcom/serenegiant/db/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    move-object v5, v11

    :cond_9
    :goto_4
    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_b
    :goto_5
    if-nez v5, :cond_c

    return v3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 272
    :cond_d
    :goto_6
    iget v0, v5, Lcom/serenegiant/db/UriMatcher;->mCode:I

    return v0
.end method
