.class public interface abstract Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;
.super Ljava/lang/Object;
.source "SnapshotCallback.java"


# virtual methods
.method public abstract requestBindWallpaper(IILandroid/content/ComponentName;)V
.end method

.method public abstract requestClearWallpaper(II)V
.end method

.method public abstract requestInitializeThumnailFile(Lcom/android/server/wallpaper/WallpaperData;II)V
.end method

.method public abstract requestKeyguardListeners()Ljava/util/List;
.end method

.method public abstract requestNotifyLockWallpaperChanged(II)V
.end method

.method public abstract requestNotifySemWallpaperColors(I)V
.end method

.method public abstract requestParseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;Z)V
.end method

.method public abstract requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V
.end method

.method public abstract requestSaveSettingsLocked(II)V
.end method

.method public abstract requestWallpaperData(II)Lcom/android/server/wallpaper/WallpaperData;
.end method

.method public abstract requestWriteWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V
.end method
