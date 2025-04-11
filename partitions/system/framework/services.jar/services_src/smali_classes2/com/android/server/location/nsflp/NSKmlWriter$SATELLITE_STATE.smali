.class final enum Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
.super Ljava/lang/Enum;
.source "NSKmlWriter.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum INIT:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;


# instance fields
.field private simpleKeyword:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .locals 6

    .line 616
    sget-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->INIT:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    sget-object v1, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    sget-object v2, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    sget-object v3, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    sget-object v4, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    sget-object v5, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    filled-new-array/range {v0 .. v5}, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 617
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const/4 v1, 0x0

    const-string v2, "in"

    const-string v3, "INIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->INIT:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 618
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const/4 v1, 0x1

    const-string/jumbo v2, "no"

    const-string v3, "NO_SATELLITE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 619
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const/4 v1, 0x2

    const-string/jumbo v2, "sh"

    const-string v3, "SHADOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 620
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const/4 v1, 0x3

    const-string v2, "di"

    const-string v3, "DEEP_INDOOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 621
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const/4 v1, 0x4

    const-string/jumbo v2, "mi"

    const-string v3, "MILD_INDOOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 622
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const/4 v1, 0x5

    const-string/jumbo v2, "od"

    const-string v3, "OUTDOOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 616
    invoke-static {}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->$values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 626
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 627
    iput-object p3, p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->simpleKeyword:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .locals 1

    .line 616
    const-class v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .locals 1

    .line 616
    sget-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-virtual {v0}, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-object v0
.end method
