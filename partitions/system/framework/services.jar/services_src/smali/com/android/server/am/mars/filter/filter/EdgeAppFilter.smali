.class public Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
.super Ljava/lang/Object;
.source "EdgeAppFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCocktailBarList:Ljava/util/ArrayList;

.field mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

.field public mContext:Landroid/content/Context;

.field public mRegisteredCocktailBarSettingsObserver:Z


# direct methods
.method public static bridge synthetic -$$Nest$mgetCocktailBarPackage(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->getCocktailBarPackage()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$EdgeAppFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->unregisterEnabledCocktailBarChanged()V

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 0

    .line 60
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 61
    monitor-enter p2

    .line 62
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 63
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    if-eq p4, p3, :cond_1

    .line 65
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 66
    :cond_1
    monitor-exit p2

    const/16 p0, 0x11

    return p0

    .line 68
    :cond_2
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCocktailBarPackage()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cocktail_bar_enabled_cocktails"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v2, ";"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ";"

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->setContext(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->registerEnabledCocktailBarChanged()V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->getCocktailBarPackage()V

    return-void
.end method

.method public final registerEnabledCocktailBarChanged()V
    .locals 5

    .line 96
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    .line 103
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cocktail_bar_enabled_cocktails"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    .line 103
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    :cond_0
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final unregisterEnabledCocktailBarChanged()V
    .locals 2

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException occurred in unregisterEnabledCocktailBarChanged()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
