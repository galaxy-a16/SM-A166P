.class final enum Lcom/android/server/broadcastradio/hal2/FrequencyBand;
.super Ljava/lang/Enum;
.source "Utils.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum AM_SW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;


# direct methods
.method public static synthetic $values()[Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .locals 5

    .line 22
    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    sget-object v1, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    sget-object v2, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    sget-object v4, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 24
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "FM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 25
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "AM_LW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 26
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "AM_MW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 27
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "AM_SW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 22
    invoke-static {}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->$values()[Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    move-result-object v0

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->$VALUES:[Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .locals 1

    .line 22
    const-class v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object p0
.end method

.method public static values()[Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->$VALUES:[Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    invoke-virtual {v0}, [Lcom/android/server/broadcastradio/hal2/FrequencyBand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0
.end method
