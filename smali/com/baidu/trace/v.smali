.class final Lcom/baidu/trace/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/database/sqlite/SQLiteDatabase;

.field private synthetic b:Lcom/baidu/trace/u;


# direct methods
.method constructor <init>(Lcom/baidu/trace/u;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    iput-object p2, p0, Lcom/baidu/trace/v;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "LBSTRACE.db"

    const-string v1, "select * from trace_locationinfo;"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v3}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "location_data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_0

    invoke-static {v4}, Lcom/baidu/trace/c/d;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v8, "insert into "

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v8, "trace_location("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "loc_time, "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "entity_name, "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "location_data) values(?,?,?);"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x1

    sget-object v7, Lcom/baidu/trace/Trace;->e:Ljava/lang/String;

    aput-object v7, v8, v6

    const/4 v6, 0x2

    aput-object v5, v8, v6

    iget-object v5, p0, Lcom/baidu/trace/v;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    nop

    goto/16 :goto_3

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1, v2}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_4
    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->b(Lcom/baidu/trace/u;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c

    :goto_1
    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->b(Lcom/baidu/trace/u;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v0, v2}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;Landroid/content/Context;)Landroid/content/Context;

    return-void

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v1, v2

    move-object v3, v1

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1, v2}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_7
    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->b(Lcom/baidu/trace/u;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->b(Lcom/baidu/trace/u;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v0, v2}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;Landroid/content/Context;)Landroid/content/Context;

    :cond_8
    throw v4

    :catch_2
    move-object v1, v2

    move-object v3, v1

    :goto_3
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1, v2}, Lcom/baidu/trace/u;->a(Lcom/baidu/trace/u;Landroid/database/sqlite/SQLiteOpenHelper;)Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_b
    iget-object v1, p0, Lcom/baidu/trace/v;->b:Lcom/baidu/trace/u;

    invoke-static {v1}, Lcom/baidu/trace/u;->b(Lcom/baidu/trace/u;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c

    goto :goto_1

    :cond_c
    return-void
.end method
