.class final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "MECARD:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "N:"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "SOUND:"

    invoke-static {v5, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    const-string v5, "TEL:"

    invoke-static {v5, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v9

    const-string v5, "EMAIL:"

    invoke-static {v5, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v10

    const-string v5, "NOTE:"

    invoke-static {v5, v0, v4}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    const-string v4, "ADR:"

    invoke-static {v4, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    const-string v4, "BDAY:"

    invoke-static {v4, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->isStringOfDigits(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v14, v1

    goto :goto_0

    :cond_2
    move-object v14, v4

    :goto_0
    const-string v1, "URL:"

    invoke-static {v1, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    const-string v1, "ORG:"

    invoke-static {v1, v0, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
