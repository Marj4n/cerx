.class Lcom/baidu/mapapi/map/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/baidu/mapapi/map/l$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/baidu/mapapi/map/f;

.field private final b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/l<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(DDDDI)V
    .locals 10

    new-instance v9, Lcom/baidu/mapapi/map/f;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mapapi/map/f;-><init>(DDDD)V

    move-object v0, p0

    move/from16 v1, p9

    invoke-direct {p0, v9, v1}, Lcom/baidu/mapapi/map/l;-><init>(Lcom/baidu/mapapi/map/f;I)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/map/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/l;-><init>(Lcom/baidu/mapapi/map/f;I)V

    return-void
.end method

.method private constructor <init>(Lcom/baidu/mapapi/map/f;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iput p2, p0, Lcom/baidu/mapapi/map/l;->b:I

    return-void
.end method

.method private a()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    new-instance v1, Lcom/baidu/mapapi/map/l;

    iget-object v2, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v3, v2, Lcom/baidu/mapapi/map/f;->a:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v5, v2, Lcom/baidu/mapapi/map/f;->e:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v7, v2, Lcom/baidu/mapapi/map/f;->b:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v9, v2, Lcom/baidu/mapapi/map/f;->f:D

    iget v2, p0, Lcom/baidu/mapapi/map/l;->b:I

    add-int/lit8 v11, v2, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/baidu/mapapi/map/l;-><init>(DDDDI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    new-instance v11, Lcom/baidu/mapapi/map/l;

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v2, v1, Lcom/baidu/mapapi/map/f;->e:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v4, v1, Lcom/baidu/mapapi/map/f;->c:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v6, v1, Lcom/baidu/mapapi/map/f;->b:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v8, v1, Lcom/baidu/mapapi/map/f;->f:D

    iget v1, p0, Lcom/baidu/mapapi/map/l;->b:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/baidu/mapapi/map/l;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    new-instance v11, Lcom/baidu/mapapi/map/l;

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v2, v1, Lcom/baidu/mapapi/map/f;->a:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v4, v1, Lcom/baidu/mapapi/map/f;->e:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v6, v1, Lcom/baidu/mapapi/map/f;->f:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v8, v1, Lcom/baidu/mapapi/map/f;->d:D

    iget v1, p0, Lcom/baidu/mapapi/map/l;->b:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/baidu/mapapi/map/l;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    new-instance v11, Lcom/baidu/mapapi/map/l;

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v2, v1, Lcom/baidu/mapapi/map/f;->e:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v4, v1, Lcom/baidu/mapapi/map/f;->c:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v6, v1, Lcom/baidu/mapapi/map/f;->f:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v8, v1, Lcom/baidu/mapapi/map/f;->d:D

    iget v1, p0, Lcom/baidu/mapapi/map/l;->b:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/baidu/mapapi/map/l;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/baidu/mapapi/map/l$a;

    invoke-virtual {v7}, Lcom/baidu/mapapi/map/l$a;->a()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v3, v1

    invoke-virtual {v7}, Lcom/baidu/mapapi/map/l$a;->a()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v5, v1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mapapi/map/l;->a(DDLcom/baidu/mapapi/map/l$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(DDLcom/baidu/mapapi/map/l$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDTT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v0, v0, Lcom/baidu/mapapi/map/f;->f:D

    cmpg-double v2, p3, v0

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget-wide v0, v0, Lcom/baidu/mapapi/map/f;->e:D

    if-gez v2, :cond_1

    cmpg-double v2, p1, v0

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    if-gez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    cmpg-double v2, p1, v0

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    if-gez v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/baidu/mapapi/map/l;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mapapi/map/l;->a(DDLcom/baidu/mapapi/map/l$a;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    :cond_4
    iget-object p1, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_5

    iget p1, p0, Lcom/baidu/mapapi/map/l;->b:I

    if-ge p1, p2, :cond_5

    invoke-direct {p0}, Lcom/baidu/mapapi/map/l;->a()V

    :cond_5
    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/f;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/map/f;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/f;->a(Lcom/baidu/mapapi/map/f;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/l;

    invoke-direct {v1, p1, p2}, Lcom/baidu/mapapi/map/l;->a(Lcom/baidu/mapapi/map/f;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/f;->b(Lcom/baidu/mapapi/map/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/l$a;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/l$a;->a()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/baidu/mapapi/map/f;->a(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/map/f;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/map/f;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/l;->a(Lcom/baidu/mapapi/map/f;Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Lcom/baidu/mapapi/map/l$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/l$a;->a()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/l;->a:Lcom/baidu/mapapi/map/f;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/map/f;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v3, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v5, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mapapi/map/l;->a(DDLcom/baidu/mapapi/map/l$a;)V

    :cond_0
    return-void
.end method
