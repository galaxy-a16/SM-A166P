.class public final Lcom/android/server/audio/SpatializerHelper$SADeviceState;
.super Ljava/lang/Object;
.source "SpatializerHelper.java"


# static fields
.field public static sBinauralEnabledDefault:Z = true

.field public static sHeadTrackingEnabledDefault:Z = false

.field public static sTransauralEnabledDefault:Z = true


# instance fields
.field public final mDeviceAddress:Ljava/lang/String;

.field public final mDeviceType:I

.field public mEnabled:Z

.field public mHasHeadTracker:Z

.field public mHeadTrackerEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$sfputsBinauralEnabledDefault(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->sBinauralEnabledDefault:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsHeadTrackingEnabledDefault(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->sHeadTrackingEnabledDefault:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputsTransauralEnabledDefault(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->sTransauralEnabledDefault:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1579
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    .line 1592
    iput p1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    .line 1593
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$smisWireless(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 1594
    invoke-static {}, Lcom/android/server/audio/SpatializerHelper;->-$$Nest$sfgetSPAT_MODE_FOR_DEVICE_TYPE()Landroid/util/SparseIntArray;

    move-result-object p2

    const/high16 v1, -0x80000000

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-nez p1, :cond_1

    .line 1596
    sget-boolean v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->sBinauralEnabledDefault:Z

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 1598
    sget-boolean v0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->sTransauralEnabledDefault:Z

    .line 1599
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    .line 1600
    sget-boolean p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->sHeadTrackingEnabledDefault:Z

    iput-boolean p1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    return-void
.end method

.method public static fromPersistedString(Ljava/lang/String;)Lcom/android/server/audio/SpatializerHelper$SADeviceState;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1648
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, ","

    .line 1651
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1652
    array-length v2, v1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    return-object v0

    :cond_2
    const/4 v2, 0x0

    .line 1657
    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1658
    new-instance v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-direct {v4, v3, v6}, Lcom/android/server/audio/SpatializerHelper$SADeviceState;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 1659
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iput-boolean v3, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    const/4 v3, 0x3

    .line 1660
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_4

    move v3, v5

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    iput-boolean v3, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    const/4 v3, 0x4

    .line 1661
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_5

    move v2, v5

    :cond_5
    iput-boolean v2, v4, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    .line 1664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse setting for SADeviceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AS.SpatializerHelper"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1612
    :cond_1
    const-class v2, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 1615
    :cond_2
    check-cast p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;

    .line 1616
    iget v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    iget v3, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 1617
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    iget-boolean v3, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    iget-boolean v3, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-ne v2, v3, :cond_3

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    iget-boolean p1, p1, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;
    .locals 3

    .line 1670
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    .line 1671
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1625
    iget v0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    .line 1626
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1625
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toPersistableString()Ljava/lang/String;
    .locals 5

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 1637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " HT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHasHeadTracker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " HTenabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/SpatializerHelper$SADeviceState;->mHeadTrackerEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
