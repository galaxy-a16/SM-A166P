.class public final enum Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;
.super Ljava/lang/Enum;
.source "ChimeraCommonUtil.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;
    .locals 7

    .line 29
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v5, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    filled-new-array/range {v0 .. v6}, [Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x0

    const-string v2, "LMKD"

    const-string v3, "TRIGGER_SOURCE_LMKD"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 31
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x1

    const-string v2, "BottleneckHint"

    const-string v3, "TRIGGER_SOURCE_BOTTLENECK_HINT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 32
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x2

    const-string v2, "HomeIdle"

    const-string v3, "TRIGGER_SOURCE_HOME_IDLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 33
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x3

    const-string v2, "PMMCritical"

    const-string v3, "TRIGGER_SOURCE_PMM_CRITICAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 34
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x4

    const-string v2, "DeviceIdle"

    const-string v3, "TRIGGER_SOURCE_DEVICE_IDLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 35
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x5

    const-string v2, "AppLaunchIntent"

    const-string v3, "TRIGGER_SOURCE_APP_LAUNCH_INTENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 36
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x6

    const-string v2, "Quota"

    const-string v3, "TRIGGER_SOURCE_QUOTA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 29
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->$values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;
    .locals 1

    .line 29
    const-class v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;
    .locals 1

    .line 29
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v0}, [Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    return-object v0
.end method
