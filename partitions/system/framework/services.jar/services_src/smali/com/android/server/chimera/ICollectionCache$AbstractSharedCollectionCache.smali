.class public abstract Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;
.super Ljava/lang/Object;
.source "ChimeraDataCache.java"


# instance fields
.field public final apps:Ljava/util/Set;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->init()Z

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->init()Z

    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public init()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->init()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ","

    iget-object v2, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->apps:Ljava/util/Set;

    invoke-static {p1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1
.end method
