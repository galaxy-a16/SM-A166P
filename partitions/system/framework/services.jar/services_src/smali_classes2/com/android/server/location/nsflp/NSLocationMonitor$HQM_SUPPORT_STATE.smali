.class final enum Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;
.super Ljava/lang/Enum;
.source "NSLocationMonitor.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

.field public static final enum NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

.field public static final enum SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

.field public static final enum UNKNOWN:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;


# direct methods
.method public static synthetic $values()[Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;
    .locals 3

    .line 126
    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    sget-object v2, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 126
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    const-string v1, "NOT_SUPPORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    const-string v1, "SUPPORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->$values()[Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;
    .locals 1

    .line 126
    const-class v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;
    .locals 1

    .line 126
    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    invoke-virtual {v0}, [Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    return-object v0
.end method
