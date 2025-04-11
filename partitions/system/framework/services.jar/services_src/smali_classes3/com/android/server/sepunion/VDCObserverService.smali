.class public Lcom/android/server/sepunion/VDCObserverService;
.super Lcom/samsung/android/sepunion/IVDCObserverService$Stub;
.source "VDCObserverService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final VDC_OBSERVER_URI:Landroid/net/Uri;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mForegroundServiceObserver:Landroid/app/IForegroundServiceObserver;

.field public mHandler:Landroid/os/Handler;

.field public mObserverRegisterState:I

.field public mRegisteredComponentList:Ljava/util/List;

.field public final mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;


# direct methods
.method public static synthetic $r8$lambda$-SmdpnDklq0XeQYHcdovO2rD7w8(Lcom/android/server/sepunion/VDCObserverService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/sepunion/VDCObserverService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/VDCObserverService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/sepunion/VDCObserverService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;IILandroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/VDCObserverService;->handleUsageStatsChanged(IILandroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monFgServiceStateChanged(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/VDCObserverService;->onFgServiceStateChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/VDCObserverService;->onUsageStatsChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->registerUsageStatsWatcher()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->unregisterUsageStatsWatcher()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.vdc.observer"

    .line 45
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IVDCObserverService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 148
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$1;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mForegroundServiceObserver:Landroid/app/IForegroundServiceObserver;

    .line 220
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$3;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    .line 71
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    .line 72
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "VDCObserverService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/VDCObserverService$MyHandler;-><init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onBootPhase$0()V
    .locals 2

    const-string v0, "VDCObserverService"

    const-string v1, "init"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->registerUserUnlockedObserver()V

    .line 98
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->registerForegroundServiceObserver()V

    .line 99
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->registerVideoCallObserver()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "\n##### VDCObserverService #####\n##### (dumpsys sepunion VDCObserverService) #####\n"

    .line 131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Observer register state: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "componentList: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mRegisteredComponentList:Ljava/util/List;

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getComponentList()Ljava/util/List;
    .locals 10

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "VDCObserverService"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "get ContentResolver null"

    .line 331
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 334
    :cond_0
    :try_start_0
    sget-object v3, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    const-string/jumbo v4, "video_call_app_info"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    .line 336
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentResolver query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "package_name"

    .line 338
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "activities_name"

    .line 339
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v3, :cond_4

    if-gez v4, :cond_1

    goto :goto_2

    .line 344
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 345
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 347
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    .line 351
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    .line 352
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 353
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    if-eqz v8, :cond_3

    .line 354
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 355
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 360
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    .line 334
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    :cond_5
    if-eqz p0, :cond_6

    .line 360
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string v2, "getComponentList() failed: "

    .line 361
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    return-object v0
.end method

.method public final handleUsageStatsChanged(IILandroid/content/ComponentName;)V
    .locals 3

    .line 269
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    .line 270
    iput v1, v0, Landroid/os/Message;->what:I

    .line 272
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "event_type"

    .line 273
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "user_id"

    .line 274
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "pkg_name"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "class_name"

    .line 276
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 279
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 95
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "VDCObserverService"

    const-string/jumbo p1, "onCreate"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onFgServiceStateChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 310
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    const-string/jumbo v1, "onForegroundServiceStateChanged"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VDCObserverService"

    const-string/jumbo v0, "onFgServiceStateChanged call failed: "

    .line 313
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onUsageStatsChanged(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "onUsageStatsChanged"

    const-string v1, "VDCObserverService"

    .line 319
    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onUsageStatsChanged call failed: "

    .line 323
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final registerForegroundServiceObserver()V
    .locals 3

    const-string v0, "VDCObserverService"

    :try_start_0
    const-string/jumbo v1, "registerForegroundServiceObserver"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/android/server/sepunion/VDCObserverService;->mForegroundServiceObserver:Landroid/app/IForegroundServiceObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    .line 142
    iget v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "registerForegroundServiceObserver: failed "

    .line 144
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final registerUsageStatsWatcher()V
    .locals 4

    .line 190
    invoke-virtual {p0}, Lcom/android/server/sepunion/VDCObserverService;->getComponentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "VDCObserverService"

    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerUsageStatsWatcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usagestats"

    .line 198
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    if-eqz v2, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    invoke-virtual {v2, v1, v0}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;Ljava/util/List;)V

    .line 201
    iget v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    .line 202
    iput-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mRegisteredComponentList:Ljava/util/List;

    goto :goto_0

    :cond_1
    const-string p0, "get UsageStatsManager null"

    .line 204
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string/jumbo p0, "registerUsageStatsWatcher: fail"

    .line 192
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerUserUnlockedObserver()V
    .locals 4

    const-string v0, "VDCObserverService"

    const-string/jumbo v1, "registerUserUnlockedObserver"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/sepunion/VDCObserverService$2;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/VDCObserverService$2;-><init>(Lcom/android/server/sepunion/VDCObserverService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    iget v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    return-void
.end method

.method public final registerVideoCallObserver()V
    .locals 4

    .line 247
    new-instance v0, Lcom/android/server/sepunion/VDCObserverService$4;

    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/VDCObserverService$4;-><init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Handler;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    sget-object v2, Lcom/android/server/sepunion/VDCObserverService;->VDC_OBSERVER_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 262
    iget v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    goto :goto_0

    :cond_0
    const-string p0, "VDCObserverService"

    const-string v0, "get ContentResolver null"

    .line 264
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final unregisterUsageStatsWatcher()V
    .locals 3

    const-string/jumbo v0, "unregisterUsageStatsWatcher"

    const-string v1, "VDCObserverService"

    .line 209
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usagestats"

    .line 211
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/server/sepunion/VDCObserverService;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 214
    iget v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/sepunion/VDCObserverService;->mObserverRegisterState:I

    goto :goto_0

    :cond_0
    const-string p0, "get UsageStatsManager null"

    .line 216
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
