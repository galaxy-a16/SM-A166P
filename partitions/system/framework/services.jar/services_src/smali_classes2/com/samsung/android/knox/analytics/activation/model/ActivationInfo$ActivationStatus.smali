.class public final enum Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
.super Ljava/lang/Enum;
.source "ActivationInfo.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public static final enum OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public static final enum OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public static final enum ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .locals 3

    .line 4
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    sget-object v2, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const-string v1, "OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const-string v1, "OFF_FORCEFUL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 4
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->$values()[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .locals 1

    .line 4
    const-class v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object v0
.end method
