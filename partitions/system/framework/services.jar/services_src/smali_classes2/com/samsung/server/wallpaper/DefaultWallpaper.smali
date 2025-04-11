.class public Lcom/samsung/server/wallpaper/DefaultWallpaper;
.super Ljava/lang/Object;
.source "DefaultWallpaper.java"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setSettingsSystemUiTransparency(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;-><init>(Lcom/samsung/server/wallpaper/DefaultWallpaper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const-string v0, "DefaultWallpaper"

    .line 74
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 78
    iput-object p3, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 79
    iput-object p4, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    return-void
.end method


# virtual methods
.method public getDefaultWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "com.samsung.android.wallpaper.res"

    .line 206
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v1, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageFileName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DefaultWallpaper"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x2e

    .line 208
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 219
    :try_start_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v3, "drawable"

    .line 221
    invoke-virtual {p0, p1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultWallpaperBitmap: resid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    .line 224
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :catch_0
    move-exception p0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to load default wallpaper : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v2

    :cond_1
    const-string p0, "Fail to get default file name"

    .line 210
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public sendWallpaperChangeIntent()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 196
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "DefaultWallpaper"

    const-string/jumbo v0, "send ChangedIntent complete"

    .line 197
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setKWPTypeLiveWallpaper(I)V
    .locals 2

    .line 144
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v1, 0x10

    .line 146
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypeLiveWallpaper(II)V

    return-void
.end method

.method public setKWPTypeLiveWallpaper(II)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 151
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 152
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 153
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setKWPTypePreload(II)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 158
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 159
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 160
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSWPTypePreload(II)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 138
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 139
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 140
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setSettingsSystemUiTransparency(ILjava/lang/String;)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSettingsSystemUiTransparency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public updateDefaultWallpaper()V
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateTransparencySettingIfNeed(Ljava/lang/String;IZ)V
    .locals 2

    .line 165
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.sec.android.app.desktoplauncher"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.themecenter"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "service.odtcfactory.sec.com.odtcfactoryservice"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "com.samsung.android.app.dressroom"

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 181
    :cond_2
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {p0, p3, p2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setSWPTypePreload(II)V

    .line 184
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 185
    invoke-virtual {p0, p3, p2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypePreload(II)V

    :cond_4
    return-void
.end method
