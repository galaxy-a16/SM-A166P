.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static TAG:Ljava/lang/String; = "FontWriter"


# instance fields
.field public bos:Ljava/io/BufferedOutputStream;

.field public fOut:Ljava/io/FileOutputStream;

.field public osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 71
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 73
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 2

    .line 307
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 744 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 313
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot chmod"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10

    const-string v0, "copyFontFile : bos.close() error"

    const-string v1, "copyFontFile : fOut.close() error"

    const-string v2, "copyFontFile : myInputStream.close() error"

    const-string v3, ""

    const-wide/16 v4, 0x0

    .line 363
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 367
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 371
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 373
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 383
    :goto_0
    invoke-virtual {p2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_0

    .line 385
    iget-object v8, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 391
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 393
    iget-object v6, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 427
    :catch_0
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_1

    .line 435
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 441
    :catch_1
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1
    :goto_2
    :try_start_3
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz p2, :cond_5

    .line 449
    :goto_3
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 455
    :catch_2
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception v6

    .line 401
    :try_start_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_2

    .line 407
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 411
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_3

    .line 421
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 427
    :catch_4
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_3
    :goto_4
    :try_start_6
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_4

    .line 435
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 441
    :catch_5
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_4
    :goto_5
    :try_start_7
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz p2, :cond_5

    goto :goto_3

    .line 461
    :cond_5
    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 467
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-nez p1, :cond_6

    .line 473
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_6
    return-void

    :goto_7
    if-eqz p2, :cond_7

    .line 421
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    .line 427
    :catch_6
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_7
    :goto_8
    :try_start_9
    iget-object p2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_8

    .line 435
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    .line 441
    :catch_7
    sget-object p2, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_8
    :goto_9
    :try_start_a
    iget-object p0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz p0, :cond_9

    .line 449
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    .line 455
    :catch_8
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_9
    :goto_a
    throw p1
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 182
    sget-object p1, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v0, "createFontDirectory : Start"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/app_fonts/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, p1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 187
    invoke-virtual {v0, p1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 188
    invoke-virtual {v0, p1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 190
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 204
    aget-object v2, p2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 213
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string p2, "Font directory  : Created"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    :cond_2
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string p2, "Font directory  : Not Created"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "chmod 711 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-virtual {p0, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 229
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    .line 231
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Cannot chmod"

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :catch_0
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string p2, "InterruptedException : "

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 239
    :catch_1
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string p2, "IOException : "

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p1
.end method

.method public final deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 265
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 273
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 277
    new-instance v0, Ljava/io/File;

    aget-object v1, p1, p2

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p2

    :cond_1
    return p2
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo p1, "writeLoc : fOut.close() error"

    const-string/jumbo v0, "writeLoc : osw.close() error"

    const-string v1, ""

    .line 111
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/app_fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 116
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 120
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 124
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 126
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz p3, :cond_0

    .line 141
    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    sget-object p3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    :try_start_3
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p3, :cond_2

    .line 155
    :goto_1
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 161
    :catch_1
    sget-object p3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception p3

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_3
    move-exception p3

    move-object p2, v1

    .line 131
    :goto_2
    :try_start_4
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    :try_start_5
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz p3, :cond_1

    .line 141
    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    .line 147
    :catch_4
    sget-object p3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    :goto_3
    :try_start_6
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    :goto_4
    const-string/jumbo p1, "persist.sys.flipfontpath"

    .line 167
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    return-void

    .line 139
    :goto_5
    :try_start_7
    iget-object p3, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz p3, :cond_3

    .line 141
    invoke-virtual {p3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 147
    :catch_5
    sget-object p3, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_3
    :goto_6
    :try_start_8
    iget-object p0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_4

    .line 155
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    .line 161
    :catch_6
    sget-object p0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_4
    :goto_7
    throw p2
.end method
