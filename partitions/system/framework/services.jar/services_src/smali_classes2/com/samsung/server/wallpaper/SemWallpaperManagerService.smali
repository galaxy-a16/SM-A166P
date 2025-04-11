.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
.super Ljava/lang/Object;
.source "SemWallpaperManagerService.java"


# static fields
.field public static final SHIPPED:Z

.field public static final sLogList:Ljava/util/ArrayList;

.field public static sSnapshotTestMode:Z


# instance fields
.field public mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

.field public mDensityDpi:I

.field public mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Landroid/os/Handler;

.field public mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

.field public mKnox:Lcom/samsung/server/wallpaper/Knox;

.field public mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

.field public mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

.field public mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

.field public mOldUserId:I

.field public mOrientation:I

.field public final mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

.field public final mSnapshotDataLock:Ljava/lang/Object;

.field public final mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

.field public mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

.field public mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 170
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 240
    sput-boolean v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;Landroid/app/SemWallpaperResourcesInfo;)V
    .locals 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    .line 210
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 211
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    const/4 v0, -0x1

    .line 215
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    .line 216
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    const/4 v0, 0x2

    .line 238
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 243
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 244
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 245
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    .line 246
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 247
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 248
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    .line 249
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 250
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    .line 251
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 252
    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    .line 429
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    const-string v0, "SemWallpaperManagerService"

    .line 259
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 262
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 263
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 264
    new-instance v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-direct {v0, p1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;-><init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 265
    new-instance p3, Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-direct {p3, p1, p2, p0, p4}, Lcom/samsung/server/wallpaper/DefaultWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 266
    new-instance p3, Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-direct {p3, p1, p0, p4}, Lcom/samsung/server/wallpaper/CMFWallpaper;-><init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 267
    new-instance p3, Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/server/wallpaper/OMCWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 268
    new-instance p3, Lcom/samsung/server/wallpaper/LockWallpaper;

    invoke-direct {p3}, Lcom/samsung/server/wallpaper/LockWallpaper;-><init>()V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    .line 269
    new-instance p3, Lcom/samsung/server/wallpaper/DesktopMode;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/server/wallpaper/DesktopMode;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 270
    new-instance p3, Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-direct {p3, p2}, Lcom/samsung/server/wallpaper/SubDisplayMode;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 271
    new-instance p3, Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/server/wallpaper/LegibilityColor;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 272
    new-instance p2, Lcom/samsung/server/wallpaper/Knox;

    invoke-direct {p2, p1}, Lcom/samsung/server/wallpaper/Knox;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    .line 274
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 275
    new-instance p3, Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    invoke-direct {p3, p2}, Lcom/samsung/server/wallpaper/VirtualDisplayMode;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 278
    iget p3, p2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setDensityDpi(I)V

    .line 279
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setOrientation(I)V

    .line 281
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 282
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->registerUserActivityReceiver()V

    .line 284
    new-instance p3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;

    invoke-direct {p3, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 629
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 630
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 633
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 634
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const-string v3, "\n"

    .line 638
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 641
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 642
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallStackString()Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 646
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallStackString(IZ)Ljava/lang/String;
    .locals 8

    .line 652
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-gez p0, :cond_0

    .line 655
    array-length p0, v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 661
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 662
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCallStackString"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    :cond_2
    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 668
    array-length p0, v0

    sub-int/2addr p0, v1

    :cond_3
    const-string v2, ""

    move v3, v1

    move-object v4, v2

    :goto_1
    add-int v5, v1, p0

    if-ge v3, v5, :cond_7

    .line 671
    array-length v5, v0

    if-ge v3, v5, :cond_7

    .line 672
    aget-object v5, v0, v3

    if-ne v3, v1, :cond_4

    .line 674
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 676
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    const-string v7, "\n"

    goto :goto_2

    :cond_5
    move-object v7, v2

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eqz p1, :cond_6

    .line 682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") :"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 686
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_8

    .line 687
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    return-object v2
.end method

.method public static getFileName(III)Ljava/lang/String;
    .locals 3

    .line 442
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-ne p1, v1, :cond_0

    const-string/jumbo p0, "wallpaper_desktop_info.xml"

    return-object p0

    :cond_0
    if-ne p1, v2, :cond_2

    if-ne p2, v2, :cond_1

    const-string/jumbo p0, "wallpaper_desktop_lock"

    return-object p0

    :cond_1
    const-string/jumbo p0, "wallpaper_desktop_lock_orig"

    return-object p0

    :cond_2
    if-ne p2, v2, :cond_3

    const-string/jumbo p0, "wallpaper_desktop"

    return-object p0

    :cond_3
    const-string/jumbo p0, "wallpaper_desktop_orig"

    return-object p0

    .line 458
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-ne p1, v1, :cond_5

    const-string/jumbo p0, "wallpaper_subdisplay_info.xml"

    return-object p0

    :cond_5
    if-ne p1, v2, :cond_7

    if-ne p2, v2, :cond_6

    const-string/jumbo p0, "wallpaper_sub_display_lock"

    return-object p0

    :cond_6
    const-string/jumbo p0, "wallpaper_sub_display_lock_orig"

    return-object p0

    :cond_7
    if-ne p2, v2, :cond_8

    const-string/jumbo p0, "wallpaper_sub_display"

    return-object p0

    :cond_8
    const-string/jumbo p0, "wallpaper_sub_display_orig"

    return-object p0

    .line 474
    :cond_9
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_c

    if-ne p1, v1, :cond_a

    const-string/jumbo p0, "wallpaper_virtualdisplay_info.xml"

    return-object p0

    :cond_a
    if-ne p2, v2, :cond_b

    const-string/jumbo p0, "wallpaper_virtual_display"

    return-object p0

    :cond_b
    const-string/jumbo p0, "wallpaper_virtual_display_orig"

    return-object p0

    :cond_c
    if-ne p1, v1, :cond_d

    const-string/jumbo p0, "wallpaper_info.xml"

    return-object p0

    :cond_d
    if-ne p1, v2, :cond_f

    if-ne p2, v2, :cond_e

    const-string/jumbo p0, "wallpaper_lock"

    return-object p0

    :cond_e
    const-string/jumbo p0, "wallpaper_lock_orig"

    return-object p0

    :cond_f
    if-ne p2, v2, :cond_10

    const-string/jumbo p0, "wallpaper"

    return-object p0

    :cond_10
    const-string/jumbo p0, "wallpaper_orig"

    return-object p0
.end method

.method public static getLogArray()[Ljava/lang/String;
    .locals 2

    .line 1907
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1908
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1909
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1911
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1912
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 614
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 618
    :try_start_0
    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SemWallpaperManagerService"

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringFromFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :goto_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 624
    throw v0
.end method

.method public static getWallpaperDir(I)Ljava/io/File;
    .locals 0

    .line 1143
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getWallpaperLockDir(I)Ljava/io/File;
    .locals 2

    .line 1139
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "wallpaper_lock_images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static putLog(Ljava/lang/String;)V
    .locals 7

    const-string v0, "SemWallpaperManagerService"

    .line 1891
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1893
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1894
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1895
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    .line 1896
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1897
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    rem-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1900
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v1, 0x14

    if-le p0, v1, :cond_0

    const/4 p0, 0x0

    .line 1901
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1903
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final canRestore(I)Z
    .locals 6

    .line 1381
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "No snapshot"

    const/4 v3, 0x2

    const-string v4, "SemWallpaperManagerService"

    if-gtz v0, :cond_0

    const-string v0, "canRestore: No snapshot."

    .line 1382
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0, v3, p1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/lang/String;)V

    return v1

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v5, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1388
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 1389
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canRestore: No snapshot for key ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0, v3, p1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/lang/String;)V

    return v1
.end method

.method public deleteThumbnailFile(II)Z
    .locals 1

    .line 1128
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    move-result p1

    .line 1129
    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getThumbnailFile(II)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1130
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1131
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    .line 1132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteThumbnailFile: which = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", success = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemWallpaperManagerService"

    invoke-static {p2, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final doRestore(II)Ljava/util/Map;
    .locals 4

    .line 1461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1464
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1465
    :try_start_0
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p2

    .line 1466
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    const-string v1, "SemWallpaperManagerService"

    .line 1469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRestore: which set = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1472
    invoke-virtual {p0, p1, v2, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->restoreSnapshotInternal(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I

    move-result v3

    .line 1473
    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->postProcess(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V

    .line 1474
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 1466
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final doRestoreOrMigrate(II)Ljava/util/Map;
    .locals 6

    .line 1482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1485
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1486
    :try_start_0
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v2

    .line 1487
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 1490
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1491
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v4, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->shouldRestoreSnapshot(III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1492
    invoke-virtual {p0, p1, v3, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->restoreSnapshotInternal(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I

    move-result v4

    .line 1493
    invoke-virtual {p0, p1, v3, v2, v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->postProcess(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V

    .line 1494
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1496
    :cond_0
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1497
    :try_start_1
    iget-object v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v5, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->migrateToPriorSnapshot(III)V

    .line 1498
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1499
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x3ec

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1498
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    return-object v0

    :catchall_1
    move-exception p0

    .line 1487
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "SemWallpaperManagerService start"

    .line 354
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Legibility Version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/SemWallpaperColors;->getLegibilityVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  allowScreenRotate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateSystem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->getAllowScreenRotateLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Lid state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string v0, " ------------ Snapshot History ------------"

    .line 367
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getLogArray()[Ljava/lang/String;

    move-result-object p0

    const-string v0, " --------------LogArray--------------"

    .line 371
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 373
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "  logArray is null"

    .line 378
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const-string p0, "SemWallpaperManagerService"

    .line 381
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p0, "SemWallpaperManagerService end"

    .line 382
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public generateCroppedBitmap(Lcom/samsung/server/wallpaper/SemWallpaperData;Ljava/lang/String;)Z
    .locals 9

    .line 897
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 902
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 907
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 912
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 913
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const-string v4, "SemWallpaperManagerService"

    if-lez v2, :cond_c

    if-gtz v3, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v5, "com.samsung.android.themecenter"

    .line 919
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x1

    if-nez p2, :cond_4

    .line 920
    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    return v5

    .line 924
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(Lcom/samsung/server/wallpaper/SemWallpaperData;)I

    move-result p2

    .line 925
    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    .line 926
    iget-object v7, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 928
    iget p2, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eqz p2, :cond_b

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    if-nez v6, :cond_5

    goto/16 :goto_2

    .line 936
    :cond_5
    invoke-virtual {p0, v2, v3, p2, v6}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCroppedBitmapInfo(IIII)[Landroid/graphics/Point;

    move-result-object p0

    .line 937
    aget-object p2, p0, v1

    iget v6, p2, Landroid/graphics/Point;->x:I

    .line 938
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 939
    aget-object p0, p0, v5

    iget v7, p0, Landroid/graphics/Point;->x:I

    .line 940
    iget p0, p0, Landroid/graphics/Point;->y:I

    if-gez v7, :cond_6

    move v7, v1

    :cond_6
    if-gez p0, :cond_7

    goto :goto_0

    :cond_7
    move v1, p0

    .line 945
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateCroppedBitmap:\n\tbitmapWidth = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\tbitmapHeight = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\tfinalWidth = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\tfinalHeight = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\toptimalDx = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\toptimalDy = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v6, :cond_a

    if-gtz p2, :cond_8

    goto :goto_1

    .line 961
    :cond_8
    invoke-static {v0, v7, v1, v6, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 962
    invoke-virtual {p1, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    .line 965
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 966
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    return v5

    :cond_a
    :goto_1
    const-string p0, "generateCroppedBitmap: Width or height of newly generated bitmap should be greater than 0."

    .line 954
    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "generateResizedBitmap: Width or height of newly generated bitmap should be greater than 0."

    .line 955
    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    return v5

    .line 929
    :cond_b
    :goto_2
    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    return v5

    :cond_c
    :goto_3
    const-string p0, "generateCroppedBitmap: bitmap size must be > 0"

    .line 915
    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;Z)Landroid/graphics/Bitmap;
    .locals 12

    .line 770
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v0

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateResizedBitmap: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isPreloadRotated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWallpaperManagerService"

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 774
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(Lcom/samsung/server/wallpaper/SemWallpaperData;)I

    move-result v1

    .line 775
    iget-object v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 777
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateResizedBitmap: failed to get display. displayId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 780
    :cond_0
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 781
    invoke-virtual {v5, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 783
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-eqz v5, :cond_17

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-nez v5, :cond_1

    goto/16 :goto_9

    .line 785
    :cond_1
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isFolder()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 786
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result v5

    if-eqz v5, :cond_3

    .line 787
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v5

    if-eqz v5, :cond_3

    .line 788
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getOrientation()I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 789
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 790
    iget v7, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v7, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 791
    iput v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 796
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSingleType(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 797
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "generateResizedBitmap: invalid which = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 801
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 802
    iget-object v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLockWallpaper:Lcom/samsung/server/wallpaper/LockWallpaper;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/server/wallpaper/LockWallpaper;->getWallpaperFile(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 803
    :cond_5
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v5, :cond_6

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 804
    :cond_6
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_7

    .line 805
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object p1

    .line 810
    :cond_7
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    if-eqz p1, :cond_9

    .line 812
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    .line 820
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 821
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    .line 813
    :cond_9
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateResizedBitmap: file is null, (which = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") so create Operator wallpaper bitmap"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/OMCWallpaper;->getOperatorWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_a

    .line 816
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateResizedBitmap: file operator bitmap is null, (which = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") so create Default wallpaper bitmap"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->getDefaultWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    :cond_a
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p1, :cond_b

    const-string p0, "generateResizedBitmap: bitmap is null"

    .line 828
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 832
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 833
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v0, :cond_16

    if-gtz v5, :cond_c

    goto/16 :goto_7

    .line 842
    :cond_c
    iget v7, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 843
    iget v8, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 845
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getOrientation()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    .line 846
    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isTablet()Z

    move-result v7

    if-nez v7, :cond_e

    sget-boolean v7, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v7, :cond_d

    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_3

    .line 850
    :cond_d
    iget p2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 851
    iget p2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_4

    .line 847
    :cond_e
    :goto_3
    iget p2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 848
    iget p2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_f
    :goto_4
    if-eqz p3, :cond_10

    move v11, v8

    move v8, v7

    move v7, v11

    .line 861
    :cond_10
    invoke-virtual {p0, v0, v5, v7, v8}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCroppedBitmapInfo(IIII)[Landroid/graphics/Point;

    move-result-object p0

    const/4 p2, 0x0

    .line 862
    aget-object p3, p0, p2

    iget v1, p3, Landroid/graphics/Point;->x:I

    .line 863
    iget p3, p3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    .line 864
    aget-object p0, p0, v7

    iget v7, p0, Landroid/graphics/Point;->x:I

    .line 865
    iget p0, p0, Landroid/graphics/Point;->y:I

    if-gez v7, :cond_11

    move v7, p2

    :cond_11
    if-gez p0, :cond_12

    goto :goto_5

    :cond_12
    move p2, p0

    .line 870
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateResizedBitmap: start bitmapWidth = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", bitmapHeight = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " optimalWidth = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", optimalHeight = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", finalWidth = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , finalHeight = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", optimalDx = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , optimalDy = "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_15

    if-lez v5, :cond_15

    if-lez v1, :cond_15

    if-gtz p3, :cond_13

    goto :goto_6

    .line 882
    :cond_13
    invoke-static {p1, v7, p2, v1, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p2, "generateResizedBitmap end createBitmap"

    .line 883
    invoke-static {v2, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    .line 887
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 890
    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v3

    .line 891
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateResizedBitmap : took :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v0, 0xf4240

    div-long v3, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    rem-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d.%06dms"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "generateResizedBitmap : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_15
    :goto_6
    const-string p0, "generateResizedBitmap: Width or height of newly generated bitmap should be greater than 0."

    .line 877
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_16
    :goto_7
    const-string p0, "generateResizedBitmap: bitmap size must be > 0"

    .line 836
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 824
    :goto_8
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    throw p0

    :cond_17
    :goto_9
    return-object v6
.end method

.method public generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .locals 1

    const/4 v0, 0x0

    .line 761
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 763
    invoke-virtual {p2, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCroppedBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final getCroppedBitmapInfo(IIII)[Landroid/graphics/Point;
    .locals 8

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/graphics/Point;

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResizedBitmapOffset start optimal width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemWallpaperManagerService"

    invoke-static {v2, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, p4

    int-to-float v3, p3

    div-float/2addr v0, v3

    const/4 v3, 0x0

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    int-to-float v4, p2

    int-to-float v5, p1

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-lez v0, :cond_0

    mul-int/2addr p3, p2

    .line 1028
    div-int/2addr p3, p4

    sub-int/2addr p1, p3

    int-to-double v6, p1

    mul-double/2addr v6, v4

    double-to-int p1, v6

    move p4, p2

    move p2, p1

    move p1, p3

    move p3, v3

    goto :goto_0

    :cond_0
    mul-int/2addr p4, p1

    .line 1031
    div-int/2addr p4, p3

    sub-int/2addr p2, p4

    int-to-double p2, p2

    mul-double/2addr p2, v4

    double-to-int p2, p2

    move p3, p2

    move p2, v3

    goto :goto_0

    :cond_1
    move p1, v3

    move p2, p1

    move p3, p2

    move p4, p3

    .line 1035
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, p0, v3

    .line 1036
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x1

    aput-object v0, p0, v3

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayInfo end width = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dx = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , dy = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getCurrentImplicitMode()I
    .locals 0

    .line 1106
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1107
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->determineMode(Z)I

    move-result p0

    return p0
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 391
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    return p0
.end method

.method public getDensityDpi()I
    .locals 0

    .line 418
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    return p0
.end method

.method public getDisplayId(I)I
    .locals 3

    .line 984
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    and-int/lit8 p1, p1, 0x3c

    const/16 v0, 0x10

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 987
    :goto_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_1

    move v1, p1

    goto :goto_2

    .line 990
    :cond_1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result p0

    if-nez p0, :cond_2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    move v1, v2

    .line 1000
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDisplayId: displayId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWallpaperManagerService"

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public getDisplayId(Lcom/samsung/server/wallpaper/SemWallpaperData;)I
    .locals 0

    .line 973
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(I)I

    move-result p0

    return p0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 395
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 396
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 397
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 398
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 400
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 401
    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-object v0
.end method

.method public getModeEnsuredWhich(I)I
    .locals 1

    .line 1111
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 1114
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentImplicitMode()I

    move-result p0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result p1

    or-int/2addr p0, p1

    .line 1115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getModeEnsuredWhich: detected which = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWallpaperManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getOldUserId()I
    .locals 0

    .line 410
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 426
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    return p0
.end method

.method public getPreloadRotatedCroppedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 757
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshotCount(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1838
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(I)I

    move-result p0

    return p0

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(II)I

    move-result p0

    return p0
.end method

.method public final getTargetFile(IILcom/android/server/wallpaper/WallpaperData;)Ljava/io/File;
    .locals 3

    .line 1768
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    .line 1769
    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result p3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    .line 1800
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1801
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p2, v2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1803
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p2, v0, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_4

    .line 1790
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1791
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    .line 1792
    :goto_0
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "wallpaper_first_sub"

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "wallpaper_first_sub_home"

    :goto_1
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    .line 1794
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    .line 1795
    :goto_2
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "wallpaper_first"

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "wallpaper_first_home"

    :goto_3
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    .line 1782
    :cond_7
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1783
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "wallpaper_animated_background_sub"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    .line 1785
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "wallpaper_animated_background"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    .line 1774
    :cond_9
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1775
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "wallpaper_motion_background_sub"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4

    .line 1777
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "wallpaper_motion_background"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1808
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTargetFile: which = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", WallpaperDataWhich = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", wallpaperType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", targetFile = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWallpaperManagerService"

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getThumbnailFile(II)Ljava/io/File;
    .locals 2

    .line 1121
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    move-result p0

    .line 1122
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p1

    .line 1123
    new-instance v0, Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wallpaper_thumb_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public handleWallpaperBindingTimeout(ZZ)V
    .locals 1

    const/16 v0, 0x3f1

    if-eqz p1, :cond_0

    .line 1043
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1046
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x7d0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public hasLockscreenWallpaper(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 709
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 710
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const-string v2, "lockscreen_wallpaper_sub"

    .line 709
    invoke-static {p1, v2, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 712
    :cond_2
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 713
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    move p0, v0

    :goto_1
    const-string v2, "lockscreen_wallpaper"

    .line 712
    invoke-static {p1, v2, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public initializeThumnailFile(Lcom/android/server/wallpaper/WallpaperData;III)Ljava/io/File;
    .locals 3

    .line 1052
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "SemWallpaperManagerService"

    const-string p2, "initializeThumnailFile: SemWallpaperData is null."

    .line 1054
    invoke-static {p0, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 1058
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    const/16 v1, 0x8

    if-ne p3, v1, :cond_9

    .line 1060
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_9

    .line 1062
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1063
    new-instance p1, Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1064
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v2, "wallpaper_first_virtual"

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "wallpaper_first_virtual_home"

    .line 1065
    :goto_1
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFirstFrameFile(Ljava/io/File;)V

    goto :goto_6

    .line 1066
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1067
    new-instance p1, Ljava/io/File;

    if-eqz v0, :cond_4

    .line 1068
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    :goto_2
    if-eqz v0, :cond_5

    const-string/jumbo v2, "wallpaper_first_sub"

    goto :goto_3

    :cond_5
    const-string/jumbo v2, "wallpaper_first_sub_home"

    .line 1069
    :goto_3
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFirstFrameFile(Ljava/io/File;)V

    goto :goto_6

    .line 1071
    :cond_6
    new-instance p1, Ljava/io/File;

    if-eqz v0, :cond_7

    .line 1072
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    goto :goto_4

    :cond_7
    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    :goto_4
    if-eqz v0, :cond_8

    const-string/jumbo v2, "wallpaper_first"

    goto :goto_5

    :cond_8
    const-string/jumbo v2, "wallpaper_first_home"

    .line 1073
    :goto_5
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFirstFrameFile(Ljava/io/File;)V

    .line 1075
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFirstFrameFile()Ljava/io/File;

    move-result-object p1

    :cond_9
    const/4 v1, 0x4

    if-ne p3, v1, :cond_b

    if-eqz v0, :cond_b

    .line 1080
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_b

    .line 1082
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1083
    new-instance p1, Ljava/io/File;

    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_animated_background_sub"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedBackground(Ljava/io/File;)V

    goto :goto_7

    .line 1085
    :cond_a
    new-instance p1, Ljava/io/File;

    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_animated_background"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedBackground(Ljava/io/File;)V

    .line 1087
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedBackground()Ljava/io/File;

    move-result-object p1

    :cond_b
    const/4 v1, 0x1

    if-ne p3, v1, :cond_d

    if-eqz v0, :cond_d

    .line 1092
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_d

    .line 1094
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1095
    new-instance p1, Ljava/io/File;

    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p2

    const-string/jumbo p3, "wallpaper_motion_background_sub"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionBackground(Ljava/io/File;)V

    goto :goto_8

    .line 1097
    :cond_c
    new-instance p1, Ljava/io/File;

    invoke-static {p4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p2

    const-string/jumbo p3, "wallpaper_motion_background"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionBackground(Ljava/io/File;)V

    .line 1099
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionBackground()Ljava/io/File;

    move-result-object p1

    :cond_d
    return-object p1
.end method

.method public final isNeedToNotifySnapshotStatus(I)Z
    .locals 12

    .line 1398
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x6

    .line 1404
    invoke-virtual {v0, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v3

    const/16 v4, 0x12

    .line 1405
    invoke-virtual {v0, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v5

    .line 1406
    sget-boolean v6, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    const/16 v7, 0x11

    if-eqz v6, :cond_1

    invoke-virtual {v0, v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v1

    .line 1407
    :goto_0
    sget-boolean v8, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    const/16 v9, 0x21

    if-eqz v8, :cond_2

    invoke-virtual {v0, v9}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v8

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v6, :cond_3

    .line 1412
    invoke-virtual {v0, v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1414
    invoke-virtual {v7}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v7

    .line 1415
    invoke-virtual {v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v7

    if-ne v7, v10, :cond_3

    move v7, v11

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    if-eqz v8, :cond_4

    .line 1422
    invoke-virtual {v0, v9}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1424
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v0

    .line 1425
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    if-ne v0, v10, :cond_4

    move v0, v11

    goto :goto_3

    :cond_4
    move v0, v1

    .line 1431
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNeedToNotifySnapshotStatus: key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", hasMainLock = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasSubLock = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasCoverHome = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasVirtualHome = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasCoverMultipack = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasVirtualMultipack = "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "SemWallpaperManagerService"

    invoke-static {v6, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_8

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    .line 1445
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v0, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(II)I

    move-result p1

    if-ne p1, v11, :cond_6

    return v11

    :cond_6
    if-eqz v5, :cond_7

    .line 1451
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p1, p0, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshotCount(II)I

    move-result p0

    if-ne p0, v11, :cond_7

    return v11

    :cond_7
    return v1

    :cond_8
    :goto_4
    return v11
.end method

.method public isSnapshotTestMode()Z
    .locals 0

    .line 1874
    sget-boolean p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1877
    :cond_0
    sget-boolean p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    return p0
.end method

.method public isSupportingMode(I)Z
    .locals 1

    .line 718
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p0

    const/16 p1, 0x8

    const/4 v0, 0x0

    if-eq p0, p1, :cond_2

    const/16 p1, 0x10

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 727
    :cond_0
    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez p0, :cond_1

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public isValidSnapshot(I)Z
    .locals 2

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidSnapshot: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1864
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 1865
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isValidSnapshot: No snapshot for key ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public loadSettingsLockedForSnapshot(I)V
    .locals 1

    .line 1727
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1728
    :try_start_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->loadSettingsLockedForSnapshot(I)V

    .line 1729
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public makeSnapshot(II)I
    .locals 11

    .line 1208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1209
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWhiches(I)Ljava/util/ArrayList;

    move-result-object p1

    if-gtz p2, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1213
    :try_start_0
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p2, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->makeSnapshotKey(I)I

    move-result p2

    .line 1214
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1218
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1220
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v1

    .line 1222
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    const-string v2, "SemWallpaperManagerService"

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeSnapshot: Number of \'which\' in key + ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] is not the same as previous on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SemWallpaperManagerService"

    .line 1230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeSnapshot: \'which\' values are not matched with previous snapshot. prevWhiches = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", whiches = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1234
    :cond_3
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getLastSnapshot(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v1

    .line 1235
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v1

    if-eq p2, v1, :cond_4

    .line 1236
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->doRestoreOrMigrate(II)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 1237
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByKey(II)Ljava/util/Map;

    .line 1241
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v8, -0x1

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1242
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-interface {v2, v3, v9}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestWallpaperData(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    .line 1243
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->clone()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 1247
    invoke-virtual {v7}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1249
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCreationTime(Ljava/lang/String;)V

    :cond_5
    const-string v2, "SemWallpaperManagerService"

    .line 1258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeSnapshot: which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", wallpaperData ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v10, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1261
    :try_start_1
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    move v5, v9

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addSnapshot(Landroid/content/Context;IIILcom/android/server/wallpaper/WallpaperData;)I

    move-result v2

    .line 1262
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v2, :cond_a

    .line 1266
    invoke-virtual {p0, v9, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->shouldCheckCorrespondingWhichForLiveWallpaper(ILjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1267
    invoke-static {v9}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result v2

    if-gtz v2, :cond_6

    .line 1269
    monitor-exit v10

    goto/16 :goto_2

    .line 1272
    :cond_6
    invoke-virtual {p0, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getSnapshotCount(I)I

    move-result v3

    if-gtz v3, :cond_7

    .line 1273
    monitor-exit v10

    goto/16 :goto_2

    .line 1276
    :cond_7
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getNearestSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v3

    if-nez v3, :cond_8

    .line 1278
    monitor-exit v10

    goto/16 :goto_2

    .line 1281
    :cond_8
    invoke-virtual {v3, v9}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1282
    monitor-exit v10

    goto/16 :goto_2

    .line 1285
    :cond_9
    invoke-virtual {v3, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getLockscreenVisibility(I)I

    move-result v4

    if-nez v4, :cond_a

    .line 1286
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getLastSnapshot(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v4

    .line 1287
    invoke-virtual {v3, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    move-result v5

    if-ne v5, v8, :cond_a

    .line 1288
    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v5

    invoke-virtual {v4, v9, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    .line 1289
    invoke-virtual {v3, v2, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    .line 1294
    :cond_a
    monitor-exit v10

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_b
    const-string v2, "SemWallpaperManagerService"

    const-string/jumbo v3, "makeSnapshot: wallpaperCopied is null."

    .line 1253
    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1297
    :cond_c
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, p2, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 1300
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_d
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1302
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "SemWallpaperManagerService"

    .line 1304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeSnapshot: Result <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v1, :cond_e

    const/4 v4, -0x3

    if-ne v1, v4, :cond_d

    .line 1306
    :cond_e
    invoke-virtual {p0, v3, v2, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1313
    :cond_f
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    if-lez v0, :cond_10

    return p2

    :cond_10
    return v8
.end method

.method public final migrateSettingsForLiveWallpaper(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V
    .locals 3

    .line 1565
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getLockscreenVisibility(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1569
    :cond_0
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-void

    .line 1574
    :cond_1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    .line 1575
    invoke-static {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result p1

    if-eqz p0, :cond_3

    .line 1576
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1580
    invoke-virtual {p0, p1, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setLockscreenVisibility(II)V

    .line 1581
    invoke-virtual {p3, p2, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setLockscreenVisibility(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final notifySnapshotStatus(III)V
    .locals 2

    .line 1815
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 1816
    invoke-interface {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestKeyguardListeners()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    return-void

    .line 1821
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySnapshotStatus: which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1823
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1825
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManagerCallback;

    if-eqz v0, :cond_2

    .line 1827
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onSemBackupStatusChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1831
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public final postProcess(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V
    .locals 5

    const/16 v0, 0x3e9

    if-ne p4, v0, :cond_3

    .line 1510
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 1512
    invoke-virtual {p4}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 1514
    invoke-virtual {p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v1

    .line 1518
    :try_start_0
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {v2, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestWallpaperData(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    .line 1520
    invoke-static {p1, p2, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object v3

    .line 1521
    invoke-virtual {p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1523
    invoke-virtual {v4, v3}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v3

    invoke-virtual {p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getPrimarySemColors()Landroid/app/SemWallpaperColors;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setPrimarySemColors(Landroid/app/SemWallpaperColors;)V

    .line 1528
    :cond_0
    invoke-virtual {p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLandscapeColors()[Landroid/app/SemWallpaperColors;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 1529
    array-length v3, p4

    if-lez v3, :cond_1

    const/4 v3, 0x1

    .line 1530
    invoke-static {p1, p2, v3}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object v3

    .line 1531
    aget-object v0, p4, v0

    invoke-virtual {v0, v3}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLandscapeColors([Landroid/app/SemWallpaperColors;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 1537
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    move v0, v1

    .line 1542
    :cond_2
    iget-object p4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p4, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveSettingsLocked(II)V

    .line 1544
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->migrateSettingsForLiveWallpaper(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V

    .line 1546
    iget-object p4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getSettingsData(I)Ljava/util/Map;

    move-result-object p3

    invoke-static {p4, p1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->updateSettings(Landroid/content/Context;ILjava/util/Map;)V

    .line 1548
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x3

    if-eq v0, p3, :cond_4

    .line 1553
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p3, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestNotifyLockWallpaperChanged(II)V

    .line 1554
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestNotifySemWallpaperColors(I)V

    goto :goto_1

    .line 1559
    :cond_3
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->writeDefaultSettings(Landroid/content/Context;II)V

    .line 1560
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestClearWallpaper(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final recoverComponentName(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1742
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 1747
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getExternalParams()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string v0, "contentType"

    .line 1752
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1753
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1757
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recoverComponentName: contentType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "layered"

    .line 1758
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "com.samsung.android.wallpaper.live/com.samsung.android.wallpaper.live.layered.LayeredWallpaperService"

    .line 1760
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 1759
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperComponent(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "weather"

    .line 1761
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "com.samsung.android.wallpaper.live/com.samsung.android.wallpaper.live.weather.effects.WeatherWallpaperService"

    .line 1763
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 1762
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperComponent(Landroid/content/ComponentName;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final registerUserActivityReceiver()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;

    invoke-direct {v0, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    .line 348
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 349
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    invoke-virtual {v0, v1, p0}, Landroid/app/ActivityManager;->addHomeVisibilityListener(Ljava/util/concurrent/Executor;Landroid/app/HomeVisibilityListener;)V

    :cond_0
    return-void
.end method

.method public removeOriginalSavedFile(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "com.android.systemui"

    .line 695
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.samsung.android.app.dressroom"

    .line 696
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.intent.action.REQUEST_DELETE_WALLPAPER"

    .line 701
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "WHICH"

    .line 703
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeSnapshotByKey(I)V
    .locals 5

    .line 1171
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1172
    :try_start_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByKey(II)Ljava/util/Map;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x4

    .line 1173
    invoke-virtual {p0, v2, v3, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    .line 1174
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 1175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 1175
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeSnapshotBySource(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SemWallpaperManagerService"

    .line 1183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSnapshotBySource: source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1189
    :try_start_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getAllSnapshots(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1191
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    if-nez v2, :cond_2

    goto :goto_0

    .line 1196
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getSource()Ljava/lang/String;

    move-result-object v3

    .line 1197
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1198
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->removeSnapshotByKey(I)V

    goto :goto_0

    .line 1201
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeSnapshotByWhich(I)V
    .locals 6

    .line 1151
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWhiches(I)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "SemWallpaperManagerService"

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSnapshotByWhich: whiches = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1155
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1156
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1157
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v5, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByWhich(II)V

    const/4 v4, 0x4

    .line 1158
    invoke-virtual {p0, v2, v4, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    .line 1159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1161
    :cond_0
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    const/4 v4, 0x3

    invoke-virtual {p1, v2, v4, v3, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 1162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 1162
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public restoreSnapshot(ILjava/lang/String;)Z
    .locals 6

    const-string v0, "SemWallpaperManagerService"

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreSnapshot: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1329
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->canRestore(I)Z

    move-result p2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-nez p2, :cond_0

    .line 1330
    invoke-virtual {p0, v3, v4, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    return v2

    .line 1334
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isNeedToNotifySnapshotStatus(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    .line 1335
    invoke-virtual {p0, v3, p2, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->notifySnapshotStatus(III)V

    .line 1339
    :cond_1
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1340
    :try_start_0
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getLastSnapshot(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v3

    .line 1341
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_3

    .line 1344
    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 1345
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v3, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->doRestore(II)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p2, v3, v4, p1, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    goto :goto_0

    :cond_2
    const-string p2, "SemWallpaperManagerService"

    .line 1347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreSnapshot: SnapshotData for key "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not the latest one."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v3, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->doRestoreOrMigrate(II)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p2, v3, v4, p1, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    goto :goto_0

    :cond_3
    const-string p2, "SemWallpaperManagerService"

    const-string/jumbo v3, "restoreSnapshot: No snapshot."

    .line 1351
    invoke-static {p2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    const-string v5, "No snapshot"

    invoke-virtual {p2, v3, v4, p1, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/lang/String;)V

    .line 1355
    :goto_0
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1356
    :try_start_1
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p2, v4, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByKey(II)Ljava/util/Map;

    .line 1357
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1358
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    const-string p0, "SemWallpaperManagerService"

    .line 1360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "restoreSnapshot: Elapsed Time = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception p0

    .line 1357
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 1341
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final restoreSnapshotInternal(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I
    .locals 12

    .line 1585
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestWallpaperData(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    const/16 v1, 0x3eb

    const-string v2, "SemWallpaperManagerService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "restoreSnapshotInternal: wallpaper is null."

    .line 1587
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p3, :cond_16

    .line 1591
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    .line 1598
    :cond_1
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->clone()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    const-string/jumbo p0, "restoreSnapshotInternal: wallpaperToRestore is null."

    .line 1605
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1609
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v1

    .line 1610
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getSemWallpaperData()Lcom/samsung/server/wallpaper/SemWallpaperData;

    move-result-object v4

    .line 1612
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperId()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperId()I

    move-result v6

    const/16 v7, 0x3e9

    if-ne v5, v6, :cond_3

    .line 1613
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWhich()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->containsSystem(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo p0, "restoreSnapshotInternal: Same image wallpaper does not need to be restored."

    .line 1614
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1618
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v5

    .line 1619
    invoke-static {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFiles(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1622
    invoke-virtual {p0, p1, p2, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getTargetFile(IILcom/android/server/wallpaper/WallpaperData;)Ljava/io/File;

    move-result-object v0

    .line 1623
    invoke-virtual {v3, v0}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 1624
    new-instance v6, Ljava/io/File;

    .line 1625
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v8

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v8

    .line 1626
    :goto_0
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v9

    const/4 v10, 0x1

    invoke-static {p2, v9, v10}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1624
    invoke-virtual {v3, v6}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperCropFile(Ljava/io/File;)V

    .line 1628
    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v6

    .line 1629
    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 1630
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restoreSnapshotInternal: which = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", type = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", backupFile = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", targetFile = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", lastCallingPackage = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistories()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWallpaperHistories(Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;)V

    .line 1637
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "[RESTORE]"

    if-nez v1, :cond_6

    .line 1638
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 1641
    :cond_5
    invoke-virtual {v3, v8}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 1644
    :cond_6
    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 1647
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSnapshotInternal: wallpaperToRestore ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v10, :cond_14

    const/4 v1, 0x3

    const/4 v4, 0x0

    if-eq v6, v1, :cond_13

    const/4 v1, 0x4

    if-eq v6, v1, :cond_14

    const/4 v1, 0x5

    if-eq v6, v1, :cond_12

    const/4 v1, 0x7

    if-eq v6, v1, :cond_e

    const/16 v1, 0x8

    const/4 v8, -0x2

    if-eq v6, v1, :cond_b

    if-eqz v5, :cond_8

    .line 1703
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1704
    invoke-virtual {v3, v10}, Lcom/android/server/wallpaper/WallpaperData;->setImageWallpaperPending(Z)V

    .line 1705
    invoke-virtual {v3, p2}, Lcom/android/server/wallpaper/WallpaperData;->setWhichPending(I)V

    .line 1706
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 1707
    invoke-static {v5, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v7, v8

    :goto_2
    return v7

    .line 1710
    :cond_8
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1711
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_9

    .line 1712
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getLockscreenVisibility(I)I

    move-result p0

    if-nez p0, :cond_a

    :cond_9
    const-string/jumbo p0, "restoreSnapshotInternal: Live wallpaper."

    .line 1713
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_a
    const-string/jumbo p0, "restoreSnapshotInternal: backupFile is not exist. Reset to default wallpaper."

    .line 1718
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3ea

    return p0

    .line 1694
    :cond_b
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p3, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 1695
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1696
    invoke-virtual {v3, v10}, Lcom/android/server/wallpaper/WallpaperData;->setImageWallpaperPending(Z)V

    .line 1697
    invoke-virtual {v3, p2}, Lcom/android/server/wallpaper/WallpaperData;->setWhichPending(I)V

    .line 1698
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestBindWallpaper(IILandroid/content/ComponentName;)V

    .line 1700
    :cond_c
    invoke-static {v5, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_3

    :cond_d
    move v7, v8

    :goto_3
    return v7

    .line 1651
    :cond_e
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-eqz v0, :cond_10

    .line 1652
    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperAssetsDir(III)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "restoreSnapshotInternal: Asset files exist."

    .line 1653
    invoke-static {v2, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-virtual {p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getKey()I

    move-result p3

    invoke-static {p1, p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperAssetsDir(III)Ljava/io/File;

    move-result-object p3

    .line 1656
    invoke-static {p2, p1}, Lcom/samsung/server/wallpaper/AssetFileManager;->getBaseAssetDir(II)Ljava/io/File;

    move-result-object v0

    .line 1654
    invoke-static {p3, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->renameDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 1660
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_10

    const-string/jumbo p3, "restoreSnapshotInternal: ComponentName is null."

    .line 1661
    invoke-static {v2, p3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-virtual {p0, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->recoverComponentName(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1665
    :cond_10
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getWhich()I

    move-result p3

    if-nez p3, :cond_11

    move p3, p2

    goto :goto_4

    :cond_11
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getWhich()I

    move-result p3

    .line 1666
    :goto_4
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {v0, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 1667
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestBindWallpaper(IILandroid/content/ComponentName;)V

    goto :goto_5

    .line 1686
    :cond_12
    invoke-virtual {v3, v10}, Lcom/android/server/wallpaper/WallpaperData;->setImageWallpaperPending(Z)V

    .line 1687
    invoke-virtual {v3, p2}, Lcom/android/server/wallpaper/WallpaperData;->setWhichPending(I)V

    .line 1689
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p3, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 1690
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestBindWallpaper(IILandroid/content/ComponentName;)V

    goto :goto_5

    .line 1676
    :cond_13
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p3, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 1678
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 1679
    invoke-virtual {v3, v10}, Lcom/android/server/wallpaper/WallpaperData;->setImageWallpaperPending(Z)V

    .line 1680
    invoke-virtual {v3, p2}, Lcom/android/server/wallpaper/WallpaperData;->setWhichPending(I)V

    .line 1681
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestBindWallpaper(IILandroid/content/ComponentName;)V

    goto :goto_5

    .line 1672
    :cond_14
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    invoke-interface {p0, p1, p2, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    :cond_15
    :goto_5
    return v7

    :catch_0
    move-exception p0

    .line 1600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "restoreSnapshotInternal: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :goto_6
    const-string/jumbo p0, "restoreSnapshotInternal: snapshot or WallpaperData in snapshot is null."

    .line 1592
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public saveSettingsLockedForSnapshot(I)V
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1734
    :try_start_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->saveSettingsLockedForSnapshot(I)V

    .line 1735
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCurrentUserId(I)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    return-void
.end method

.method public setDensityDpi(I)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    return-void
.end method

.method public setOldUserId(I)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    return-void
.end method

.method public setSnapshotSource(ILjava/lang/String;)Z
    .locals 3

    const-string v0, "SemWallpaperManagerService"

    .line 1845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSnapshotSource: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1848
    :try_start_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "SemWallpaperManagerService"

    .line 1850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSnapshotSource: No snapshot for key = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 1854
    :cond_0
    invoke-virtual {v1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setSource(Ljava/lang/String;)V

    .line 1855
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->saveSettingsLockedForSnapshot(I)V

    .line 1856
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 1857
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSnapshotTestMode(Z)V
    .locals 0

    .line 1882
    sget-boolean p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    if-eqz p0, :cond_0

    return-void

    .line 1886
    :cond_0
    sput-boolean p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    return-void
.end method

.method public final shouldCheckCorrespondingWhichForLiveWallpaper(ILjava/util/ArrayList;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 1366
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1370
    :cond_0
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result p1

    if-gtz p1, :cond_1

    return p0

    .line 1375
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldCheckCorrespondingWhichForLiveWallpaper: Check existance of correspondingWhich ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWallpaperManagerService"

    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method
