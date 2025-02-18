.class public final Lcom/baidu/trace/u;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:Landroid/database/sqlite/SQLiteOpenHelper;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const-string v0, "BAIDUTRACE.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v1, p0, Lcom/baidu/trace/u;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v1, p0, Lcom/baidu/trace/u;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "LBSTRACE.db"

    if-eqz v7, :cond_1

    invoke-virtual {p1, v8}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_1
    if-eqz v3, :cond_4

    iput-object p1, p0, Lcom/baidu/trace/u;->b:Landroid/content/Context;

    new-instance v0, Lcom/baidu/trace/x;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v7, "LBSTRACE.db"

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/baidu/trace/x;-><init>(Lcom/baidu/trace/u;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/baidu/trace/u;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/baidu/trace/u;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/u;->b:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/trace/u;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/u;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/trace/u;Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/trace/u;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object p1
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b(Lcom/baidu/trace/u;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/baidu/trace/u;->b:Landroid/content/Context;

    return-object p0
.end method

.method protected static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CREATE TABLE if not exists "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "trace_location ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "loc_time INTEGER, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "entity_name VARCHAR(128), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "location_data BLOB);"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "trace_fence ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "fence_id INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "fence_name VARCHAR(128), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "monitored_person VARCHAR(128), "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "coord_type VARCHAR(16), "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "denoise INTEGER, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "fence_shape VARCHAR(16), "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "create_time VARCHAR(32), "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "modify_time VARCHAR(32), "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "monitored_status VARCHAR(16), "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "fence_extern_info TEXT);"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "trace_fence_alarm ("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "fence_id INTEGER, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "monitored_action VARCHAR(16), "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "create_time INTEGER, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "cur_point TEXT, "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "pre_point TEXT);"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/baidu/trace/u;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/trace/v;

    invoke-direct {v1, p0, p1}, Lcom/baidu/trace/v;-><init>(Lcom/baidu/trace/u;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    sget-object v0, Lcom/baidu/trace/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/trace/w;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/baidu/trace/w;-><init>(Lcom/baidu/trace/u;IILandroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
