.class public final Le6/h;
.super Le6/d;
.source "SourceFile"


# static fields
.field public static final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Le6/h;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le6/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()I
    .locals 0

    sget p0, Le6/h;->q:I

    return p0
.end method

.method public final P()Lh8/b;
    .locals 0

    sget-object p0, Lh7/a;->f:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    return-object p0
.end method
