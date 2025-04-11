.class public Lcom/android/server/aod/AODSCoverController;
.super Ljava/lang/Object;
.source "AODSCoverController.java"


# static fields
.field public static final LUX_QUE:Ljava/util/Queue;


# instance fields
.field public mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

.field public mContext:Landroid/content/Context;

.field public mCoverAttached:Z

.field public mCoverClosed:Z

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field public mCoverUIWorking:Z

.field public mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

.field public mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAODSettingHelper(Lcom/android/server/aod/AODSCoverController;)Lcom/android/server/aod/AODSettingHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverAttached(Lcom/android/server/aod/AODSCoverController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverClosed(Lcom/android/server/aod/AODSCoverController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCoverAttached(Lcom/android/server/aod/AODSCoverController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverClosed(Lcom/android/server/aod/AODSCoverController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverUIWorking(Lcom/android/server/aod/AODSCoverController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterSViewCoverSensorListener(Lcom/android/server/aod/AODSCoverController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/aod/AODSCoverController;->registerSViewCoverSensorListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterSViewCoverSensorListener(Lcom/android/server/aod/AODSCoverController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/aod/AODSCoverController;->unregisterSViewCoverSensorListener()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLUX_QUE()Ljava/util/Queue;
    .locals 1

    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/aod/AODSettingHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    new-instance p1, Lcom/samsung/android/cover/CoverManager;

    iget-object p2, p0, Lcom/android/server/aod/AODSCoverController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, " AODSCoverController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCoverAttached : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCoverClosed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCoverUIWorking : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isSViewCoverBrightnessHigh()Z
    .locals 8

    sget-object p0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    int-to-float v2, v5

    div-float/2addr v3, v2

    sget-object v2, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x40400000    # 3.0f

    :goto_1
    const-string v5, "AODManagerService.SCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSViewCoverBrightnessHighInternal: (SVIEW_COVER) luxes ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], average ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "], lux ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "], NIT state ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public refresh()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/aod/AODSCoverController;->registerSViewCoverSensorListener()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/aod/AODSCoverController;->unregisterSViewCoverSensorListener()V

    :cond_1
    :goto_0
    return-void
.end method

.method public register()V
    .locals 3

    new-instance v0, Lcom/android/server/aod/AODSCoverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/aod/AODSCoverController$1;-><init>(Lcom/android/server/aod/AODSCoverController;)V

    iput-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverClosed:Z

    iget-boolean v2, p0, Lcom/android/server/aod/AODSCoverController;->mCoverAttached:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/aod/AODSCoverController;->mCoverUIWorking:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object p0, p0, Lcom/android/server/aod/AODSCoverController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_1

    :cond_2
    const-string p0, "AODManagerService.SCover"

    const-string v0, "initCoverManager is not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final registerSViewCoverSensorListener()V
    .locals 4

    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    new-instance v1, Lcom/android/server/aod/AODSCoverController$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODSCoverController$2;-><init>(Lcom/android/server/aod/AODSCoverController;)V

    iput-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterSViewCoverSensorListener()V
    .locals 3

    sget-object v0, Lcom/android/server/aod/AODSCoverController;->LUX_QUE:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/aod/AODSCoverController;->mSViewSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

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
