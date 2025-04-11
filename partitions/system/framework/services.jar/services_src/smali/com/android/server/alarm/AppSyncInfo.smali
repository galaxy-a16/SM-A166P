.class public Lcom/android/server/alarm/AppSyncInfo;
.super Lcom/android/server/alarm/AppSyncWrapper;
.source "AppSyncInfo.java"


# static fields
.field public static EXP_MIN_INEXACT_WINDOW:J = 0x493e0L

.field public static SUSPICIOUS_TIME_THRESHOLD:J = 0x2710L


# instance fields
.field public boot_filter:Landroid/content/IntentFilter;

.field public mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

.field public final mAccountsPackages:Ljava/util/ArrayList;

.field public final mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

.field public final mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackagesFromConfig:Ljava/util/ArrayList;

.field public final mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

.field public final mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

.field public mBootIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mCharging:Z

.field public mContext:Landroid/content/Context;

.field public final mCscPackages:Ljava/util/ArrayList;

.field public mFilter:Landroid/content/IntentFilter;

.field public final mLockAllowlistFromSCPM:Ljava/lang/Object;

.field public final mLockBlocklistFromSCPM:Ljava/lang/Object;

.field public final mLockExt:Ljava/lang/Object;

.field public final mLockSuspiciousTagSet:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

.field public final mPermanentAllowlistPackages:Ljava/util/ArrayList;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mReceiver:Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;

.field public mSCPMReceiver:Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;

.field public mScreenOn:Z

.field public mSuspiciousTagSet:Ljava/util/Set;

.field public mSuspiciousTagSetFromApi:Ljava/util/Set;

.field public mSuspiciousTagSetFromSCPM:Ljava/util/Set;

.field public final mTargetPackages:Ljava/util/ArrayList;

.field public preloadedPackages:Ljava/util/Set;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAccountListener(Lcom/android/server/alarm/AppSyncInfo;)Lcom/android/server/alarm/AppSyncInfo$AccountListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccountsPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/alarm/AppSyncInfo;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCscPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCharging(Lcom/android/server/alarm/AppSyncInfo;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/alarm/AppSyncInfo;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageTag(Lcom/android/server/alarm/AppSyncInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitFilter(Lcom/android/server/alarm/AppSyncInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo;->initFilter()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousPolicy(Landroid/content/Context;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 211
    invoke-direct {p0}, Lcom/android/server/alarm/AppSyncWrapper;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mReceiver:Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;

    .line 147
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockExt:Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    .line 160
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 162
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    .line 163
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    .line 165
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    .line 166
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    .line 168
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    .line 184
    new-instance v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-direct {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 185
    new-instance v4, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-direct {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    iput-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig:Ljava/util/ArrayList;

    .line 187
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    .line 192
    new-instance v6, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-direct {v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 194
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    .line 195
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 196
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    .line 197
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 202
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    .line 310
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    iput-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    .line 311
    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$1;

    invoke-direct {v8, p0}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;)V

    iput-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    .line 214
    iput-boolean v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    const/4 v8, 0x0

    .line 215
    iput-boolean v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    .line 216
    new-instance v9, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;-><init>(Lcom/android/server/alarm/AppSyncInfo;)V

    iput-object v9, p0, Lcom/android/server/alarm/AppSyncInfo;->mReceiver:Lcom/android/server/alarm/AppSyncInfo$IntentReceiver;

    .line 217
    iget-object v10, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v10, v9, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    new-instance v9, Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    invoke-direct {v9, p0, v0}, Lcom/android/server/alarm/AppSyncInfo$AccountListener;-><init>(Lcom/android/server/alarm/AppSyncInfo;Lcom/android/server/alarm/AppSyncInfo$AccountListener-IA;)V

    iput-object v9, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    .line 221
    new-instance v0, Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;-><init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSCPMReceiver:Lcom/android/server/alarm/AppSyncInfo$SCPMBroadcastReceiver;

    .line 223
    monitor-enter v1

    .line 224
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 225
    invoke-virtual {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->clear()V

    .line 226
    invoke-virtual {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->clear()V

    .line 227
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string p1, "com.sec.spp.push"

    .line 232
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.sec.chaton"

    .line 233
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.facebook.katana"

    .line 234
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.twitter.android"

    .line 235
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.facebook.orca"

    .line 236
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.kakao.talk"

    .line 237
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.google.android.apps.plus"

    .line 238
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.mobilesrepublic.appygeek"

    .line 239
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "mnn.Android"

    .line 240
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.google.android.apps.maps"

    .line 241
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSyncBlockList()V

    .line 248
    invoke-virtual {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSync3PlusBlockList()V

    .line 250
    invoke-virtual {v6}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadChnAllowlist()V

    .line 252
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v2, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v2, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v2, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v2, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :cond_3
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    const-string v0, "com.samsung.location"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 275
    :cond_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 278
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v8, p1, :cond_6

    const-string p1, "AppSyncInfo"

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<TargetPackages> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 282
    :cond_6
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.services"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.katana"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.orca"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.pages.app"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.appmanager"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.facebook.system"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.whatsapp"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.instagram.android"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.skype.raider"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string v0, "com.microsoft.skydrive"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string p1, "com.samsung.android.opencalendar"

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static createAppSync(Landroid/content/Context;)Lcom/android/server/alarm/AppSyncWrapper;
    .locals 2

    const-string/jumbo v0, "ro.csc.country_code"

    .line 205
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AppSyncInfo;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 208
    :cond_0
    new-instance p0, Lcom/android/server/alarm/DummyAppSync;

    invoke-direct {p0}, Lcom/android/server/alarm/DummyAppSync;-><init>()V

    return-object p0
.end method

.method public static isActivePackage(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 407
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 408
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 410
    invoke-virtual {v1, p1, p0, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0xa

    if-gt p0, p1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public final addCollection(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 867
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 868
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final containsPackageAsUser(Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 824
    :cond_0
    sget-object v1, Lcom/android/server/alarm/AppSyncInfo$2;->$SwitchMap$com$android$server$alarm$AppSyncWrapper$SET_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    return v0

    .line 826
    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/alarm/AppSyncInfo;->containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final containsTagWithLock(Ljava/lang/Object;Ljava/util/Collection;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    const/4 v1, -0x1

    .line 838
    invoke-virtual {p0, p3, v1}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 839
    monitor-enter p1

    .line 840
    :try_start_0
    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    monitor-exit p1

    return v0

    :catchall_0
    move-exception p0

    .line 841
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 450
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "<AppSyncInfo>"

    .line 451
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCharging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUSP_THRE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INEXACT_WIN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  <AppSync3 Allowlist>"

    .line 457
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "   (AppSync) "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "   (AppSync) ---------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  <AppSync3 TargetList>"

    .line 463
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 465
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  <AppSync3 Blocklist>"

    .line 470
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v4}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  <AppSync3p Blocklist>"

    .line 474
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getPackageTag(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 815
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWindowLength()J
    .locals 2

    .line 435
    sget-wide v0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    return-wide v0
.end method

.method public final initFilter()V
    .locals 2

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public isAdjustableAlarm(IJJJILjava/lang/String;)Z
    .locals 12

    move-wide/from16 v0, p6

    .line 439
    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static/range {p8 .. p8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, p0

    move/from16 v3, p8

    move-object/from16 v11, p9

    invoke-virtual {p0, v3, v11}, Lcom/android/server/alarm/AppSyncInfo;->isTargetApplication(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p0

    move v7, p1

    move-wide v8, p2

    move/from16 v10, p8

    move-object/from16 v11, p9

    .line 440
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/alarm/AppSyncInfo;->isSuspiciousAlarm(IJILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    cmp-long v2, p4, v4

    if-ltz v2, :cond_0

    .line 441
    sget-wide v6, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    cmp-long v3, p4, v6

    if-ltz v3, :cond_1

    :cond_0
    if-gez v2, :cond_2

    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    long-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final isIgnorePackage(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 306
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v1, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isSuspiciousAlarm(IJILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_0
    sub-long/2addr p2, v1

    .line 341
    sget-wide v1, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    cmp-long p1, p2, v1

    if-ltz p1, :cond_1

    return v0

    .line 344
    :cond_1
    sget-object p1, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p1, p5, p2}, Lcom/android/server/alarm/AppSyncInfo;->containsPackageAsUser(Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isSystemApplication(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTargetApplication(ILjava/lang/String;)Z
    .locals 3

    .line 359
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 363
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 373
    :cond_1
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v0}, Lcom/android/server/alarm/AppSyncInfo;->isSystemApplication(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    .line 374
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 375
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 379
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AppSyncInfo;->isIgnorePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 383
    :cond_3
    invoke-static {p1, p2}, Lcom/android/server/alarm/AppSyncInfo;->isActivePackage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 387
    :cond_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 388
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    .line 389
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v0

    .line 393
    :cond_6
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    .line 394
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v0
.end method

.method public final updateSuspiciousPolicy(Landroid/content/Context;)V
    .locals 13

    .line 949
    new-instance v0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;-><init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    .line 950
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->isSCPMAvailable()Z

    move-result p1

    const-wide/32 v1, 0x493e0

    const-wide/16 v3, 0x2710

    if-nez p1, :cond_0

    .line 953
    sput-wide v3, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    .line 954
    sput-wide v1, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 955
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter p1

    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 957
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    return-void

    :catchall_0
    move-exception p0

    .line 957
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 962
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getSuspiciousTimeLimitFromSCPM()J

    move-result-wide v5

    .line 963
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getInexactWindowFromSCPM()J

    move-result-wide v7

    .line 964
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getSuspiciousTagFromSCPM()Ljava/util/ArrayList;

    move-result-object p1

    .line 965
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getAllowlistPkgFromSCPM()Ljava/util/ArrayList;

    move-result-object v9

    .line 966
    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->getBlocklistPkgFromSCPM()Ljava/util/ArrayList;

    move-result-object v0

    const-wide/16 v10, 0x0

    cmp-long v12, v5, v10

    if-gez v12, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v5

    .line 968
    :goto_0
    sput-wide v3, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    cmp-long v3, v7, v10

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v5

    .line 969
    :goto_1
    sput-wide v1, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    .line 973
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    .line 974
    :try_start_2
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 975
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 976
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 977
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    monitor-enter p1

    .line 978
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 979
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {p0, v9, v1}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 980
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 981
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    .line 982
    :try_start_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 983
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 984
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 985
    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    return-void

    :catchall_1
    move-exception p0

    .line 984
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 980
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 976
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public final updateSuspiciousTags()V
    .locals 3

    .line 927
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 928
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    .line 929
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 930
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 931
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    monitor-enter v2

    .line 932
    :try_start_1
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 933
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 935
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    :try_start_2
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    .line 937
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 933
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 930
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
