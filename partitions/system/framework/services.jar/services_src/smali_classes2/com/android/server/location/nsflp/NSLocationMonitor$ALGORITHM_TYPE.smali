.class final enum Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
.super Ljava/lang/Enum;
.source "NSLocationMonitor.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public static final enum NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public static final enum NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public static final enum OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;


# direct methods
.method public static synthetic $values()[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
    .locals 3

    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    sget-object v2, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const-string v1, "NOT_SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const-string v1, "OLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const-string v1, "NEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->$values()[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->$VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->$VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-object v0
.end method
