.class final enum Lcom/android/server/credentials/RequestSession$RequestSessionStatus;
.super Ljava/lang/Enum;
.source "RequestSession.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

.field public static final enum CANCELLED:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

.field public static final enum COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

.field public static final enum IN_PROGRESS:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;


# direct methods
.method public static synthetic $values()[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;
    .locals 3

    .line 104
    sget-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->IN_PROGRESS:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->CANCELLED:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    sget-object v2, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 106
    new-instance v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->IN_PROGRESS:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 108
    new-instance v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v1, "CANCELLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->CANCELLED:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 110
    new-instance v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    const-string v1, "COMPLETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 104
    invoke-static {}, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->$values()[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->$VALUES:[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/RequestSession$RequestSessionStatus;
    .locals 1

    .line 104
    const-class v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;
    .locals 1

    .line 104
    sget-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->$VALUES:[Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    invoke-virtual {v0}, [Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    return-object v0
.end method
