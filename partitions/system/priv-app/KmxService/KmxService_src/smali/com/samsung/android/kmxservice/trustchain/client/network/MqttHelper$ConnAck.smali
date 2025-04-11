.class public final enum Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnAck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

.field public static final enum FAIL:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

.field public static final enum SUCCESS:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->FAIL:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    const-string v1, "FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->FAIL:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->$values()[Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper$ConnAck;->value:I

    return p0
.end method
