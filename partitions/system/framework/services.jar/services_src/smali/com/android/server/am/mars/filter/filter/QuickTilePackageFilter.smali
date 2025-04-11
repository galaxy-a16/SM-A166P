.class public Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;
.super Ljava/lang/Object;
.source "QuickTilePackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# static fields
.field public static CUSTOM_PREFIX:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field public mActiveQuickTilePackages:Ljava/util/ArrayList;

.field public mContext:Landroid/content/Context;

.field public mQuickTileContentObserver:Landroid/database/ContentObserver;

.field public mRegisteredQuickTileContentObserver:Z


# direct methods
.method public static bridge synthetic -$$Nest$mgetActiveQuickTilePackages(Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->getActiveQuickTilePackages()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->TAG:Ljava/lang/String;

    const-string v0, "custom"

    .line 18
    sput-object v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->CUSTOM_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    .line 22
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Landroid/database/ContentObserver;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;
    .locals 1

    .line 32
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$QuickTilePackageFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->unregisterContentObserver()V

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 0

    .line 57
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result p3

    if-ne p2, p3, :cond_1

    .line 58
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    monitor-enter p2

    if-eqz p1, :cond_0

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 60
    monitor-exit p2

    const/16 p0, 0x15

    return p0

    .line 62
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getActiveQuickTilePackages()V
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ","

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ","

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 76
    sget-object v4, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->CUSTOM_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    const-string v4, "("

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 79
    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v5, :cond_0

    .line 83
    sget-object v5, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActiveQuickTilePackages: add mActiveQuickTilePackages "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v3

    .line 87
    sget-object v4, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error occurred getActiveQuickTilePackages() ! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    .line 70
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->setContext(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->getActiveQuickTilePackages()V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->registerContentObserver()V

    return-void
.end method

.method public final registerContentObserver()V
    .locals 5

    .line 95
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Landroid/database/ContentObserver;

    .line 103
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    .line 103
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    :cond_0
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final unregisterContentObserver()V
    .locals 2

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    sget-object p0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
