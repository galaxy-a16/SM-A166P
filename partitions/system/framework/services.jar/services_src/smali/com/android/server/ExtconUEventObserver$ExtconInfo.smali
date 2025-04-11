.class public final Lcom/android/server/ExtconUEventObserver$ExtconInfo;
.super Ljava/lang/Object;
.source "ExtconUEventObserver.java"


# static fields
.field public static sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mDeviceTypes:Ljava/util/HashSet;

.field public final mName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$q1NKfXWDxBCUTdtfDANc8h8632I(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->lambda$new$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const-string v0, ""

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    .line 207
    iput-object p1, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    .line 210
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/extcon"

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/ExtconUEventObserver$ExtconInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/ExtconUEventObserver$ExtconInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 212
    array-length v2, v1

    const-string v3, "This probably means the selinux policies need to be changed."

    const-string v4, "ExtconUEventObserver"

    if-nez v2, :cond_0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to list cables in /sys/class/extcon/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    array-length p1, v1

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, p1, :cond_1

    aget-object v6, v1, v5

    const/4 v7, 0x0

    .line 221
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    :try_start_1
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "name"

    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, v2, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    .line 223
    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r"

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 227
    iget-object v7, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    move-object v7, v8

    goto :goto_1

    :catch_1
    move-exception v6

    .line 229
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/name. "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 184
    sget-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    invoke-static {}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->initExtconInfos()V

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    sget-object v1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 190
    array-length v6, p0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, p0, v7

    .line 191
    invoke-virtual {v5, v8}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->hasCableType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 192
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    .line 186
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static initExtconInfos()V
    .locals 7

    .line 158
    sget-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/extcon"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " exists "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isDir "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " but listFiles returns null."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "This probably means the selinux policies need to be changed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtconUEventObserver"

    .line 165
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 169
    sput-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    goto :goto_1

    .line 171
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 173
    new-instance v6, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v2, [Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    sput-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "cable."

    .line 211
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getDevicePath()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sys/class/extcon/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 252
    iget-object v3, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/devices"

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get the extcon device path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ExtconUEventObserver"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatePath()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "/sys/class/extcon/%s/state"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasCableType(Ljava/lang/String;)Z
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
