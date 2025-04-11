.class public final enum Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
.super Ljava/lang/Enum;
.source "MARsFreezeStateRecord.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_ACTIVITY:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_BINDER_0:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_BINDER_1:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_BINDSERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_BROADCAST:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_CFB:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_DEVICE_IDLE_OFF:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_EXECUITNG_SERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_LAUNCHING_PROVIDER:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_OLAF:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_PROVIDER:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_RECEIVING_INTENT:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_SERVICEANR:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_SIGNAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_STARTPROCESS:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_STARTSERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_START_PROCESS:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_UIDACTIVE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_UNBINDSERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_WAKELOCK:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;


# instance fields
.field private final typeNum:I

.field private final unfreezeType:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 24

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v3, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_WAKELOCK:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v4, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_BINDER_1:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v5, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_BINDER_0:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v6, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_DEVICE_IDLE_OFF:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v7, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_START_PROCESS:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v8, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_LAUNCHING_PROVIDER:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v9, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_RECEIVING_INTENT:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v10, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_EXECUITNG_SERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v11, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_UIDACTIVE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v12, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_STARTSERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v13, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_BINDSERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ACTIVITY:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_BROADCAST:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v16, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PROVIDER:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v17, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_UNBINDSERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v18, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_STARTPROCESS:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v19, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_SERVICEANR:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v20, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_SIGNAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v21, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_CFB:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v22, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_OLAF:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    sget-object v23, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    filled-new-array/range {v0 .. v23}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgettypeNum(Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->typeNum:I

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Total"

    const-string v4, "UNFREEZE_TOTAL"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Alarm"

    const-string v4, "UNFREEZE_REASON_ALARM"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Packet"

    const-string v4, "UNFREEZE_REASON_PACKET"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Wakelock"

    const-string v4, "UNFREEZE_REASON_WAKELOCK"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_WAKELOCK:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Binder(1)"

    const-string v4, "UNFREEZE_REASON_BINDER_1"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_BINDER_1:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Binder(0)"

    const-string v4, "UNFREEZE_REASON_BINDER_0"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_BINDER_0:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DeviceIdleOFF"

    const-string v4, "UNFREEZE_REASON_DEVICE_IDLE_OFF"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_DEVICE_IDLE_OFF:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "StartProcessP"

    const-string v4, "UNFREEZE_REASON_START_PROCESS"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_START_PROCESS:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "LaunchingProvider"

    const-string v4, "UNFREEZE_REASON_LAUNCHING_PROVIDER"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_LAUNCHING_PROVIDER:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ReceivingIntent"

    const-string v4, "UNFREEZE_REASON_RECEIVING_INTENT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_RECEIVING_INTENT:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ExecutingService"

    const-string v4, "UNFREEZE_REASON_EXECUITNG_SERVICE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_EXECUITNG_SERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "UidActive"

    const-string v4, "UNFREEZE_REASON_UIDACTIVE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_UIDACTIVE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "startService"

    const-string v4, "UNFREEZE_REASON_STARTSERVICE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_STARTSERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "bindService"

    const-string v4, "UNFREEZE_REASON_BINDSERVICE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_BINDSERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "activity"

    const-string v4, "UNFREEZE_REASON_ACTIVITY"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ACTIVITY:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "broadcast"

    const-string v4, "UNFREEZE_REASON_BROADCAST"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_BROADCAST:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "provider"

    const-string v4, "UNFREEZE_REASON_PROVIDER"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PROVIDER:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "unbindService"

    const-string v4, "UNFREEZE_REASON_UNBINDSERVICE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_UNBINDSERVICE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "startProcess"

    const-string v4, "UNFREEZE_REASON_STARTPROCESS"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_STARTPROCESS:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ServiceANR"

    const-string v4, "UNFREEZE_REASON_SERVICEANR"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_SERVICEANR:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Signal"

    const-string v4, "UNFREEZE_REASON_SIGNAL"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_SIGNAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Cfb"

    const-string v4, "UNFREEZE_REASON_CFB"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_CFB:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OLAF:"

    const-string v3, "UNFREEZE_REASON_OLAF"

    const/16 v4, 0x16

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_OLAF:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "None"

    const-string v3, "UNFREEZE_REASON_NONE"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->$values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->typeNum:I

    iput-object p4, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->unfreezeType:Ljava/lang/String;

    return-void
.end method

.method public static reasonTypeOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 5

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 1

    const-class v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {v0}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->unfreezeType:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeNum()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->typeNum:I

    return p0
.end method
