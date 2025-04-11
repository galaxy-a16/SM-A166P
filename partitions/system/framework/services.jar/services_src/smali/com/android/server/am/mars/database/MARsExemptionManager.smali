.class public Lcom/android/server/am/mars/database/MARsExemptionManager;
.super Ljava/lang/Object;
.source "MARsExemptionManager.java"


# static fields
.field public static final MARsExemptionManagerLock:Lcom/android/server/am/mars/database/MARsExemptionManager$Lock;


# instance fields
.field public mExemptionList:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/database/MARsExemptionManager$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/MARsExemptionManager$Lock;-><init>(Lcom/android/server/am/mars/database/MARsExemptionManager$Lock-IA;)V

    sput-object v0, Lcom/android/server/am/mars/database/MARsExemptionManager;->MARsExemptionManagerLock:Lcom/android/server/am/mars/database/MARsExemptionManager$Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 52

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.sec.facatfunction"

    const-string v2, "com.samsung.android.aircommandmanager"

    const-string v3, "com.sec.facuifunction"

    const-string v4, "com.samsung.android.providers.factory"

    const-string v5, "com.sec.android.daemonapp"

    const-string v6, "com.samsung.android.smartsuggestions:core"

    const-string v7, "com.sec.phone"

    const-string v8, "com.sec.android.app.factorykeystring"

    const-string v9, "com.samsung.android.spay"

    const-string v10, "com.samsung.android.authfw"

    const-string v11, "com.samsung.android.samsungpass"

    const-string v12, "com.samsung.android.vtcamerasettings"

    const-string v13, "android.process.acore"

    const-string v14, "com.google.process.gservices"

    const-string v15, "com.samsung.android.bixby.agent"

    const-string v16, "com.samsung.android.bixby.wakeup"

    const-string v17, "com.samsung.android.knox.kpu"

    const-string v18, "com.samsung.android.knox.kpu.beta"

    const-string v19, "com.samsung.android.knox.kpu.demo"

    const-string v20, "com.samsung.android.knox.kpu.poc"

    const-string v21, "com.ftat"

    const-string v22, "com.sec.bcservice"

    const-string v23, "com.sec.dolbom"

    const-string v24, "com.samsung.android.scpm"

    const-string v25, "com.samsung.android.scloud"

    const-string v26, "com.samsung.android.scs"

    const-string v27, "com.samsung.android.mobileservice"

    const-string v28, "com.samsung.cmh"

    const-string v29, "android.process.media"

    const-string v30, "com.samsung.android.bluelightfilter"

    const-string v31, "com.samsung.vvm"

    const-string v32, "com.google.android.apps.scone"

    const-string v33, "com.android.systemui"

    const-string v34, "com.android.systemui:screenshot"

    const-string v35, "android:ui"

    const-string v36, "com.samsung.android.dialer"

    const-string v37, "com.samsung.android.app.contacts"

    const-string v38, "com.samsung.android.sead"

    const-string v39, "com.samsung.android.sidegesturepad"

    const-string v40, "com.samsung.android.app.dressroom:accessory"

    const-string v41, "com.samsung.android.app.dressroom"

    const-string v42, "com.samsung.android.wallpaper.magician"

    const-string v43, "com.samsung.android.wallpaper.live"

    const-string v44, "com.samsung.android.messaging"

    const-string v45, "com.samsung.android.incallui"

    const-string v46, "com.samsung.android.app.aodservice:provider"

    const-string v47, "com.skt.skaf.OA00199800"

    const-string v48, "com.samsung.android.video"

    const-string v49, "com.android.vending"

    const-string v50, "com.xfinitymobile.cometcarrierservice"

    const-string v51, "com.samsung.android.app.telephonyui"

    filled-new-array/range {v1 .. v51}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/mars/database/MARsExemptionManager;->mExemptionList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/MARsExemptionManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/mars/database/MARsExemptionManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/database/MARsExemptionManager;
    .locals 1

    invoke-static {}, Lcom/android/server/am/mars/database/MARsExemptionManager$MARsExemptionManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/database/MARsExemptionManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExemptionList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsExemptionManager;->mExemptionList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isFgExemptedFromMars(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Ljava/com/android/server/am/mars/database/MARsListManager;->getInstance()Ljava/com/android/server/am/mars/database/MARsListManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/com/android/server/am/mars/database/MARsListManager;->getFgsExemptionPackages()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is exempted from MARs"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MARsExemptionManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setExemptionList(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/mars/database/MARsExemptionManager;->MARsExemptionManagerLock:Lcom/android/server/am/mars/database/MARsExemptionManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsExemptionManager;->mExemptionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/mars/database/MARsExemptionManager;->mExemptionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
