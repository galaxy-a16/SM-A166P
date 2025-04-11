.class public Lcom/android/server/enterprise/threatdefense/RUFSPolicy;
.super Ljava/lang/Object;
.source "RUFSPolicy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RUFSPolicy"


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mPolicyVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->getLatestPolicy()I

    move-result p1

    .line 35
    iput p1, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPolicyVersion:I

    .line 36
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", version="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getLatestPolicy()I
    .locals 6

    const-string v0, "/data/system/.aasa/AASApolicy/mtdlist.output.txt"

    const-string v1, "/system/etc/mtdlist.output.txt"

    .line 46
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readDecodedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v2, Lcom/android/server/enterprise/threatdefense/RUFSParser;

    invoke-direct {v2, v1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 59
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readDecodedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v4, Lcom/android/server/enterprise/threatdefense/RUFSParser;

    invoke-direct {v4, v0}, Lcom/android/server/enterprise/threatdefense/RUFSParser;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    .line 67
    sget-object p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Default : No RUFS policy files"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    if-eqz v2, :cond_5

    const/4 v1, 0x1

    if-eqz v4, :cond_4

    .line 72
    invoke-virtual {v2}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getPolicyVersion()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getPolicyVersion()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 73
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Using System parser"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 76
    :cond_3
    sget-object v1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Using Data parser"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    :cond_4
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v3, "System Parser Exists Only. "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 82
    :cond_5
    :goto_1
    sget-object v1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read system path="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v4

    .line 84
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readPolicyVersion(Lcom/android/server/enterprise/threatdefense/RUFSParser;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 p0, -0x68

    goto :goto_3

    :catch_1
    move-exception p0

    .line 89
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 p0, -0x6b

    goto :goto_3

    :catch_2
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/16 p0, -0x6d

    :goto_3
    return p0
.end method

.method public getPolicyVersion()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPolicyVersion:I

    return p0
.end method

.method public final readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string p0, "IOException"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 155
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 165
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move-object v0, v2

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_6

    :catch_3
    move-exception v2

    move-object p1, v0

    goto :goto_1

    :catch_4
    move-exception v2

    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_6

    :catch_5
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    .line 161
    :goto_1
    :try_start_4
    sget-object v3, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_1

    .line 165
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :cond_1
    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_5

    :catch_6
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    .line 159
    :goto_2
    :try_start_6
    sget-object v3, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v4, "SecurityException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_2

    .line 165
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_7
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    .line 169
    :goto_4
    sget-object v1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_5
    return-object v0

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz p1, :cond_4

    .line 165
    :try_start_8
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_8
    move-exception p1

    goto :goto_8

    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 167
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    .line 169
    :goto_8
    sget-object v1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_5
    :goto_9
    throw v0
.end method

.method public final readDecodedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 139
    new-instance p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 142
    sget-object p1, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Signature verification failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public final readPolicyVersion(Lcom/android/server/enterprise/threatdefense/RUFSParser;)I
    .locals 7

    if-nez p1, :cond_0

    const/16 p0, -0x6a

    return p0

    .line 105
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RUFSParser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getExceptionList()Ljava/util/ArrayList;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getVersion()I

    move-result p1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parser version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    sget-object v2, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ":"

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 113
    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    aget-object v6, v1, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    aget-object p0, v1, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception package : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " version : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 p1, -0x68

    goto :goto_0

    :catch_1
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    const/16 p1, -0x6d

    .line 129
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parder ret : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
