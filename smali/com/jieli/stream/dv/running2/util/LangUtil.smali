.class public Lcom/jieli/stream/dv/running2/util/LangUtil;
.super Ljava/lang/Object;
.source "LangUtil.java"


# static fields
.field private static final ARGS_LANG_AR_AR:Ljava/lang/String; = "21"

.field private static final ARGS_LANG_CS_CZ:Ljava/lang/String; = "12"

.field private static final ARGS_LANG_DA_DK:Ljava/lang/String; = "13"

.field private static final ARGS_LANG_DE_DE:Ljava/lang/String; = "7"

.field private static final ARGS_LANG_EN_US:Ljava/lang/String; = "5"

.field private static final ARGS_LANG_ES_ES:Ljava/lang/String; = "0"

.field private static final ARGS_LANG_FR_LU:Ljava/lang/String; = "6"

.field private static final ARGS_LANG_HE_IL:Ljava/lang/String; = "17"

.field private static final ARGS_LANG_HU_HU:Ljava/lang/String; = "19"

.field private static final ARGS_LANG_IT_IT:Ljava/lang/String; = "8"

.field private static final ARGS_LANG_JA_JP:Ljava/lang/String; = "3"

.field private static final ARGS_LANG_KO_KR:Ljava/lang/String; = "4"

.field private static final ARGS_LANG_NL_NL:Ljava/lang/String; = "9"

.field private static final ARGS_LANG_PL_PL:Ljava/lang/String; = "14"

.field private static final ARGS_LANG_PT_PT:Ljava/lang/String; = "10"

.field private static final ARGS_LANG_RO_RO:Ljava/lang/String; = "20"

.field private static final ARGS_LANG_RU_RU:Ljava/lang/String; = "15"

.field private static final ARGS_LANG_SV_SE:Ljava/lang/String; = "11"

.field private static final ARGS_LANG_TH_TH:Ljava/lang/String; = "18"

.field private static final ARGS_LANG_TR_TR:Ljava/lang/String; = "16"

.field private static final ARGS_LANG_ZH_CN:Ljava/lang/String; = "1"

.field private static final ARGS_LANG_ZH_TW:Ljava/lang/String; = "2"

.field public static final LOCALES:[Ljava/util/Locale;

.field private static tag:Ljava/lang/String; = "LangUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Locale;

    .line 18
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/jieli/stream/dv/running2/util/LangUtil;->LOCALES:[Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x63e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x63f

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "19"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "18"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "17"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "15"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "14"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "13"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :pswitch_8
    const-string v0, "11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :pswitch_9
    const-string v0, "10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_1

    :pswitch_a
    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_1

    :pswitch_b
    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_1

    :pswitch_c
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_d
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :pswitch_e
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_f
    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_10
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_11
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_12
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_13
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x15

    goto :goto_1

    :cond_1
    const-string v0, "20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "KR"

    packed-switch v0, :pswitch_data_2

    .line 135
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 136
    sget-object v1, Lcom/jieli/stream/dv/running2/util/LangUtil;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown language code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/jieli/stream/dv/running2/util/Dbug;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    goto/16 :goto_2

    .line 132
    :pswitch_14
    new-instance p0, Ljava/util/Locale;

    const-string v0, "ar"

    const-string v1, "AR"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 129
    :pswitch_15
    new-instance p0, Ljava/util/Locale;

    const-string v0, "ro"

    const-string v1, "RO"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 126
    :pswitch_16
    new-instance p0, Ljava/util/Locale;

    const-string v0, "hu"

    const-string v1, "HU"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 123
    :pswitch_17
    new-instance p0, Ljava/util/Locale;

    const-string v0, "th"

    const-string v1, "TH"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 120
    :pswitch_18
    new-instance p0, Ljava/util/Locale;

    const-string v0, "he"

    const-string v1, "IL"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 117
    :pswitch_19
    new-instance p0, Ljava/util/Locale;

    const-string v0, "tr"

    const-string v1, "TR"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 114
    :pswitch_1a
    new-instance p0, Ljava/util/Locale;

    const-string v0, "ru"

    const-string v1, "RU"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 111
    :pswitch_1b
    new-instance p0, Ljava/util/Locale;

    const-string v0, "pl"

    const-string v1, "PL"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 108
    :pswitch_1c
    new-instance p0, Ljava/util/Locale;

    const-string v0, "da"

    const-string v1, "DK"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :pswitch_1d
    new-instance p0, Ljava/util/Locale;

    const-string v0, "cs"

    const-string v1, "CZ"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 102
    :pswitch_1e
    new-instance p0, Ljava/util/Locale;

    const-string v0, "sv"

    const-string v1, "SE"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :pswitch_1f
    new-instance p0, Ljava/util/Locale;

    const-string v0, "pt"

    const-string v1, "PT"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :pswitch_20
    new-instance p0, Ljava/util/Locale;

    const-string v0, "nl"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 93
    :pswitch_21
    new-instance p0, Ljava/util/Locale;

    const-string v0, "it"

    const-string v1, "IT"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 90
    :pswitch_22
    new-instance p0, Ljava/util/Locale;

    const-string v0, "fr"

    const-string v1, "LU"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :pswitch_23
    new-instance p0, Ljava/util/Locale;

    const-string v0, "ko"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 84
    :pswitch_24
    new-instance p0, Ljava/util/Locale;

    const-string v0, "es"

    const-string v1, "ES"

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :pswitch_25
    sget-object p0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    goto :goto_2

    .line 78
    :pswitch_26
    sget-object p0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    goto :goto_2

    .line 75
    :pswitch_27
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_2

    .line 72
    :pswitch_28
    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    goto :goto_2

    .line 69
    :pswitch_29
    sget-object p0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61f
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method
