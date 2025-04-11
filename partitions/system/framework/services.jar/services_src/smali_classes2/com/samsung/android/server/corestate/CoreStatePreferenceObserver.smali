.class public Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;
.super Ljava/lang/Object;
.source "CoreStatePreferenceObserver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CoreStatePreferenceObserver"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntegerDefaultKeyMap:Ljava/util/Map;

.field public mPref:Landroid/content/SharedPreferences;

.field public final mSharedPrefKeyTypeMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->registerObservingItems()V

    return-void
.end method


# virtual methods
.method public final getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow.property"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public final populate(Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 7

    .line 74
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 77
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_0

    .line 79
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 82
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 84
    :cond_1
    sget-object v3, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "populate: failed to get getSharedPreference"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v1

    .line 87
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 88
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v3, v5, :cond_0

    .line 89
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public populateState(Landroid/os/Bundle;I)I
    .locals 0

    .line 68
    iget-object p2, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public registerObservingItems()V
    .locals 2

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    const-string/jumbo v0, "mw_immersive_mode"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
