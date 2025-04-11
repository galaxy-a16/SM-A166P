.class public final Ld7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu6/c;
.implements Lm8/a;


# static fields
.field public static final b:Ld7/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld7/a;

    invoke-direct {v0}, Ld7/a;-><init>()V

    sput-object v0, Ld7/a;->b:Ld7/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PINGREQ:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MqttPingReq{}"

    return-object p0
.end method
