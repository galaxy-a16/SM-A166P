.class public Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;
.super Ljava/lang/Object;
.source "PrePackageInstallerBase.java"


# instance fields
.field public mDecompressedFile:Ljava/io/File;

.field public mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getApkFileName()Ljava/lang/String;
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".apk"

    .line 683
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, ".apk.gz"

    .line 685
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".gz"

    const-string v1, ""

    .line 686
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getDecompressedApkFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string p0, ".apk.gz"

    const-string v0, ""

    .line 742
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ".gz"

    .line 743
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 744
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user_de/0/android/cache/PrePackageInstaller"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 5

    const-string v0, "PrePackageInstaller"

    .line 695
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    return-object p0

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".apk.gz"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 702
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getDecompressedApkFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    .line 707
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 708
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 709
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 713
    :cond_3
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decompressing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFile(Ljava/io/File;Ljava/io/File;)I

    .line 715
    iput-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mDecompressedFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decompress "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iput-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mDecompressedFile:Ljava/io/File;

    .line 720
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mDecompressedFile:Ljava/io/File;

    return-object p0

    :cond_4
    :goto_1
    return-object v2
.end method

.method public removeCacheFile()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk.gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mDecompressedFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->getDecompressedApkFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mDecompressedFile:Ljava/io/File;

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mDecompressedFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mDecompressedFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrePackageInstaller"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mDecompressedFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkFile{origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decompressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$ApkFile;->mDecompressedFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
