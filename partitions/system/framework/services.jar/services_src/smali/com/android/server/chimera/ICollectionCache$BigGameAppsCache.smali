.class public Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;
.super Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;
.source "ChimeraDataCache.java"


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BigGameAppsCache"

    return-object p0
.end method
