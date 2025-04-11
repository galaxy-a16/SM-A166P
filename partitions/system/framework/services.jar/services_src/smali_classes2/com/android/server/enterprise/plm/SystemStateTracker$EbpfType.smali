.class final enum Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;
.super Ljava/lang/Enum;
.source "SystemStateTracker.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

.field public static final enum CPU_UID_ACTIVE_TIME:Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

.field public static final enum CPU_UID_SYSTEM_TIME:Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;


# direct methods
.method public static synthetic $values()[Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;
    .locals 2

    .line 648
    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;->CPU_UID_SYSTEM_TIME:Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    sget-object v1, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;->CPU_UID_ACTIVE_TIME:Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    filled-new-array {v0, v1}, [Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 649
    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    const-string v1, "CPU_UID_SYSTEM_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;->CPU_UID_SYSTEM_TIME:Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    .line 650
    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    const-string v1, "CPU_UID_ACTIVE_TIME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;->CPU_UID_ACTIVE_TIME:Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    .line 648
    invoke-static {}, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;->$values()[Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;->$VALUES:[Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 648
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;
    .locals 1

    .line 648
    const-class v0, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;
    .locals 1

    .line 648
    sget-object v0, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;->$VALUES:[Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    return-object v0
.end method
