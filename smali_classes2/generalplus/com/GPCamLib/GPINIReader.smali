.class public Lgeneralplus/com/GPCamLib/GPINIReader;
.super Ljava/lang/Object;
.source "GPINIReader.java"


# static fields
.field private static final INIReader_SaveLog:Ljava/lang/String; = "SaveLog"

.field private static final INIReader_ShowLog:Ljava/lang/String; = "ShowLog"

.field private static TAG:Ljava/lang/String; = "GPINIReader"

.field private static _EnableSaveLog:Z = false

.field private static _EnableShowLog:Z = false

.field private static m_Instance:Lgeneralplus/com/GPCamLib/GPINIReader;


# instance fields
.field private configuration:Ljava/util/Properties;

.field private configurationFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-string v0, "%s = false\n"

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    .line 16
    iput-object v1, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    .line 25
    sput-object p0, Lgeneralplus/com/GPCamLib/GPINIReader;->m_Instance:Lgeneralplus/com/GPCamLib/GPINIReader;

    .line 26
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configuration:Ljava/util/Properties;

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "GoPlus_Drone"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GoPlusDroneConf.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    .line 31
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "SaveLog"

    const-string v5, "ShowLog"

    const/4 v6, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v5, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgeneralplus/com/GPCamLib/GPINIReader;->load()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0, v4}, Lgeneralplus/com/GPCamLib/GPINIReader;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sput-boolean v6, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableSaveLog:Z

    .line 52
    :cond_1
    invoke-virtual {p0, v5}, Lgeneralplus/com/GPCamLib/GPINIReader;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0, v5}, Lgeneralplus/com/GPCamLib/GPINIReader;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sput-boolean v6, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableShowLog:Z

    :cond_2
    return-void
.end method

.method public static getInstance()Lgeneralplus/com/GPCamLib/GPINIReader;
    .locals 1

    .line 61
    sget-object v0, Lgeneralplus/com/GPCamLib/GPINIReader;->m_Instance:Lgeneralplus/com/GPCamLib/GPINIReader;

    return-object v0
.end method


# virtual methods
.method public IsEnableSaveLog()Z
    .locals 1

    .line 69
    sget-boolean v0, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableSaveLog:Z

    return v0
.end method

.method public IsEnableShowLog()Z
    .locals 1

    .line 65
    sget-boolean v0, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableShowLog:Z

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configuration:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public load()Z
    .locals 4

    .line 76
    :try_start_0
    iget-object v0, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configuration:Ljava/util/Properties;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
