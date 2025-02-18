.class final Lcom/google/zxing/client/result/AddressBookAUResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-gt v0, p1, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {v3, p2, v4, p3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, p1}, Ljava/util/Vector;-><init>(I)V

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-static {v2}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->toStringArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "MEMORY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "NAME1:"

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    const-string v5, "NAME2:"

    invoke-static {v5, v0, v3, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    const-string v5, "TEL"

    const/4 v6, 0x3

    invoke-static {v5, v6, v0, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v9

    const-string v5, "MAIL"

    invoke-static {v5, v6, v0, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v10

    const-string v5, "MEMORY:"

    const/4 v6, 0x0

    invoke-static {v5, v0, v3, v6}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v11

    const-string v5, "ADD:"

    invoke-static {v5, v0, v3, v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v6

    :goto_0
    move-object v12, v1

    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v2}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method
