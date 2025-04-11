.class public Lcom/android/server/am/mars/filter/filter/LockScreenFilter;
.super Ljava/lang/Object;
.source "LockScreenFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public isLockTypeClockFace:Z

.field public isLockTypeClockFaceSub:Z

.field public mContext:Landroid/content/Context;

.field public mKeyguardPkg:Ljava/lang/String;

.field public mKeyguardPkgMap:Ljava/util/Map;

.field public mKeyguardPkgUid:I

.field public mLockClockFaceObserver:Landroid/database/ContentObserver;

.field public mLockClockFaceSubObserver:Landroid/database/ContentObserver;


# direct methods
.method public static bridge synthetic -$$Nest$mgetLockClockFace(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFace()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetLockClockFaceSub(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFaceSub()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkg:Ljava/lang/String;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgUid:I

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/LockScreenFilter;
    .locals 1

    .line 55
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$LockScreenFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->unregisterContentObserver()V

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .locals 2

    .line 117
    iget-boolean p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFace:Z

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFaceSub:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    const/16 v1, 0xd

    if-eqz p2, :cond_2

    const-string p2, "com.samsung.android.app.clockface"

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 121
    :cond_2
    iget p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgUid:I

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkg:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    :cond_3
    const/16 p2, 0x11

    if-ne p4, p2, :cond_4

    .line 126
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final getLockClockFace()V
    .locals 8

    const/4 v0, 0x0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    .line 153
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 154
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 152
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    move v2, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 158
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move v2, v0

    .line 159
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    const v1, 0x9c40

    if-lt v2, v1, :cond_2

    const v1, 0x13880

    if-gt v2, v1, :cond_2

    const/4 v0, 0x1

    .line 161
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFace:Z

    return-void
.end method

.method public final getLockClockFaceSub()V
    .locals 8

    const/4 v0, 0x0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_sub_clock_type"

    .line 168
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 169
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 167
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    move v2, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 173
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move v2, v0

    .line 174
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    const v1, 0x9c40

    if-lt v2, v1, :cond_2

    const v1, 0x13880

    if-gt v2, v1, :cond_2

    const/4 v0, 0x1

    .line 176
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFaceSub:Z

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->registerContentObserver()V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFace()V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFaceSub()V

    return-void
.end method

.method public final registerContentObserver()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$2;-><init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    .line 90
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_sub_clock_type"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setKeyguardInfo(Ljava/lang/String;I)V
    .locals 2

    .line 135
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkg:Ljava/lang/String;

    .line 136
    iput p2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgUid:I

    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final unregisterContentObserver()V
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Landroid/database/ContentObserver;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    sget-object p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
