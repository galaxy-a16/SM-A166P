.class public Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;
.super Ljava/lang/Object;
.source "AccessibilityAppFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAccessibilityContentObserver:Landroid/database/ContentObserver;

.field public mContext:Landroid/content/Context;

.field public mEnabledAccessibilityPackages:Ljava/util/ArrayList;

.field public mRegisteredAccessibilityContentObserver:Z


# direct methods
.method public static bridge synthetic -$$Nest$mgetEnabledAccessibilityPackage(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getEnabledAccessibilityPackage()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;
    .locals 1

    .line 31
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addPackages(Ljava/lang/String;)V
    .locals 3

    const-string v0, "/"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 96
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 97
    aget-object p1, p1, v0

    .line 98
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v1, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public deInit()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->unregisterContentObserver()V

    return-void

    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 0

    .line 59
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result p3

    if-ne p2, p3, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 60
    monitor-enter p2

    .line 61
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 62
    monitor-exit p2

    const/16 p0, 0x13

    return p0

    .line 64
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

.method public final getEnabledAccessibilityPackage()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ":"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ":"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    const-string v4, "/"

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {p0, v3}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->addPackages(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "/"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->addPackages(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->setContext(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getEnabledAccessibilityPackage()V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->registerContentObserver()V

    return-void
.end method

.method public isEnabledAccessibilityApp(Ljava/lang/String;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 136
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 138
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerContentObserver()V
    .locals 5

    .line 109
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    .line 116
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    .line 116
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    :cond_0
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final unregisterContentObserver()V
    .locals 2

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
