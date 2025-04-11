.class final enum Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
.super Ljava/lang/Enum;
.source "WifiPolicy.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

.field public static final enum wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;


# direct methods
.method public static synthetic $values()[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    .locals 4

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    sget-object v1, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    sget-object v3, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey3"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    const-string/jumbo v1, "wepkey4"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-static {}, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->$values()[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->$VALUES:[Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/wifi/WifiPolicy$mWepKeyIndex;

    return-object v0
.end method
