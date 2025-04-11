.class public Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;
.super Ljava/lang/Object;
.source "SnapshotManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public connectedSnapshotForLiveWallpaper:I

.field public settings:Ljava/util/Map;

.field public wallpaper:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    const/4 v0, -0x1

    .line 617
    iput v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;
    .locals 5

    .line 665
    new-instance v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    invoke-direct {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;-><init>()V

    .line 666
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->clone()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 668
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 669
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 670
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 671
    iget-object v4, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 674
    :cond_0
    iget p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    iput p0, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 614
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->clone()Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedSnapshotForLiveWallpaper()I
    .locals 0

    .line 644
    iget p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    return p0
.end method

.method public getLockscreenVisibility(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "lockscreen_wallpaper_sub"

    goto :goto_0

    :cond_0
    const-string p1, "lockscreen_wallpaper"

    .line 636
    :goto_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->getDefaultValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSettings()Ljava/util/Map;
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    return-object p0
.end method

.method public getWallpaperData()Lcom/android/server/wallpaper/WallpaperData;
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    return-object p0
.end method

.method public setConnectedSnapshotForLiveWallpaper(I)V
    .locals 0

    .line 640
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    return-void
.end method

.method public setLockscreenVisibility(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 624
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    const-string p1, "lockscreen_wallpaper_sub"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 626
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    const-string p1, "lockscreen_wallpaper"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setSettings(Ljava/util/Map;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    return-void
.end method

.method public setWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    return-void
.end method
