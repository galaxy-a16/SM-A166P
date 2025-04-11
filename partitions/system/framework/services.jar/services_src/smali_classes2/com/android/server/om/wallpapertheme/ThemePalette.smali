.class public Lcom/android/server/om/wallpapertheme/ThemePalette;
.super Ljava/lang/Object;
.source "ThemePalette.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mIsGray:Z

.field public mMonetPaletteGG:Ljava/util/List;

.field public mMonetPaletteSS:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SWT_ThemePalette"

    .line 16
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    return-void
.end method


# virtual methods
.method public getMonetColorGG(I)I
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMonetColorGG(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0xd

    add-int/2addr p1, p2

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result p0

    return p0
.end method

.method public getMonetColorSS(I)I
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 32
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMonetColorSS(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0xd

    add-int/2addr p1, p2

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result p0

    return p0
.end method

.method public getPaletteGG()Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    return-object p0
.end method

.method public getPaletteSS()Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    return-object p0
.end method

.method public setPalette(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    .line 52
    iput-boolean p3, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    .line 53
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "palette updated"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public writeLastPalette()V
    .locals 5

    const/4 v0, 0x0

    .line 66
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/overlays/wallpapertheme/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/16 v2, 0x1ff

    const/4 v3, -0x1

    .line 69
    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 71
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/overlays/wallpapertheme/last_palette.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    goto :goto_2

    :cond_3
    const-string v0, "0"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v1, v0, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v0, v2

    goto :goto_5

    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    .line 82
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    .line 85
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 87
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_5

    .line 85
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 87
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_5
    :goto_6
    throw v1
.end method
