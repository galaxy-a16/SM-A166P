.class public abstract Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;
.super Ljava/lang/Object;
.source "SnapshotHelper.java"


# static fields
.field public static final LOCK_SETTINGS:[Ljava/lang/String;

.field public static final SUB_DISPLAY_LOCK_SETTINGS:[Ljava/lang/String;

.field public static final SUB_DISPLAY_SYSTEM_SETTINGS:[Ljava/lang/String;

.field public static final SYSTEM_SETTINGS:[Ljava/lang/String;

.field public static final VIRTUAL_DISPLAY_SYSTEM_SETTINGS:[Ljava/lang/String;

.field public static final defaultSettings:Ljava/util/HashMap;

.field public static final settingsData:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string/jumbo v0, "wallpaper_tilt_status_sub"

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    const-string v2, "lockscreen_wallpaper"

    const-string/jumbo v3, "wallpaper_tilt_status"

    .line 891
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->SYSTEM_SETTINGS:[Ljava/lang/String;

    const-string v1, "lockscreen_wallpaper_tilt_effect"

    const-string v3, "lockscreen_wallpaper_transparent"

    .line 898
    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->LOCK_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v2, "sub_display_system_wallpaper_transparency"

    const-string v3, "lockscreen_wallpaper_sub"

    .line 904
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->SUB_DISPLAY_SYSTEM_SETTINGS:[Ljava/lang/String;

    const-string/jumbo v4, "sub_display_lockscreen_wallpaper_transparency"

    .line 909
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->SUB_DISPLAY_LOCK_SETTINGS:[Ljava/lang/String;

    const-string v4, ""

    .line 914
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->VIRTUAL_DISPLAY_SYSTEM_SETTINGS:[Ljava/lang/String;

    .line 920
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    const/4 v6, 0x1

    .line 921
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x5

    .line 922
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 923
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 924
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x11

    .line 925
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12

    .line 926
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x21

    .line 927
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    new-instance v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData$1;

    invoke-direct {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData$1;-><init>()V

    sput-object v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->defaultSettings:Ljava/util/HashMap;

    return-void
.end method

.method public static getDefaultValue(Ljava/lang/String;)I
    .locals 2

    .line 942
    sget-object v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->defaultSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getSettingNames(I)[Ljava/lang/String;
    .locals 1

    .line 950
    invoke-static {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result p0

    .line 952
    sget-object v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
